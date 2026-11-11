#!/usr/bin/env python3
"""Bars for the step-6 task: what a model that only counts opcodes gets.

Trains a gradient-boosted classifier on opcode counts (no order, no operands,
no graph) on the v57 split, 10 seeds, and reports
  - leak/safe on the split's test side: balanced accuracy overall, per ISA,
    and recall on hardware vs synthetic attacks
  - mechanism (attacks only): macro-F1
  - external sets it never saw: false-positive rate on real-world benign
    functions, and leak-vs-mitigated on the hardware-labelled held-out
    variants (the same programs with and without a working barrier)
Shortcut rows (ISA only, length only) come from v57.checks.
"""
from __future__ import annotations

import argparse
import json
import statistics as st
import sys
from collections import defaultdict
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
if str(ROOT) not in sys.path:
    sys.path.insert(0, str(ROOT))

from v57 import checks, neardup, task  # noqa: E402

EXTERNAL_BENIGN = ["eval/data/realworld_benign_x86_64.jsonl"]
HW_SETS = ["eval/data/revizor_hwlabel_variants.jsonl", "eval/data/revizor_hwlabel_cf_heldout.jsonl",
           "eval/data/revizor_hwlabel_nofence_heldout.jsonl"]


def load(p):
    return [json.loads(l) for l in open(ROOT / p) if l.strip()]


def feats(rows):
    return [dict(neardup.opcodes(r["sequence"])) for r in rows]


def bal_acc(pred, gold):
    per = defaultdict(lambda: [0, 0])
    for p, g in zip(pred, gold):
        per[g][1] += 1
        per[g][0] += p == g
    return sum(h / n for h, n in per.values()) / len(per)


def macro_f1(pred, gold):
    out = []
    for c in sorted(set(gold)):
        tp = sum(p == c and g == c for p, g in zip(pred, gold))
        fp = sum(p == c and g != c for p, g in zip(pred, gold))
        fn = sum(p != c and g == c for p, g in zip(pred, gold))
        out.append(2 * tp / (2 * tp + fp + fn) if tp else 0.0)
    return sum(out) / len(out)


def ms(xs):
    return f"{st.mean(xs):.3f} ± {st.pstdev(xs):.3f}"


def main(argv=None):
    ap = argparse.ArgumentParser(description=__doc__.split("\n")[0])
    ap.add_argument("--data", default=str(ROOT / "v57" / "data"))
    ap.add_argument("--seeds", type=int, nargs="+", default=list(range(10)))
    ap.add_argument("--out", default=str(ROOT / "v57" / "data" / "v57_baselines.md"))
    a = ap.parse_args(argv)
    from sklearn.ensemble import HistGradientBoostingClassifier
    from sklearn.feature_extraction import DictVectorizer
    d = Path(a.data)
    tr, te = load(d / "v57_leak_train.jsonl"), load(d / "v57_leak_test.jsonl")
    mtr, mte = load(d / "v57_mech_train.jsonl"), load(d / "v57_mech_test.jsonl")
    ext_b = [r for p in EXTERNAL_BENIGN for r in load(p)]
    hw = {Path(p).stem: load(p) for p in HW_SETS if (ROOT / p).exists()}
    res = defaultdict(list)
    for seed in a.seeds:
        vec = DictVectorizer(sparse=False)
        X = vec.fit_transform(feats(tr))
        clf = HistGradientBoostingClassifier(random_state=seed, max_iter=200).fit(X, [r["label"] for r in tr])
        pred = list(clf.predict(vec.transform(feats(te))))
        gold = [r["label"] for r in te]
        res["leak: balanced accuracy, all"].append(bal_acc(pred, gold))
        for isa in sorted({r["arch"] for r in te}):
            idx = [i for i, r in enumerate(te) if r["arch"] == isa]
            res[f"leak: balanced accuracy, {isa}"].append(
                bal_acc([pred[i] for i in idx], [gold[i] for i in idx]))
        for kind, test in (("hardware", lambda r: str(r.get("source", "")).startswith("revizor_hw")),
                           ("synthetic", lambda r: not str(r.get("source", "")).startswith("revizor_hw"))):
            idx = [i for i, r in enumerate(te) if r["label"] == "LEAK" and test(r)]
            if idx:
                res[f"leak: recall on {kind} attacks (n={len(idx)})"].append(
                    sum(pred[i] == "LEAK" for i in idx) / len(idx))
        p = clf.predict(vec.transform(feats(ext_b)))
        res[f"external real-world x86 benign: false-positive rate (n={len(ext_b)})"].append(
            sum(x == "LEAK" for x in p) / len(ext_b))
        for name, rows in hw.items():
            g = ["SAFE" if r["label"] == "BENIGN" else "LEAK" for r in rows]
            p = list(clf.predict(vec.transform(feats(rows))))
            res[f"hardware {name}: leak-vs-mitigated balanced accuracy (n={len(rows)})"].append(bal_acc(p, g))
            res[f"hardware {name}: share of mitigated called SAFE"].append(
                sum(x == "SAFE" for x, y in zip(p, g) if y == "SAFE") / max(1, g.count("SAFE")))
        vec2 = DictVectorizer(sparse=False)
        clf2 = HistGradientBoostingClassifier(random_state=seed, max_iter=200).fit(
            vec2.fit_transform(feats(mtr)), [r["label"] for r in mtr])
        mp = list(clf2.predict(vec2.transform(feats(mte))))
        mg = [r["label"] for r in mte]
        res["mechanism (attacks only): macro-F1"].append(macro_f1(mp, mg))
        res["mechanism (attacks only): accuracy"].append(sum(x == y for x, y in zip(mp, mg)) / len(mg))
    raw_tr = [dict(r, label=r["class9"]) for r in tr]
    raw_te = [dict(r, label=r["class9"]) for r in te]
    md = ["# v57 bars: opcode-count gradient boosting", "",
          f"{len(a.seeds)} seeds, mean ± sd. Train {len(tr)}, test {len(te)}; mechanism train "
          f"{len(mtr)}, test {len(mte)}.", "", "| measure | opcode-count GBM |", "|---|---|"]
    md += [f"| {k} | {ms(v)} |" for k, v in res.items()]
    md += ["", "| shortcut on leak/safe (balanced accuracy) | |", "|---|---|",
           f"| ISA alone | {checks.shortcut_accuracy(raw_tr, raw_te, lambda r: r.get('arch')):.3f} |",
           f"| length alone | {checks.shortcut_accuracy(raw_tr, raw_te, checks.length_bin):.3f} |"]
    Path(a.out).write_text("\n".join(md) + "\n")
    print("\n".join(md))
    return 0


if __name__ == "__main__":
    sys.exit(main())
