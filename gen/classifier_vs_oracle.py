#!/usr/bin/env python3
"""classifier_vs_oracle.py — does the LOCKED classifier agree with the oracle
on generated gadgets?

Before the classifier can be used as a generator reward (a pre-filter on x86,
or the ONLY reward on arm64/riscv64 where no oracle exists), it has to be
shown to actually track the oracle where BOTH signals exist. This runs
eval/locked_classifier on the realized asm of every RL sample and compares its
attack_prob (1 - P(BENIGN)) against the oracle verdict already logged in the
sample file.

Inputs are gen/rl_ms/*/samples.jsonl (+ any --samples paths): each line is
{class, verdict, realized_asm, ...}. Realized gadgets are x86_64 (the RL loop
is x86-only), so arch is forced to x86_64.

Reports, over leak-verdict vs non-leak (unrunnable/safe) gadgets:
  - mean classifier attack_prob for each group
  - ROC-AUC of attack_prob separating oracle-LEAK from the rest (0.5 = no
    signal; the honest "is this usable as a reward" number)
  - at a sweep of thresholds: how many oracle-LEAKs the classifier would keep
    (recall) vs how many non-leaks it would wrongly keep (a pre-filter's cost)
  - what class the classifier assigns leaking gadgets (it should say
    SPECTRE_V1 if it recognises the class, not merely "some attack")

This is a measurement, not a training step; it neither re-runs the oracle nor
touches the model.

Run: python3 gen/classifier_vs_oracle.py [--samples gen/rl_ms/*/samples.jsonl] [--out gen/classifier_vs_oracle.md]
"""
from __future__ import annotations

import argparse
import glob
import json
import sys
from collections import Counter
from pathlib import Path

import numpy as np

ROOT = Path(__file__).resolve().parent.parent
sys.path.insert(0, str(ROOT / "eval"))


def roc_auc(scores: np.ndarray, pos: np.ndarray) -> float:
    """AUC via the rank identity; ties averaged. pos: bool mask of positives."""
    n_pos, n_neg = int(pos.sum()), int((~pos).sum())
    if n_pos == 0 or n_neg == 0:
        return float("nan")
    order = np.argsort(scores, kind="mergesort")
    ranks = np.empty(len(scores), float)
    s = scores[order]
    i = 0
    while i < len(s):
        j = i
        while j + 1 < len(s) and s[j + 1] == s[i]:
            j += 1
        ranks[order[i:j + 1]] = (i + j) / 2.0 + 1.0
        i = j + 1
    return (ranks[pos].sum() - n_pos * (n_pos + 1) / 2.0) / (n_pos * n_neg)


def main(argv=None) -> int:
    ap = argparse.ArgumentParser(description=__doc__,
                                 formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument("--samples", nargs="+",
                    default=[str(ROOT / "gen/rl_ms/*/samples.jsonl")])
    ap.add_argument("--arch", default="x86_64")
    ap.add_argument("--out", default=str(ROOT / "gen/classifier_vs_oracle.md"))
    ap.add_argument("--device", default="cpu")
    args = ap.parse_args(argv)

    from locked_classifier import LockedClassifier

    paths = sorted(p for g in args.samples for p in glob.glob(g))
    recs = []
    for p in paths:
        for line in open(p):
            if not line.strip():
                continue
            r = json.loads(line)
            asm = r.get("realized_asm")
            if not asm:                       # unrealized samples have none
                continue
            recs.append({"sequence": asm, "arch": args.arch,
                         "verdict": r["verdict"], "class": r.get("class"),
                         "gadget_id": r.get("gadget_id")})
    if not recs:
        raise SystemExit(f"no realized samples in {paths}")

    clf = LockedClassifier(device=args.device)
    out = clf.predict(recs)
    ap_ = out["attack_prob"]
    pred = np.array([l if l is not None else "BUILD_FAIL" for l in out["label"]])
    verdict = np.array([r["verdict"] for r in recs])
    ok = ~np.isnan(ap_)
    leak = (verdict == "leak") | (verdict == "LEAK")

    L = ["# Locked classifier vs oracle on generated gadgets", "",
         f"Samples: {len(recs)} realized gadgets from {len(paths)} run(s); "
         f"arch forced to {args.arch}. Classifier: models/locked_classifier.json "
         "(ensemble). Oracle verdict is the one logged at generation time.", "",
         f"- built into a graph: {int(ok.sum())}/{len(recs)} "
         f"({int((~ok).sum())} too short / unbuildable)",
         f"- oracle verdicts: {dict(Counter(verdict.tolist()))}", ""]

    m = ok & leak
    mn = ok & ~leak
    L += ["## attack_prob (1 − P(BENIGN)) by oracle verdict", "",
          "| group | n | mean attack_prob | median |",
          "|---|---|---|---|",
          f"| oracle LEAK | {int(m.sum())} | {np.mean(ap_[m]):.3f} | {np.median(ap_[m]):.3f} |",
          f"| oracle non-LEAK | {int(mn.sum())} | {np.mean(ap_[mn]):.3f} | {np.median(ap_[mn]):.3f} |",
          "",
          f"**ROC-AUC (attack_prob separates LEAK from non-LEAK): "
          f"{roc_auc(ap_[ok], leak[ok]):.3f}** (0.5 = no signal)", ""]

    L += ["## As a pre-filter: keep gadgets with attack_prob >= t", "",
          "| t | LEAKs kept (recall) | non-LEAKs kept (waste) |",
          "|---|---|---|"]
    for t in (0.3, 0.5, 0.7, 0.9):
        kl = np.mean(ap_[m] >= t) if m.sum() else float("nan")
        kn = np.mean(ap_[mn] >= t) if mn.sum() else float("nan")
        L.append(f"| {t} | {100*kl:.0f}% | {100*kn:.0f}% |")

    L += ["", "## What class does the classifier assign LEAK gadgets?", "",
          "The RL target here is SPECTRE_V1; a class-aware reward needs the "
          "classifier to say SPECTRE_V1, not merely 'some attack'.", "",
          "| predicted label | count (of oracle-LEAK) |", "|---|---|"]
    for lab, c in Counter(pred[m].tolist()).most_common():
        L.append(f"| {lab} | {c} |")

    Path(args.out).write_text("\n".join(L) + "\n")
    print("\n".join(L))
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
