"""shared_config_identifiability.py — under the shared Revizor config, can the
class be read from the program text by ANY non-learned feature set?

eval/shared_config.py gives the paper's opcode bar. This widens it: opcode
bag, opcode bigrams (order), structural counts (length, memory reads/writes,
memory operand per opcode, lock, operand size, registers), and all of them
together, each with logistic regression and a random forest. Split: 5-fold
GroupKFold over seed groups (label::seed), repeated with shuffled fold
assignment. Metric: balanced accuracy (chance = 1/#classes).

If every bar sits at chance, the class (MDS vs L1TF in particular) is not a
property of the code: under one instruction menu it is set by the contract and
the actor/page configuration the program was fuzzed under.

  python3 -m eval.shared_config_identifiability [--classes MDS L1TF] [--reps 5]
"""
from __future__ import annotations

import argparse
import collections
import re
from pathlib import Path

import numpy as np

from eval.shared_config import ROOT, _opcode, load_shared, seed_group

KINDS = ("bag", "bigram", "struct", "all")
OUT = ROOT / "eval" / "shared_config_identifiability.md"


def features(r: dict, kind: str) -> dict:
    seq = [i for i in r["sequence"] if i.strip()]
    ops = [_opcode(i) for i in seq]
    f: collections.Counter = collections.Counter()
    if kind in ("bag", "all"):
        for o in ops:
            f["u:" + o] += 1
    if kind in ("bigram", "all"):
        for a, b in zip(ops, ops[1:]):
            f[f"b:{a}>{b}"] += 1
    if kind in ("struct", "all"):
        f["len"] = len(seq)
        for i, o in zip(seq, ops):
            if "(" in i:
                # AT&T: the destination is the last operand
                f["memw" if i.rstrip().endswith(")") else "memr"] += 1
                f["mem:" + o] += 1
            if i.startswith("lock"):
                f["lock"] += 1
            f["sz:" + o[-1]] += 1
            for reg in re.findall(r"%(\w+)", i):
                f["reg:" + reg] += 1
    return dict(f)


def _models():
    from sklearn.ensemble import RandomForestClassifier
    from sklearn.linear_model import LogisticRegression
    from sklearn.pipeline import make_pipeline
    from sklearn.preprocessing import StandardScaler
    return {"LR": lambda: make_pipeline(StandardScaler(), LogisticRegression(max_iter=5000, C=0.1)),
            "RF": lambda: RandomForestClassifier(300, random_state=0, class_weight="balanced")}


def identifiability(recs: list[dict], classes, kinds=KINDS, reps: int = 5) -> dict:
    """{(kind, model): (mean, sd)} balanced accuracy over `reps` group-CV repeats."""
    from sklearn.feature_extraction import DictVectorizer
    from sklearn.metrics import balanced_accuracy_score
    from sklearn.model_selection import GroupKFold
    recs = [r for r in recs if r["label"] in classes]
    y = np.array([r["label"] for r in recs])
    g = np.array([seed_group(r) for r in recs])
    ug = np.unique(g)
    out = {}
    for kind in kinds:
        X = DictVectorizer(sparse=False).fit_transform([features(r, kind) for r in recs])
        for name, mk in _models().items():
            accs = []
            for rep in range(reps):
                perm = dict(zip(ug, np.random.default_rng(rep).permutation(len(ug))))
                gi = np.array([perm[x] for x in g])
                pred = np.empty(len(y), dtype=object)
                for tr, te in GroupKFold(min(5, len(ug))).split(X, y, gi):
                    pred[te] = mk().fit(X[tr], y[tr]).predict(X[te])
                accs.append(balanced_accuracy_score(y, pred.astype(str)))
            out[(kind, name)] = (float(np.mean(accs)), float(np.std(accs)))
    return out


def main(argv=None) -> int:
    ap = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument("--classes", nargs="+", action="append", default=None)
    ap.add_argument("--reps", type=int, default=5)
    ap.add_argument("--out", type=Path, default=OUT)
    a = ap.parse_args(argv)
    sets = a.classes or [["MDS", "L1TF"], ["MDS", "L1TF", "SPECTRE_V4"]]
    recs = load_shared()
    L = ["# Shared-config class identifiability (non-learned bars)", "",
         "Seed-grouped 5-fold CV, repeated; balanced accuracy, mean ± sd. "
         "Below-chance means no signal: held-out seed groups are single-class.", ""]
    for cs in sets:
        n = collections.Counter(r["label"] for r in recs if r["label"] in cs)
        res = identifiability(recs, cs, reps=a.reps)
        L += [f"## {' vs '.join(cs)} (chance {1 / len(cs):.2f}; n = "
              + ", ".join(f"{c} {n[c]}" for c in cs) + ")", "",
              "| features | LR | RF |", "|---|---|---|"]
        for k in KINDS:
            L.append(f"| {k} | " + " | ".join(f"{res[(k, m)][0]:.3f} ± {res[(k, m)][1]:.3f}" for m in ("LR", "RF")) + " |")
        L.append("")
    a.out.write_text("\n".join(L))
    print("\n".join(L))
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
