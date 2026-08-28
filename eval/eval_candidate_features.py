#!/usr/bin/env python3
"""eval_candidate_features.py — does ensemble-gated automated feature selection
close the gap to the hand-engineered tier?

The gate from the plan: `hand-58` currently beats `spec-42` by −1.55pp on the
group-holdout split (10 seeds, paired, CI [−2.01, −1.08]). Hand features win on
accuracy but are ISA-locked; the paper needs an automated tier that ports to a
new ISA by spec file alone. This measures whether the generated candidate pool,
screened by ensemble agreement, closes that gap.

Configs compared (all on the SAME split, paired by seed):
  hand-58            the target to beat (v54/inline_features.py)
  spec-42            today's automated tier (spec/spec_features.py)
  cand-all           the full generated candidate pool, unscreened
  cand-ensemble      pool screened by ensemble agreement (Paul's rule)
  cand-impurity      pool screened by impurity alone — the single-arm control
                     that shows what Paul's rule buys over the obvious default

Uses the GROUP-HOLDOUT split by default: the locked split is known to flatter
spec features and that reversal is documented — do not report locked-split
numbers for this question.

Run: python3 eval/eval_candidate_features.py [--seeds 42 1 7 13 21]
"""
from __future__ import annotations

import argparse
import sys
from pathlib import Path

import numpy as np
from scipy import stats
from sklearn.ensemble import RandomForestClassifier
from sklearn.metrics import accuracy_score, f1_score

ROOT = Path(__file__).resolve().parent.parent
sys.path.insert(0, str(ROOT / "spec"))
sys.path.insert(0, str(ROOT / "v54"))

import inline_features as hf                        # noqa: E402
from isa_spec import load_engine                     # noqa: E402
from spec_features import compute_spec_features      # noqa: E402
from candidate_features import build_space           # noqa: E402
from select_features import select, KEEP             # noqa: E402
import train_mlm as T                                # noqa: E402

ENGINES = {"x86_64": "x86_64.json", "arm64": "arm64.json",
           "arm32": "arm64.json", "riscv64": "riscv.json",
           "unknown": "base.json"}


def ci95(x):
    x = np.asarray(x, float)
    m = x.mean()
    if len(x) < 2:
        return m, 0.0
    return m, x.std(ddof=1) / np.sqrt(len(x)) * stats.t.ppf(0.975, len(x) - 1)


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--seeds", type=int, nargs="+", default=[42, 1, 7, 13, 21])
    ap.add_argument("--train-data", default=str(ROOT / "eval" / "data" / "group_holdout_train.jsonl"))
    ap.add_argument("--test-data", default=str(ROOT / "eval" / "data" / "group_holdout_test.jsonl"))
    args = ap.parse_args()

    tr, te = T.load(Path(args.train_data)), T.load(Path(args.test_data))
    ytr = np.array([r["label"] for r in tr])
    yte = np.array([r["label"] for r in te])
    print(f"train={len(tr)} test={len(te)}  split={Path(args.train_data).name}\n")

    engines = {a: load_engine(f) for a, f in ENGINES.items()}

    def eng(r):
        return engines.get(r.get("arch", "unknown"), engines["unknown"])

    Xtr_hand = np.vstack([hf.compute_inline_features(r["sequence"]) for r in tr])
    Xte_hand = np.vstack([hf.compute_inline_features(r["sequence"]) for r in te])
    Xtr_spec = np.vstack([compute_spec_features(r["sequence"], eng(r)) for r in tr])
    Xte_spec = np.vstack([compute_spec_features(r["sequence"], eng(r)) for r in te])

    # Candidate space fitted on TRAIN only (chooses which columns exist; never
    # sees labels), then applied to both halves.
    space = build_space(tr, engines)
    names = space.feature_names()
    Xtr_cand = space.transform(tr)
    Xte_cand = space.transform(te)
    print(f"candidate pool: {Xtr_cand.shape[1]} features")

    # Selection fitted on TRAIN only.
    sel = select(Xtr_cand, ytr, names, seeds=(args.seeds[0],), verbose=True)
    keep = np.array(sel["keep_idx"], dtype=int)
    imp_keep = np.where(np.array(sel["votes"]["impurity"]) == KEEP)[0]
    print(f"\nensemble keeps {len(keep)}  |  impurity-alone keeps {len(imp_keep)}\n")

    configs = {
        "hand-58": (Xtr_hand, Xte_hand),
        "spec-42": (Xtr_spec, Xte_spec),
        "cand-all": (Xtr_cand, Xte_cand),
        "cand-ensemble": (Xtr_cand[:, keep], Xte_cand[:, keep]),
        "cand-impurity": (Xtr_cand[:, imp_keep], Xte_cand[:, imp_keep]),
    }

    acc, f1 = {}, {}
    for name, (A, B) in configs.items():
        accs, f1s = [], []
        for sd in args.seeds:
            clf = RandomForestClassifier(n_estimators=300, n_jobs=-1,
                                         random_state=sd, class_weight="balanced")
            clf.fit(A, ytr)
            p = clf.predict(B)
            accs.append(accuracy_score(yte, p) * 100)
            f1s.append(f1_score(yte, p, average="macro", zero_division=0) * 100)
        acc[name], f1[name] = accs, f1s

    print(f"{'config':16s} {'dim':>5s} {'test-acc':>18s} {'macro-F1':>18s}")
    print("-" * 62)
    for name, (A, _) in configs.items():
        am, ah = ci95(acc[name])
        fm, fh = ci95(f1[name])
        print(f"{name:16s} {A.shape[1]:5d} {am:8.2f}% +/- {ah:4.2f}pp {fm:8.2f}% +/- {fh:4.2f}pp")

    print(f"\n--- paired vs hand-58 ({len(args.seeds)} seeds) ---")
    for name in configs:
        if name == "hand-58":
            continue
        a = np.array(acc["hand-58"], float)
        b = np.array(acc[name], float)
        d = b - a
        dm, dh = ci95(d)
        p = stats.ttest_rel(b, a).pvalue if d.std() > 0 else float("nan")
        sig = "significant" if (dm - dh > 0 or dm + dh < 0) else "ns"
        print(f"  {name:16s} {dm:+7.2f}pp  95%CI=[{dm-dh:+.2f},{dm+dh:+.2f}]  p={p:.3f}  {sig}")

    print("\n--- the question Paul's rule answers: ensemble vs single-arm ---")
    a = np.array(acc["cand-impurity"], float)
    b = np.array(acc["cand-ensemble"], float)
    d = b - a
    dm, dh = ci95(d)
    p = stats.ttest_rel(b, a).pvalue if d.std() > 0 else float("nan")
    print(f"  cand-ensemble - cand-impurity: {dm:+.2f}pp  "
          f"95%CI=[{dm-dh:+.2f},{dm+dh:+.2f}]  p={p:.3f}")


if __name__ == "__main__":
    main()
