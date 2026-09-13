#!/usr/bin/env python3
"""phase3_window_length_check.py — Phase 3 cheap test
(SPECDISCOVER_LEARNED_FEATURES_PLAN.md).

Before spending effort re-extracting the corpus at Alik's suggested
800-1000 instruction window: does the diff+pruned mechanism's benefit over
flat-mean-pool MLM concentrate on the *longer* existing records? If so,
that's evidence dilution is a real, length-driven problem worth chasing with
bigger windows (hypothesis a). If the benefit is flat regardless of length,
window size isn't the bottleneck the pooling mechanism itself was (b).

Splits the LOCKED test set at len(sequence) >= 100 (54/1670 records — small,
but this is explicitly a cheap directional check per the plan, not a
standalone claim) vs < 100, and compares hand+MLM vs hand+diff+prunedMLM
accuracy within each bucket, across the same 10 seeds as the phase12 gate
check.

Run: python3 eval/phase3_window_length_check.py
"""
from __future__ import annotations

import sys
from pathlib import Path

import numpy as np
from scipy import stats
from sklearn.ensemble import RandomForestClassifier

ROOT = Path(__file__).resolve().parent.parent
sys.path.insert(0, str(ROOT / "v54"))
sys.path.insert(0, str(ROOT / "spec"))

import inline_features as hf                        # noqa: E402
from asm_tokenizer import AsmTokenizer               # noqa: E402
from isa_spec import load_engine                     # noqa: E402
import train_mlm as T                                # noqa: E402
from train_mlm import MlmEncoder                     # noqa: E402
from class_diff_features import (                    # noqa: E402
    build_class_representatives, diff_pruned_embed_sequence,
)

SEEDS = [42, 1, 7, 13, 21, 99, 123, 55, 88, 7000]
LEN_THRESH = 100


def ci95(x):
    x = np.asarray(x, dtype=float)
    n = len(x)
    m = x.mean()
    if n < 2:
        return m, 0.0
    se = x.std(ddof=1) / np.sqrt(n)
    return m, se * stats.t.ppf(0.975, n - 1)


def main():
    engine = load_engine("base.json")
    tok = AsmTokenizer(engine)
    mlm = MlmEncoder.load(str(ROOT / "spec" / "mlm_large.pt"))

    tr, te = T.load(T.TRAIN), T.load(T.TEST)
    ytr = np.array([r["label"] for r in tr])
    yte = np.array([r["label"] for r in te])
    te_len = np.array([len(r["sequence"]) for r in te])
    long_mask = te_len >= LEN_THRESH
    print(f"test set: {long_mask.sum()} records len>={LEN_THRESH}, "
          f"{(~long_mask).sum()} records len<{LEN_THRESH}")

    Xtr_hand = np.vstack([hf.compute_inline_features(r["sequence"]) for r in tr])
    Xte_hand = np.vstack([hf.compute_inline_features(r["sequence"]) for r in te])

    tr_tok = [tok.tokenize_sequence(r["sequence"]) for r in tr]
    te_tok = [tok.tokenize_sequence(r["sequence"]) for r in te]

    Xtr_mlm = np.vstack([mlm.embed_sequence(t) for t in tr_tok])
    Xte_mlm = np.vstack([mlm.embed_sequence(t) for t in te_tok])

    benign_repr = build_class_representatives(tr, tr_tok, mlm).get("BENIGN")
    benign_repr_H = (mlm.embed_instructions(benign_repr) if benign_repr is not None
                     else np.zeros((0, mlm.dim), dtype=np.float32))
    Xtr_dp = np.vstack([diff_pruned_embed_sequence(t, mlm, benign_repr_H) for t in tr_tok])
    Xte_dp = np.vstack([diff_pruned_embed_sequence(t, mlm, benign_repr_H) for t in te_tok])

    configs = {
        "hand+MLM": (np.hstack([Xtr_hand, Xtr_mlm]), np.hstack([Xte_hand, Xte_mlm])),
        "hand+diff+prunedMLM": (np.hstack([Xtr_hand, Xtr_dp]), np.hstack([Xte_hand, Xte_dp])),
    }

    acc_long = {n: [] for n in configs}
    acc_short = {n: [] for n in configs}
    for sd in SEEDS:
        for name, (Xtr, Xte) in configs.items():
            clf = RandomForestClassifier(n_estimators=300, n_jobs=-1,
                                         random_state=sd, class_weight="balanced")
            clf.fit(Xtr, ytr)
            pred = clf.predict(Xte)
            correct = (pred == yte)
            acc_long[name].append(correct[long_mask].mean() * 100)
            acc_short[name].append(correct[~long_mask].mean() * 100)
        print(f"seed {sd} done")

    print(f"\n{'config':22s} {'acc len>=100':>18s} {'acc len<100':>18s}")
    print("-" * 60)
    for name in configs:
        lm, lh = ci95(acc_long[name])
        sm, sh = ci95(acc_short[name])
        print(f"{name:22s} {lm:6.2f}% +/- {lh:4.2f}pp    {sm:6.2f}% +/- {sh:4.2f}pp")

    print("\ndiff+prunedMLM - hand+MLM, paired by seed, within each length bucket:")
    for bucket_name, acc in [("len>=100", (acc_long["hand+diff+prunedMLM"], acc_long["hand+MLM"])),
                             ("len<100", (acc_short["hand+diff+prunedMLM"], acc_short["hand+MLM"]))]:
        b, a = np.asarray(acc[0]), np.asarray(acc[1])
        diff = b - a
        dm, dh = ci95(diff)
        t, p = stats.ttest_rel(b, a)
        print(f"  {bucket_name:10s} diff={dm:+6.2f}pp  95%CI=[{dm-dh:+.2f},{dm+dh:+.2f}]  p={p:.3f}")


if __name__ == "__main__":
    main()
