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
from sklearn.ensemble import RandomForestClassifier
from sklearn.metrics import accuracy_score, f1_score

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
    print(f"{'feature set':22s} {'dim':>4s} {'test-acc':>9s} {'macro-F1':>9s}")
    print("-" * 50)
    for name, (Xtr, Xte) in configs.items():
        clf = RandomForestClassifier(n_estimators=300, n_jobs=-1,
                                     random_state=42, class_weight="balanced")
        clf.fit(Xtr, ytr)
        p = clf.predict(Xte)
        print(f"{name:22s} {Xtr.shape[1]:4d} {accuracy_score(yte,p)*100:8.2f}% "
              f"{f1_score(yte,p,average='macro')*100:8.2f}%")


if __name__ == "__main__":
    main()
