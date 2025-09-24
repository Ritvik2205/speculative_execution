#!/usr/bin/env python3
import argparse
from pathlib import Path
import random
import torch
import torch.nn as nn
from torch.utils.data import Dataset, DataLoader


class MLMDataset(Dataset):
    def __init__(self, corpus: Path, vocab=None, max_len: int = 64, mask_prob: float = 0.15):
        self.lines = [l.strip().split() for l in corpus.read_text().splitlines() if l.strip()]
        self.max_len = max_len
        self.mask_prob = mask_prob
        # build vocab
        if vocab is None:
            uniq = set(t for line in self.lines for t in line)
            self.vocab = {'<pad>': 0, '<unk>': 1, '<mask>': 2}
            for t in sorted(uniq):
                if t not in self.vocab:
                    self.vocab[t] = len(self.vocab)
        else:
            self.vocab = vocab

    def __len__(self):
        return len(self.lines)

    def __getitem__(self, idx):
        toks = self.lines[idx][: self.max_len]
        ids = [self.vocab.get(t, 1) for t in toks]
        # pad
        if len(ids) < self.max_len:
            ids += [0] * (self.max_len - len(ids))
        input_ids = ids.copy()
        labels = [-100] * len(ids)
        # mask some tokens
        for i in range(len(toks)):
            if random.random() < self.mask_prob:
                labels[i] = ids[i]
                input_ids[i] = self.vocab.get('<mask>', 2)
        return torch.tensor(input_ids, dtype=torch.long), torch.tensor(labels, dtype=torch.long)


class TinyMLM(nn.Module):
    def __init__(self, vocab_size: int, d_model: int = 128, nhead: int = 4, num_layers: int = 2):
        super().__init__()
        self.embed = nn.Embedding(vocab_size, d_model, padding_idx=0)
        enc_layer = nn.TransformerEncoderLayer(d_model=d_model, nhead=nhead, batch_first=True)
        self.enc = nn.TransformerEncoder(enc_layer, num_layers=num_layers)
        self.lm_head = nn.Linear(d_model, vocab_size)

    def forward(self, x):
        mask = x.eq(0)
        h = self.embed(x)
        z = self.enc(h, src_key_padding_mask=mask)
        return self.lm_head(z)


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument('--corpus', type=Path, default=Path('data/dataset/mlm_corpus.txt'))
    ap.add_argument('--epochs', type=int, default=3)
    ap.add_argument('--batch-size', type=int, default=64)
    args = ap.parse_args()

    ds = MLMDataset(args.corpus, max_len=64)
    dl = DataLoader(ds, batch_size=args.batch_size, shuffle=True)
    device = torch.device('cuda' if torch.cuda.is_available() else 'cpu')
    model = TinyMLM(len(ds.vocab)).to(device)
    opt = torch.optim.AdamW(model.parameters(), lr=1e-3)
    loss_fn = nn.CrossEntropyLoss()

    for _ in range(args.epochs):
        model.train()
        for x, y in dl:
            x, y = x.to(device), y.to(device)
            logits = model(x)
            loss = loss_fn(logits.view(-1, logits.size(-1)), y.view(-1))
            opt.zero_grad(); loss.backward(); opt.step()
    # save weights
    Path('models').mkdir(exist_ok=True)
    torch.save({'state_dict': model.state_dict(), 'vocab': ds.vocab}, 'models/mlm_tiny.pt')
    print('Saved MLM weights to models/mlm_tiny.pt')


if __name__ == '__main__':
    main()


