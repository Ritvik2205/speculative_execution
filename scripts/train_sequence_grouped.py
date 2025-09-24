#!/usr/bin/env python3
import argparse
import json
import random
from collections import defaultdict
from pathlib import Path
from typing import List, Dict, Tuple

import numpy as np
from sklearn.metrics import classification_report

import torch
import torch.nn as nn
from torch.utils.data import Dataset, DataLoader

from sequence_models import TinyTransformer, BiLSTMEncoder


def load_jsonl(path: Path):
    with path.open() as f:
        for line in f:
            line = line.strip()
            if line:
                yield json.loads(line)


def canonical_group(src: str) -> str:
    return Path(src).stem


def map_vuln_from_name(name: str) -> str:
    n = name.lower()
    if 'spectre_1' in n or 'spectre_v1' in n:
        return 'SPECTRE_V1'
    if 'spectre_2' in n:
        return 'SPECTRE_V2'
    if 'meltdown' in n:
        return 'MELTDOWN'
    if 'retbleed' in n:
        return 'RETBLEED'
    if 'bhi' in n:
        return 'BRANCH_HISTORY_INJECTION'
    if 'inception' in n:
        return 'INCEPTION'
    if 'l1tf' in n:
        return 'L1TF'
    if 'mds' in n:
        return 'MDS'
    return 'UNKNOWN'


def tokens_from_sequence(seq: List[str]) -> List[str]:
    toks = []
    for l in seq:
        l = l.split(';', 1)[0].strip()
        if not l:
            continue
        parts = l.replace(',', ' ').split()
        if parts:
            # opcode token
            toks.append(parts[0].lower())
            # operand class tokens (reg/mem/immediate)
            for op in parts[1:]:
                if '[' in op or ']' in op:
                    toks.append('MEM')
                elif op.lstrip('#').isdigit() or op.startswith('0x'):
                    toks.append('IMM')
                else:
                    toks.append('REG')
    return toks


def build_dataset(augmented_path: Path) -> Tuple[List[Dict], List[str], List[str]]:
    records = []
    for rec in load_jsonl(augmented_path):
        if rec.get('label') == 'benign':
            continue
        label = rec.get('vuln_label') or map_vuln_from_name(rec.get('source_file', ''))
        if label == 'UNKNOWN':
            continue
        toks = tokens_from_sequence(rec.get('sequence', []))
        if not toks:
            continue
        # add relative distance bucket feature if available
        # crude: find first branch and first load positions
        branch_idx = next((i for i, t in enumerate(toks) if t.startswith('b.') or t.startswith('j')), None)
        load_idx = next((i for i, t in enumerate(toks) if t in ('ldr','ldrb','mov','lea')), None)
        if branch_idx is not None and load_idx is not None:
            dist = min(15, max(-1, load_idx - branch_idx))
            toks.append(f'DIST_{dist}')
        group = canonical_group(rec.get('source_file', 'unknown'))
        item = {'tokens': toks, 'label': label, 'group': group}
        if 'confidence' in rec: item['confidence'] = rec['confidence']
        if 'split' in rec: item['split'] = rec['split']
        records.append(item)
    labels = sorted(set(r['label'] for r in records))
    return records, labels, [r['group'] for r in records]


def build_vocab(records: List[Dict], min_freq: int = 1) -> Dict[str, int]:
    from collections import Counter
    counter = Counter()
    for r in records:
        counter.update(r['tokens'])
    vocab = {'<pad>': 0, '<unk>': 1}
    for tok, c in counter.items():
        if c >= min_freq and tok not in vocab:
            vocab[tok] = len(vocab)
    return vocab


class SeqDataset(Dataset):
    def __init__(self, records: List[Dict], vocab: Dict[str, int], label_to_id: Dict[str, int], max_len: int = 64):
        self.records = records
        self.vocab = vocab
        self.label_to_id = label_to_id
        self.max_len = max_len

    def __len__(self):
        return len(self.records)

    def __getitem__(self, idx):
        r = self.records[idx]
        ids = [self.vocab.get(t, 1) for t in r['tokens']][: self.max_len]
        if len(ids) < self.max_len:
            ids += [0] * (self.max_len - len(ids))
        y = self.label_to_id[r['label']]
        w = float(r.get('confidence', 1.0))
        return torch.tensor(ids, dtype=torch.long), torch.tensor(y, dtype=torch.long), torch.tensor(w, dtype=torch.float32)


def split_by_groups(records: List[Dict], test_size: float, seed: int) -> Tuple[List[int], List[int]]:
    random.seed(seed)
    # group -> label
    group_to_label = {}
    for r in records:
        group_to_label.setdefault(r['group'], r['label'])
    groups = list(group_to_label.keys())
    labels = [group_to_label[g] for g in groups]
    # per-class group selection
    groups_by_label = defaultdict(list)
    for g, lbl in zip(groups, labels):
        groups_by_label[lbl].append(g)
    test_groups = set()
    train_groups = set()
    for lbl, grp_list in groups_by_label.items():
        random.shuffle(grp_list)
        k = max(1, int(round(len(grp_list) * test_size))) if len(grp_list) >= 2 else 0
        test_groups.update(grp_list[:k])
        train_groups.update(grp_list[k:] if k > 0 else grp_list)
    # enforce at least one test group per class when possible
    for lbl, grp_list in groups_by_label.items():
        if not any(g in test_groups for g in grp_list):
            # move one group to test
            if grp_list:
                test_groups.add(grp_list[0])
                if grp_list[0] in train_groups:
                    train_groups.remove(grp_list[0])
    if not test_groups:
        # fallback
        k = max(1, int(round(len(groups) * test_size)))
        random.shuffle(groups)
        test_groups = set(groups[:k])
        train_groups = set(groups[k:])
    idx_train = [i for i, r in enumerate(records) if r['group'] in train_groups]
    idx_test = [i for i, r in enumerate(records) if r['group'] in test_groups]
    return idx_train, idx_test


def evaluate(model: nn.Module, dl: DataLoader, device, id_to_label: Dict[int, str]) -> Dict:
    model.eval()
    ys, ps = [], []
    with torch.no_grad():
        for batch in dl:
            if len(batch) == 3:
                x, y, _ = batch
            else:
                x, y = batch
            x = x.to(device)
            logits = model(x)
            pred = logits.argmax(dim=1).cpu().tolist()
            ys += y.cpu().tolist()
            ps += pred
    y_labels = [id_to_label[i] for i in ys]
    p_labels = [id_to_label[i] for i in ps]
    return classification_report(y_labels, p_labels, output_dict=True)


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument('--in', dest='inp', type=Path, default=Path('data/dataset/arm64_windows.jsonl'))
    ap.add_argument('--model', choices=['bilstm', 'transformer'], default='transformer')
    ap.add_argument('--epochs', type=int, default=20)
    ap.add_argument('--batch-size', type=int, default=64)
    ap.add_argument('--seed', type=int, default=42)
    ap.add_argument('--test-size', type=float, default=0.2)
    ap.add_argument('--use-focal', action='store_true')
    ap.add_argument('--conf-weight-jsonl', type=Path, default=None)
    ap.add_argument('--init-mlm', type=Path, default=Path('models/mlm_tiny.pt'))
    ap.add_argument('--freeze-embed-epochs', type=int, default=5)
    args = ap.parse_args()

    random.seed(args.seed)
    np.random.seed(args.seed)
    torch.manual_seed(args.seed)

    records, labels, _ = build_dataset(args.inp)
    if not records:
        print('No records to train on.'); return
    # group split
    # If split annotation exists, use it; else do group split
    if any('split' in r for r in records):
        idx_train = [i for i,r in enumerate(records) if r.get('split') != 'test']
        idx_test = [i for i,r in enumerate(records) if r.get('split') == 'test']
    else:
        idx_train, idx_test = split_by_groups(records, args.test_size, args.seed)
    train_recs = [records[i] for i in idx_train]
    test_recs = [records[i] for i in idx_test]

    # vocab from train only
    vocab = build_vocab(train_recs)
    label_to_id = {lbl: i for i, lbl in enumerate(sorted(set(r['label'] for r in records)))}
    id_to_label = {i: lbl for lbl, i in label_to_id.items()}

    ds_tr = SeqDataset(train_recs, vocab, label_to_id, max_len=128)
    ds_te = SeqDataset(test_recs, vocab, label_to_id, max_len=128)
    dl_tr = DataLoader(ds_tr, batch_size=args.batch_size, shuffle=True)
    dl_te = DataLoader(ds_te, batch_size=args.batch_size)

    device = torch.device('cuda' if torch.cuda.is_available() else 'cpu')
    num_classes = len(label_to_id)
    if args.model == 'bilstm':
        model = BiLSTMEncoder(len(vocab), num_classes=num_classes)
    else:
        model = TinyTransformer(len(vocab), num_classes=num_classes)
        # Optional: initialize from MLM if available
        if args.init_mlm and args.init_mlm.exists():
            ckpt = torch.load(args.init_mlm, map_location='cpu')
            mlm_sd = ckpt.get('state_dict', {})
            # Filter to matching keys
            model_sd = model.state_dict()
            load_sd = {}
            for k, v in mlm_sd.items():
                # map lm_head.* to fc.* is not straightforward; skip classifier
                if k.startswith('embed.') or k.startswith('enc.'):
                    if k in model_sd and model_sd[k].shape == v.shape:
                        load_sd[k] = v
            model_sd.update(load_sd)
            model.load_state_dict(model_sd)
    model.to(device)
    optim = torch.optim.AdamW(model.parameters(), lr=1e-3, weight_decay=1e-4)
    # class weights for imbalance
    from collections import Counter
    counts = Counter([r['label'] for r in train_recs])
    weights = torch.tensor([1.0 / max(1, counts[lbl]) for lbl, _ in sorted(label_to_id.items(), key=lambda x: x[1])], dtype=torch.float32, device=device)
    if args.use_focal:
        class FocalLoss(nn.Module):
            def __init__(self, gamma=2.0, weight=None, label_smoothing=0.0):
                super().__init__()
                self.gamma = gamma
                self.weight = weight
                self.label_smoothing = label_smoothing
            def forward(self, logits, target):
                ce = nn.functional.cross_entropy(logits, target, weight=self.weight, label_smoothing=self.label_smoothing, reduction='none')
                pt = torch.exp(-ce)
                loss = ((1 - pt) ** self.gamma) * ce
                return loss.mean()
        loss_fn = FocalLoss(weight=weights, label_smoothing=0.05)
    else:
        loss_fn = nn.CrossEntropyLoss(weight=weights, label_smoothing=0.05)

    # Freeze embeddings for a few epochs
    freeze_epochs = max(0, args.freeze_embed_epochs)
    if freeze_epochs > 0:
        for p in model.embed.parameters():
            p.requires_grad = False

    for epoch in range(args.epochs):
        model.train()
        for x, y, sw in dl_tr:
            x, y, sw = x.to(device), y.to(device), sw.to(device)
            optim.zero_grad()
            logits = model(x)
            # per-sample loss weighting by confidence
            ce = nn.functional.cross_entropy(logits, y, weight=None, label_smoothing=0.0, reduction='none')
            # normalize weights in batch to mean 1
            swn = sw / (sw.mean() + 1e-8)
            loss = (ce * swn).mean()
            loss.backward()
            optim.step()
        if epoch + 1 == freeze_epochs:
            for p in model.embed.parameters():
                p.requires_grad = True

    report = evaluate(model, dl_te, device, id_to_label)
    print(json.dumps(report, indent=2))


if __name__ == '__main__':
    main()


