#!/usr/bin/env python3
"""
diagnose_riscv_failure.py — why is RISC-V zero-shot accuracy only 15.32%?
(SPECDISCOVER_VERIFICATION_GAPS.md G6 follow-up)

Runs three things to separate competing hypotheses with evidence, not guesses:
  1. Confusion matrix for the existing zero-shot run (what does each failing
     class get predicted AS?).
  2. Arch-embedding ablation: force arch_id to a TRAINED row ('arm64', id=1)
     instead of the untrained 'unknown' fallback riscv64 records actually get,
     and re-score. If accuracy jumps a lot, the untrained embedding row is a
     major cause. If not, the cause is structural (missing spec signal).
  3. Spec-flag / mem-access-type firing rates: compare RISC-V corpus vs a
     sample of the real x86_64/arm64 training pool, to quantify how often
     is_secret_source / is_transmitter / SPEC_INDIRECT edges even fire.

Run:  python3 spec/diagnose_riscv_failure.py
"""

from __future__ import annotations

import json
import sys
from collections import Counter
from pathlib import Path

import numpy as np
import torch

ROOT = Path(__file__).resolve().parent.parent
V54 = ROOT / "v54"
sys.path.insert(0, str(V54))
sys.path.insert(0, str(ROOT / "spec"))

from train_gine_v38 import GINEDatasetV47, collate_fn, evaluate, select_device  # noqa: E402
from gine_classifier_v38 import GINEClassifier, ARCH_VOCAB  # noqa: E402
from pdg_builder import NUM_EDGE_TYPES, EDGE_TYPES  # noqa: E402
from isa_spec import load_engine  # noqa: E402
from eval_riscv_real import build_riscv_records  # noqa: E402

CKPT = V54 / "viz_v54_spec" / "gine_best.pt"


def load_model_and_data(arch_override=None):
    records = build_riscv_records()
    if arch_override:
        for r in records:
            r["arch"] = arch_override

    device = select_device()
    ckpt = torch.load(CKPT, map_location=device, weights_only=False)
    label_to_id = ckpt["label_to_id"]
    feature_names = ckpt["feature_names"]
    a = ckpt["args"]
    id_to_label = {i: l for l, i in label_to_id.items()}
    records = [r for r in records if r["label"] in label_to_id]

    ds = GINEDatasetV47(records, label_to_id, feature_names,
                         speculative_window=a["speculative_window"],
                         strip_bp=not a["no_strip"],
                         node_feature_mode=a["node_feature_mode"],
                         use_spec_builder=a["use_spec_builder"])
    loader = torch.utils.data.DataLoader(ds, batch_size=32, shuffle=False,
                                          collate_fn=collate_fn, num_workers=0)
    model = GINEClassifier(
        node_feat_dim=ds.node_feature_dim, num_edge_types=NUM_EDGE_TYPES,
        hidden_dim=a["hidden_dim"], num_layers=a["num_layers"],
        num_classes=len(label_to_id), handcrafted_dim=max(len(feature_names), 1),
        global_feat_dim=5, arch_emb_dim=a["arch_emb_dim"], dropout=a["dropout"],
        use_virtual_node=not a["no_virtual_node"], jk_mode=a["jk_mode"],
    ).to(device)
    model.load_state_dict(ckpt["model_state_dict"])
    return model, loader, device, id_to_label


def part1_confusion_matrix():
    print("=" * 70)
    print("PART 1 — confusion matrix, as-is (arch='riscv64' -> falls to 'unknown')")
    print("=" * 70)
    model, loader, device, id_to_label = load_model_and_data()
    acc, preds, labels = evaluate(model, loader, device, desc="confusion")
    from sklearn.metrics import confusion_matrix
    present = sorted(set(labels) | set(preds))
    names = [id_to_label[i] for i in present]
    cm = confusion_matrix(labels, preds, labels=present)
    print(f"\naccuracy={acc*100:.2f}%\n")
    print("rows=true, cols=predicted")
    print(" " * 26 + "".join(f"{n[:10]:>11s}" for n in names))
    for i, row in enumerate(cm):
        print(f"{names[i]:26s}" + "".join(f"{v:>11d}" for v in row))


def part2_arch_ablation():
    print("\n" + "=" * 70)
    print("PART 2 — arch-embedding ablation")
    print("PART 1's confound check: overriding rec['arch'] changes BOTH the")
    print("spec builder used for graph construction AND the arch_id lookup —")
    print("that conflates 'wrong grammar parses RISC-V text' with 'untrained")
    print("embedding row'. Fixed here: monkeypatch ONLY ARCH_VOCAB so the graph")
    print("still builds from riscv.json (correct grammar), only the embedding")
    print("row changes.")
    print("=" * 70)
    import gine_classifier_v38 as gc
    original = dict(gc.ARCH_VOCAB)
    try:
        for label, patched_id in [
            ("as-is ('riscv64' absent -> falls to 'unknown', untrained)", None),
            ("ARCH_VOCAB['riscv64'] = arm64's id (trained row)", original["arm64"]),
            ("ARCH_VOCAB['riscv64'] = x86_64's id (trained row)", original["x86_64"]),
        ]:
            gc.ARCH_VOCAB.clear()
            gc.ARCH_VOCAB.update(original)
            if patched_id is not None:
                gc.ARCH_VOCAB["riscv64"] = patched_id
            model, loader, device, _ = load_model_and_data()  # arch field stays 'riscv64'
            acc, preds, labels = evaluate(model, loader, device, desc=label)
            print(f"  {label:55s} accuracy = {acc*100:.2f}%")
    finally:
        gc.ARCH_VOCAB.clear()
        gc.ARCH_VOCAB.update(original)


def part3_spec_flag_rates():
    print("\n" + "=" * 70)
    print("PART 3 — how often do attack-signal spec_flags / edge types even fire?")
    print("=" * 70)
    riscv_recs = build_riscv_records()
    tr_path = V54 / "data" / "v54_train.jsonl"
    train_recs = [json.loads(l) for l in open(tr_path) if l.strip()]

    riscv_eng = load_engine("riscv.json")
    x86_eng = load_engine("x86_64.json")
    arm_eng = load_engine("arm64.json")

    def flag_rates(records, eng_for):
        n = 0
        flag_hits = Counter()
        mem_hits = Counter()
        for r in records:
            eng = eng_for(r)
            for instr in r["sequence"]:
                if not instr.strip() or instr.strip().endswith(':') or instr.strip().startswith('.'):
                    continue
                n += 1
                cat = eng.classify_opcode(instr)
                mem = eng.memory_access_type(instr)
                mem_hits[eng._mem_name(mem)] += 1
                flags = eng.spec_flags_vector(instr, cat, mem)
                for name, idx in eng.spec_flags.items():
                    if flags[idx] > 0:
                        flag_hits[name] += 1
        return n, flag_hits, mem_hits

    n_r, fh_r, mh_r = flag_rates(riscv_recs, lambda r: riscv_eng)
    n_t, fh_t, mh_t = flag_rates(train_recs[:2000],
                                 lambda r: x86_eng if r.get("arch") == "x86_64" else arm_eng)

    print(f"\nRISC-V corpus: {n_r} instructions across {len(riscv_recs)} records")
    print(f"x86/ARM training sample: {n_t} instructions across 2000 records\n")
    print(f"{'signal':22s} {'RISC-V rate':>14s} {'x86/ARM rate':>14s}")
    for name in ["is_secret_source", "is_transmitter", "is_indirect_branch",
                 "is_cache_probe", "is_prefetch", "is_serializing", "is_lfence"]:
        r_rate = 100 * fh_r.get(name, 0) / max(n_r, 1)
        t_rate = 100 * fh_t.get(name, 0) / max(n_t, 1)
        print(f"{name:22s} {r_rate:13.3f}% {t_rate:13.3f}%")
    print(f"\n{'mem type':22s} {'RISC-V rate':>14s} {'x86/ARM rate':>14s}")
    for name in ["NONE", "STACK", "HEAP", "INDEXED", "INDIRECT"]:
        r_rate = 100 * mh_r.get(name, 0) / max(n_r, 1)
        t_rate = 100 * mh_t.get(name, 0) / max(n_t, 1)
        print(f"{name:22s} {r_rate:13.3f}% {t_rate:13.3f}%")


if __name__ == "__main__":
    part1_confusion_matrix()
    part2_arch_ablation()
    part3_spec_flag_rates()
