#!/usr/bin/env python3
"""diagnose_riscv_learned_features.py — does any learned-feature technique
(flat MLM, diff-gated, pruned) help RISC-V zero-shot, or is the bottleneck
upstream of pooling/gating entirely?

Trains RF on v54_train (x86_64/arm64 only — zero riscv64 rows, confirmed)
with each Phase 1/2 feature-set config, evaluates zero-shot on the real,
labeled riscv_corpus/*.s (same label-recovery logic as spec/eval_riscv_real.py,
reused directly). Also reports the MLM vocabulary's OOV rate on RISC-V
tokens, since that's checked first and is likely the dominant effect: the
tokenizer's OPERAND classification is spec-driven (ISA-agnostic, per
asm_tokenizer.py's docstring), but its VOCABULARY is literal mnemonic
prefixes learned only from x86/arm training data — a training-data coverage
gap, not a tokenizer design flaw, but one that would swamp any pooling or
gating technique built on top of it.

Run: python3 eval/diagnose_riscv_learned_features.py
"""
from __future__ import annotations

import sys
from pathlib import Path

import numpy as np
from sklearn.ensemble import RandomForestClassifier
from sklearn.metrics import classification_report, accuracy_score, f1_score

ROOT = Path(__file__).resolve().parent.parent
sys.path.insert(0, str(ROOT / "v54"))
sys.path.insert(0, str(ROOT / "spec"))

import inline_features as hf                        # noqa: E402
from asm_tokenizer import AsmTokenizer               # noqa: E402
from isa_spec import load_engine                     # noqa: E402
import train_mlm as T                                # noqa: E402
from train_mlm import MlmEncoder                     # noqa: E402
from class_diff_features import (                    # noqa: E402
    build_class_representatives, diff_embed_sequence,
    pruned_embed_sequence, diff_pruned_embed_sequence,
)

sys.path.insert(0, str(ROOT / "spec"))
from eval_riscv_real import build_riscv_records       # noqa: E402


def main():
    engine = load_engine("base.json")
    tok = AsmTokenizer(engine)
    riscv_engine = load_engine("riscv.json")
    tok_riscv = AsmTokenizer(riscv_engine)
    mlm = MlmEncoder.load(str(ROOT / "spec" / "mlm_large.pt"))

    tr = T.load(T.TRAIN)
    riscv_records = build_riscv_records()
    print(f"riscv labeled records: {len(riscv_records)}\n")

    # --- OOV diagnostic, checked first ---
    total, oov = 0, 0
    for r in riscv_records:
        for t in tok_riscv.tokenize_sequence(r["sequence"]):
            total += 1
            if t not in mlm.vocab:
                oov += 1
    print(f"MLM vocab size (built from x86_64/arm64 only): {len(mlm.vocab)}")
    print(f"RISC-V token OOV rate: {oov}/{total} ({100*oov/max(total,1):.1f}%)")
    print("(operand classification IS spec-driven/ISA-agnostic; the mnemonic-prefixed\n"
          " VOCABULARY was only ever populated from x86/arm training tokens, so most\n"
          " RISC-V mnemonics collapse to a single shared <unk> embedding regardless of\n"
          " which pooling/gating technique runs on top of it)\n")

    ytr = np.array([r["label"] for r in tr])
    yte = np.array([r["label"] for r in riscv_records])

    Xtr_hand = np.vstack([hf.compute_inline_features(r["sequence"]) for r in tr])
    Xte_hand = np.vstack([hf.compute_inline_features(r["sequence"]) for r in riscv_records])

    tr_tok = [tok.tokenize_sequence(r["sequence"]) for r in tr]
    # RISC-V records get tokenized with the riscv.json-driven tokenizer for
    # operand classification, same as real deployment would use.
    te_tok = [tok_riscv.tokenize_sequence(r["sequence"]) for r in riscv_records]

    Xtr_mlm = np.vstack([mlm.embed_sequence(t) for t in tr_tok])
    Xte_mlm = np.vstack([mlm.embed_sequence(t) for t in te_tok])

    benign_repr = build_class_representatives(tr, tr_tok, mlm).get("BENIGN")
    benign_repr_H = (mlm.embed_instructions(benign_repr) if benign_repr is not None
                     else np.zeros((0, mlm.dim), dtype=np.float32))

    Xtr_diff = np.vstack([diff_embed_sequence(t, mlm, benign_repr_H) for t in tr_tok])
    Xte_diff = np.vstack([diff_embed_sequence(t, mlm, benign_repr_H) for t in te_tok])
    Xtr_pruned = np.vstack([pruned_embed_sequence(t, mlm) for t in tr_tok])
    Xte_pruned = np.vstack([pruned_embed_sequence(t, mlm) for t in te_tok])
    Xtr_dp = np.vstack([diff_pruned_embed_sequence(t, mlm, benign_repr_H) for t in tr_tok])
    Xte_dp = np.vstack([diff_pruned_embed_sequence(t, mlm, benign_repr_H) for t in te_tok])

    def cat(*m):
        return np.hstack(m)

    configs = {
        "hand-58": (Xtr_hand, Xte_hand),
        "hand+MLM": (cat(Xtr_hand, Xtr_mlm), cat(Xte_hand, Xte_mlm)),
        "hand+diffMLM": (cat(Xtr_hand, Xtr_diff), cat(Xte_hand, Xte_diff)),
        "hand+prunedMLM": (cat(Xtr_hand, Xtr_pruned), cat(Xte_hand, Xte_pruned)),
        "hand+diff+prunedMLM": (cat(Xtr_hand, Xtr_dp), cat(Xte_hand, Xte_dp)),
    }

    print(f"{'config':22s} {'riscv zero-shot acc':>20s} {'macro-F1':>10s}")
    print("-" * 56)
    reports = {}
    for name, (Xtr, Xte) in configs.items():
        clf = RandomForestClassifier(n_estimators=300, n_jobs=-1,
                                     random_state=42, class_weight="balanced")
        clf.fit(Xtr, ytr)
        pred = clf.predict(Xte)
        acc = accuracy_score(yte, pred) * 100
        f1 = f1_score(yte, pred, average="macro", zero_division=0) * 100
        print(f"{name:22s} {acc:18.2f}%   {f1:8.2f}%")
        reports[name] = classification_report(yte, pred, zero_division=0, output_dict=True)

    print("\nper-class recall, hand-58 vs hand+diff+prunedMLM (the RF-level winner from Phase 1/2):")
    labels = sorted(set(yte))
    for lbl in labels:
        r1 = reports["hand-58"].get(lbl, {}).get("recall", 0.0) * 100
        r2 = reports["hand+diff+prunedMLM"].get(lbl, {}).get("recall", 0.0) * 100
        n = reports["hand-58"].get(lbl, {}).get("support", 0)
        print(f"  {lbl:30s} hand-58={r1:6.2f}%  diff+prunedMLM={r2:6.2f}%  (n={n:.0f})")


if __name__ == "__main__":
    main()
