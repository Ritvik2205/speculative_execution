#!/usr/bin/env python3
"""
ablation_spec_features.py — is the generic (ISA-literal-free) spec feature tier
competitive with the hand-58, and complementary to learned MLM features?

RandomForest on the LOCKED v54 test (default) or a group-holdout split (see
SPECDISCOVER_VERIFICATION_GAPS.md, G1 — the locked-split result was never
checked for whether RF is partly memorizing near-duplicates under the default
split), comparing feature sets:
  hand-58        : v54/inline_features.py (ISA literals in code)
  spec-generic   : spec/spec_features.py  (zero ISA literals; from the spec)
  spec+hand      : concatenation
  spec+MLM       : generic structural tier + learned tier (the two-tier target)
  hand+MLM       : reference complementary set
  spec+hand+MLM  : everything

Run:  python3 spec/ablation_spec_features.py [--mlm-path spec/mlm_large.pt]
Group-holdout (G1 check):
  python3 spec/ablation_spec_features.py \
      --train-data ../eval/data/group_holdout_train.jsonl \
      --test-data  ../eval/data/group_holdout_test.jsonl
"""

from __future__ import annotations

import argparse
import sys
from pathlib import Path

import numpy as np
from scipy import stats
from sklearn.ensemble import RandomForestClassifier
from sklearn.metrics import accuracy_score, f1_score


def ci95(x):
    """Mean and t-distribution 95% CI half-width (matches eval/equivalence_tost.py)."""
    x = np.asarray(x, dtype=float)
    n = len(x)
    m = x.mean()
    if n < 2:
        return m, 0.0
    se = x.std(ddof=1) / np.sqrt(n)
    h = se * stats.t.ppf(0.975, n - 1)
    return m, h

ROOT = Path(__file__).resolve().parent.parent
sys.path.insert(0, str(ROOT / "v54"))
sys.path.insert(0, str(ROOT / "spec"))

import inline_features as hf                # noqa: E402
from isa_spec import load_engine            # noqa: E402
from asm_tokenizer import AsmTokenizer      # noqa: E402
from spec_features import compute_spec_features  # noqa: E402
import train_mlm as T                       # noqa: E402
from train_mlm import MlmEncoder            # noqa: E402

ENGINES = {"x86_64": "x86_64.json", "arm64": "arm64.json",
           "arm32": "arm64.json", "unknown": "base.json"}


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--mlm-path", default=str(ROOT / "spec" / "mlm_large.pt"))
    ap.add_argument("--train-data", default=None,
                    help="override train jsonl (default: locked v54_train.jsonl)")
    ap.add_argument("--test-data", default=None,
                    help="override test jsonl (default: locked v54_test.jsonl)")
    ap.add_argument("--seeds", type=int, nargs="+", default=[42])
    args = ap.parse_args()

    engines = {a: load_engine(f) for a, f in ENGINES.items()}
    tok = AsmTokenizer(engines["unknown"])
    mlm = MlmEncoder.load(args.mlm_path)

    tr_path = Path(args.train_data) if args.train_data else T.TRAIN
    te_path = Path(args.test_data) if args.test_data else T.TEST
    print(f"train={tr_path}  test={te_path}\n")
    tr, te = T.load(tr_path), T.load(te_path)
    labels = sorted({r["label"] for r in tr} | {r["label"] for r in te})
    lid = {c: i for i, c in enumerate(labels)}
    ytr = np.array([lid[r["label"]] for r in tr])
    yte = np.array([lid[r["label"]] for r in te])

    def eng(r):
        return engines.get(r.get("arch", "unknown"), engines["unknown"])

    def spec_X(rows):
        return np.vstack([compute_spec_features(r["sequence"], eng(r)) for r in rows])

    def hand_X(rows):
        return np.vstack([hf.compute_inline_features(r["sequence"]) for r in rows])

    def mlm_X(rows):
        return np.vstack([mlm.embed_sequence(tok.tokenize_sequence(r["sequence"])) for r in rows])

    Xtr_spec, Xte_spec = spec_X(tr), spec_X(te)
    Xtr_hand, Xte_hand = hand_X(tr), hand_X(te)
    Xtr_mlm, Xte_mlm = mlm_X(tr), mlm_X(te)

    def cat(*mats):
        return np.hstack(mats)

    configs = {
        "spec-generic": (Xtr_spec, Xte_spec),
        "hand-58": (Xtr_hand, Xte_hand),
        "spec+hand": (cat(Xtr_spec, Xtr_hand), cat(Xte_spec, Xte_hand)),
        "spec+MLM (two-tier)": (cat(Xtr_spec, Xtr_mlm), cat(Xte_spec, Xte_mlm)),
        "hand+MLM": (cat(Xtr_hand, Xtr_mlm), cat(Xte_hand, Xte_mlm)),
        "spec+hand+MLM": (cat(Xtr_spec, Xtr_hand, Xtr_mlm), cat(Xte_spec, Xte_hand, Xte_mlm)),
    }

    print(f"spec-generic dim={Xtr_spec.shape[1]} (zero ISA literals in code)  "
          f"hand={Xtr_hand.shape[1]}  mlm={Xtr_mlm.shape[1]}\n")

    def run_one(Xtr, Xte, seed):
        clf = RandomForestClassifier(n_estimators=300, n_jobs=-1,
                                     random_state=seed, class_weight="balanced")
        clf.fit(Xtr, ytr)
        p = clf.predict(Xte)
        return accuracy_score(yte, p) * 100, f1_score(yte, p, average="macro") * 100

    if len(args.seeds) == 1:
        seed = args.seeds[0]
        print(f"{'feature set':22s} {'dim':>4s} {'test-acc':>9s} {'macro-F1':>9s}")
        print("-" * 50)
        for name, (Xtr, Xte) in configs.items():
            acc, f1 = run_one(Xtr, Xte, seed)
            print(f"{name:22s} {Xtr.shape[1]:4d} {acc:8.2f}% {f1:8.2f}%")
        return

    print(f"seeds={args.seeds}  (n={len(args.seeds)})\n")
    print(f"{'feature set':22s} {'dim':>4s} {'test-acc (mean +/- 95%CI)':>28s} "
          f"{'macro-F1 (mean +/- 95%CI)':>28s}")
    print("-" * 90)
    results = {}
    for name, (Xtr, Xte) in configs.items():
        accs, f1s = [], []
        for sd in args.seeds:
            acc, f1 = run_one(Xtr, Xte, sd)
            accs.append(acc); f1s.append(f1)
        results[name] = (np.array(accs), np.array(f1s))
        am, ah = ci95(accs)
        fm, fh = ci95(f1s)
        print(f"{name:22s} {Xtr.shape[1]:4d} {am:6.2f}% +/- {ah:4.2f}pp"
              f"           {fm:6.2f}% +/- {fh:4.2f}pp")

    print("\n--- paired-by-seed comparison: spec-generic vs hand-58 "
          "(same seed => same train/test split, only RF randomness differs) ---")
    spec_accs = results["spec-generic"][0]
    hand_accs = results["hand-58"][0]
    diffs = spec_accs - hand_accs
    dm, dh = ci95(diffs)
    lo, hi = dm - dh, dm + dh
    if lo > 0:
        verdict = "spec-generic wins (CI excludes zero, spec > hand)"
    elif hi < 0:
        verdict = "hand-58 wins (CI excludes zero, hand > spec)"
    else:
        verdict = "not distinguishable from noise at this seed count (CI straddles zero)"
    print(f"diff (spec - hand): mean={dm:+.2f}pp  95%CI=[{lo:+.2f}, {hi:+.2f}]pp  -> {verdict}")


if __name__ == "__main__":
    main()
