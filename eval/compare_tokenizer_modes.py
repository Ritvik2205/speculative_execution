#!/usr/bin/env python3
"""compare_tokenizer_modes.py — Phase C gate for SPECDISCOVER_CANONICAL_OPS_PLAN.md.

Paired-by-seed comparison of the mnemonic-tokenized encoder (spec/mlm_large.pt)
against the canonical-op encoder (spec/mlm_canonical.pt) on the LOCKED x86/ARM
test set. Both are evaluated inside one process on identical seeds and identical
RF configs, so the only difference is the tokenizer that built each vocabulary.

The gate this answers: does making the vocabulary ISA-neutral (which is what
buys RISC-V transfer) cost anything on the ISAs the model is actually trained
on? Reports accuracy, macro-F1 and per-class recall — macro-F1 matters more
than accuracy here because BENIGN is 1031/1670 of the locked test set, so
accuracy is dominated by the majority class.

Run: python3 eval/compare_tokenizer_modes.py
"""
from __future__ import annotations

import json
import sys
from collections import defaultdict
from pathlib import Path

import numpy as np
from scipy import stats
from sklearn.ensemble import RandomForestClassifier
from sklearn.metrics import classification_report

ROOT = Path(__file__).resolve().parent.parent
sys.path.insert(0, str(ROOT / "v54"))
sys.path.insert(0, str(ROOT / "spec"))

import inline_features as hf                       # noqa: E402
from asm_tokenizer import MultiArchTokenizer        # noqa: E402
import train_mlm as T                               # noqa: E402
from train_mlm import MlmEncoder                    # noqa: E402

SEEDS = [42, 1, 7, 13, 21, 99, 123, 55, 88, 7000]
CKPTS = {"mnemonic": ROOT / "spec" / "mlm_large.pt",
         "canonical": ROOT / "spec" / "mlm_canonical.pt"}
WATCH = ["SPECTRE_V2", "L1TF", "RETBLEED", "MDS", "INCEPTION",
         "BRANCH_HISTORY_INJECTION", "BENIGN"]


def ci95(x):
    x = np.asarray(x, dtype=float)
    m = x.mean()
    if len(x) < 2:
        return m, 0.0
    return m, x.std(ddof=1) / np.sqrt(len(x)) * stats.t.ppf(0.975, len(x) - 1)


def main():
    tr, te = T.load(T.TRAIN), T.load(T.TEST)
    ytr = np.array([r["label"] for r in tr])
    yte = np.array([r["label"] for r in te])
    labels = sorted(set(ytr) | set(yte))

    Xtr_hand = np.vstack([hf.compute_inline_features(r["sequence"]) for r in tr])
    Xte_hand = np.vstack([hf.compute_inline_features(r["sequence"]) for r in te])

    acc, f1 = defaultdict(list), defaultdict(list)
    rec = {m: defaultdict(list) for m in CKPTS}

    for mode, path in CKPTS.items():
        mlm = MlmEncoder.load(str(path))
        marc = MultiArchTokenizer(mode=getattr(mlm, "tokenizer_mode", "mnemonic"))
        assert marc.mode == mode, f"{path} is not a {mode} checkpoint"
        Xtr = np.hstack([Xtr_hand, np.vstack([mlm.embed_sequence(marc.tokenize_record(r)) for r in tr])])
        Xte = np.hstack([Xte_hand, np.vstack([mlm.embed_sequence(marc.tokenize_record(r)) for r in te])])
        print(f"{mode}: vocab={len(mlm.vocab)}  feature dim={Xtr.shape[1]}")
        for sd in SEEDS:
            clf = RandomForestClassifier(n_estimators=300, n_jobs=-1,
                                         random_state=sd, class_weight="balanced")
            clf.fit(Xtr, ytr)
            rep = classification_report(yte, clf.predict(Xte), labels=labels,
                                        output_dict=True, zero_division=0)
            acc[mode].append(rep["accuracy"] * 100)
            f1[mode].append(rep["macro avg"]["f1-score"] * 100)
            for c in WATCH:
                rec[mode][c].append(rep.get(c, {}).get("recall", 0.0) * 100)

    def line(name, a, b):
        am, ah = ci95(a)
        bm, bh = ci95(b)
        d = np.asarray(b, float) - np.asarray(a, float)
        dm, dh = ci95(d)
        p = stats.ttest_rel(b, a).pvalue if len(a) > 1 and d.std() > 0 else float("nan")
        sig = "significant" if (dm - dh > 0 or dm + dh < 0) else "ns"
        print(f"{name:26s} {am:6.2f}+/-{ah:4.2f}  {bm:6.2f}+/-{bh:4.2f}   "
              f"{dm:+6.2f}pp [{dm-dh:+.2f},{dm+dh:+.2f}] p={p:.3f} {sig}")

    print(f"\n{'metric':26s} {'mnemonic':>13s} {'canonical':>13s}   "
          f"{'delta (canonical - mnemonic)':>34s}")
    print("-" * 96)
    line("test accuracy", acc["mnemonic"], acc["canonical"])
    line("macro-F1", f1["mnemonic"], f1["canonical"])
    print()
    for c in WATCH:
        line(f"recall {c}", rec["mnemonic"][c], rec["canonical"][c])

    out = ROOT / "eval" / "tokenizer_mode_comparison.json"
    json.dump({"seeds": SEEDS,
               "accuracy": {m: acc[m] for m in CKPTS},
               "macro_f1": {m: f1[m] for m in CKPTS},
               "per_class_recall": {m: dict(rec[m]) for m in CKPTS}},
              open(out, "w"), indent=2)
    print(f"\nsaved -> {out}")


if __name__ == "__main__":
    main()
