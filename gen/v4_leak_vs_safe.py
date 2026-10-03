#!/usr/bin/env python3
"""v4_leak_vs_safe.py — does anything separate oracle-LEAK from oracle-SAFE on
generated gadgets, once the labels actually contain both outcomes?

Why this exists: gen/classifier_vs_oracle.py reported ROC-AUC 0.44 for the
locked classifier on generated SPECTRE_V1 gadgets, but those samples contain
ZERO oracle-SAFE verdicts (1531 leak / 456 unrunnable) -- that AUC measured
"leak vs Spectector-could-not-run-it", not leak vs safe. SPECTRE_V4 is the only
generated class with both outcomes (gen/rl_mc/SPECTRE_V4_s*/samples.jsonl:
leak 337 / safe 187 / unrunnable 76). This script asks the real question there.

Leak/shortcut hygiene (so nothing below is inflated):
  - only verdicts leak|safe; UNRUNNABLE excluded (that is a different question:
    P(runnable), reported separately as a count)
  - identical realized sequences DEDUPED before scoring; a sequence logged with
    conflicting verdicts is dropped and counted
  - the learned opcode-bag baseline is evaluated with leave-one-RL-seed-out
    folds on the deduped set, so no sequence is in both train and test
  - every AUC carries a bootstrap 95% CI
  - the locked classifier is shown next to trivial bars (length, lfence count,
    opcode bag); a model is only informative if it beats them

Run: python3 gen/v4_leak_vs_safe.py [--samples 'gen/rl_mc/SPECTRE_V4_s*/samples.jsonl']
     -> gen/v4_leak_vs_safe.md
"""
from __future__ import annotations

import argparse
import collections
import glob
import json
import re
import sys
from pathlib import Path

import numpy as np

ROOT = Path(__file__).resolve().parent.parent
sys.path.insert(0, str(ROOT / "eval"))


def auc(score, y):
    """Mann-Whitney ROC-AUC (ties = 0.5). y: 1 = leak."""
    score = np.asarray(score, float); y = np.asarray(y, int)
    pos, neg = score[y == 1], score[y == 0]
    if len(pos) == 0 or len(neg) == 0:
        return float("nan")
    gt = (pos[:, None] > neg[None, :]).sum()
    eq = (pos[:, None] == neg[None, :]).sum()
    return (gt + 0.5 * eq) / (len(pos) * len(neg))


def boot_ci(score, y, n=1000, seed=0):
    rng = np.random.default_rng(seed)
    score = np.asarray(score, float); y = np.asarray(y, int)
    vals = []
    for _ in range(n):
        i = rng.integers(0, len(y), len(y))
        v = auc(score[i], y[i])
        if v == v:
            vals.append(v)
    return (float(np.percentile(vals, 2.5)), float(np.percentile(vals, 97.5))) if vals else (float("nan"),) * 2


def opcodes(seq):
    out = []
    for s in seq:
        s = s.strip()
        if not s or s.endswith(":") or s.startswith("."):
            continue
        out.append(re.split(r"\s+", s)[0].lower())
    return out


def main(argv=None):
    ap = argparse.ArgumentParser()
    ap.add_argument("--samples", default=str(ROOT / "gen/rl_mc/SPECTRE_V4_s*/samples.jsonl"))
    ap.add_argument("--out", default=str(ROOT / "gen/v4_leak_vs_safe.md"))
    ap.add_argument("--device", default="cpu")
    args = ap.parse_args(argv)

    paths = sorted(glob.glob(args.samples))
    raw, unrunnable = [], 0
    for p in paths:
        run = Path(p).parent.name
        for line in open(p):
            if not line.strip():
                continue
            r = json.loads(line)
            v = str(r.get("verdict", "")).lower()
            if v == "unrunnable":
                unrunnable += 1
                continue
            if v not in ("leak", "safe") or not r.get("realized_asm"):
                continue
            raw.append({"seq": tuple(r["realized_asm"]), "y": int(v == "leak"),
                        "run": run, "round": r.get("round")})

    # dedupe; drop sequences logged with conflicting verdicts
    by = collections.defaultdict(list)
    for r in raw:
        by[r["seq"]].append(r)
    recs, conflicts = [], 0
    for seq, rs in by.items():
        ys = {r["y"] for r in rs}
        if len(ys) > 1:
            conflicts += 1
            continue
        recs.append(rs[0])
    y = np.array([r["y"] for r in recs])

    L = ["# SPECTRE_V4 generated gadgets: what separates oracle LEAK from SAFE?", "",
         f"Samples: {len(paths)} RL runs. Verdicts leak/safe only "
         f"({unrunnable} unrunnable excluded). {len(raw)} rows -> {len(recs)} unique "
         f"sequences after dedupe ({conflicts} dropped for conflicting verdicts). "
         f"LEAK {int(y.sum())} / SAFE {int((1 - y).sum())}.", "",
         "ROC-AUC: 0.5 = no signal, >0.5 = higher score => more likely LEAK. "
         "Bootstrap 95% CI over unique sequences.", "",
         "RL round is a confounder (leak rate rises with round, and gadgets change "
         "with round), so each scorer also gets a WITHIN-ROUND AUC: computed per "
         "round and averaged over rounds that contain both outcomes.", "",
         "| scorer | ROC-AUC | 95% CI | within-round AUC |", "|---|---|---|---|"]

    rnd = np.array([r["round"] if r["round"] is not None else -1 for r in recs])

    def within(sc, mask=None):
        sc = np.asarray(sc, float); m = np.ones(len(y), bool) if mask is None else mask
        vals = []
        for rd in sorted(set(rnd[m])):
            k = m & (rnd == rd)
            if len(set(y[k])) == 2:
                vals.append(auc(sc[k], y[k]))
        return float(np.mean(vals)) if vals else float("nan")

    def row(name, s):
        a = auc(s, y); lo, hi = boot_ci(s, y)
        L.append(f"| {name} | {a:.3f} | [{lo:.3f}, {hi:.3f}] | {within(s):.3f} |")
        return a

    lens = np.array([len(opcodes(r["seq"])) for r in recs], float)
    fences = np.array([sum(o == "lfence" for o in opcodes(r["seq"])) for r in recs], float)
    row("trivial: sequence length", lens)
    row("trivial: lfence count (higher => leak?)", fences)
    row("trivial: -lfence count (fewer fences => leak?)", -fences)

    # learned trivial bar: opcode-bag logistic regression, leave-one-RL-run-out
    from sklearn.feature_extraction import DictVectorizer
    from sklearn.linear_model import LogisticRegression
    runs = np.array([r["run"] for r in recs])
    bag = [collections.Counter(opcodes(r["seq"])) for r in recs]
    oof = np.full(len(recs), np.nan)
    for held in sorted(set(runs)):
        tr, te = runs != held, runs == held
        if len(set(y[tr])) < 2:
            continue
        v = DictVectorizer()
        Xtr = v.fit_transform([bag[i] for i in np.where(tr)[0]])
        Xte = v.transform([bag[i] for i in np.where(te)[0]])
        m = LogisticRegression(max_iter=5000).fit(Xtr, y[tr])
        oof[te] = m.predict_proba(Xte)[:, 1]
    ok = ~np.isnan(oof)
    a = auc(oof[ok], y[ok]); lo, hi = boot_ci(oof[ok], y[ok])
    wr = within(np.where(ok, oof, 0.5), ok)
    L.append(f"| learned bar: opcode-bag LR (leave-one-RL-run-out) | {a:.3f} | [{lo:.3f}, {hi:.3f}] | {wr:.3f} |")

    # the locked classifier
    from locked_classifier import LockedClassifier
    clf = LockedClassifier(device=args.device)
    out = clf.predict([{"sequence": list(r["seq"]), "arch": "x86_64"} for r in recs])
    attack = np.asarray(out["attack_prob"], float)
    classes = list(out["classes"])
    pv4 = np.asarray(out["probs"], float)[:, classes.index("SPECTRE_V4")] if "SPECTRE_V4" in classes else np.full(len(recs), np.nan)
    built = ~np.isnan(attack)
    yb = y[built]
    for name, sc in [("locked classifier: attack_prob (1-P(BENIGN))", attack),
                     ("locked classifier: P(SPECTRE_V4)", pv4)]:
        a = auc(sc[built], yb); lo, hi = boot_ci(sc[built], yb)
        L.append(f"| {name} [n={int(built.sum())} buildable] | {a:.3f} | [{lo:.3f}, {hi:.3f}] | {within(np.nan_to_num(sc), built):.3f} |")
    lb = lens[built]
    L.append(f"| (check) length, restricted to the same {int(built.sum())} buildable | {auc(lb, yb):.3f} | | {within(lens, built):.3f} |")
    rho = np.corrcoef(attack[built], lens[built])[0, 1]
    L += ["", f"Correlation of classifier attack_prob with sequence length (buildable): {rho:+.3f}. "
          "If the classifier tracks length (negatively) and length tracks LEAK, its inversion is a length effect."]

    # headroom: leak rate per RL round (what a random filter already achieves)
    L += ["", "## Headroom: oracle leak rate by RL round (leak/(leak+safe), unique sequences)", "",
          "| round | n | leak rate |", "|---|---|---|"]
    rounds = collections.defaultdict(list)
    for r in recs:
        rounds[r["round"]].append(r["y"])
    for rd in sorted(k for k in rounds if k is not None):
        v = rounds[rd]
        L.append(f"| {rd} | {len(v)} | {np.mean(v):.2f} |")
    L += ["", "A ranker's best-case gain over random ordering is about 1 / (leak rate). "
          "Rounds where the rate is near 1 leave no room to filter."]

    Path(args.out).write_text("\n".join(L) + "\n")
    print("\n".join(L))
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
