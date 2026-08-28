#!/usr/bin/env python3
"""select_features.py — ensemble-agreement feature selection (Paul, 2026-08 call).

Screens the candidate pool from `candidate_features.py`. The rule is Paul's:
a candidate is discarded ONLY when every arm that adjudicates agrees it is
irrelevant; any dissent keeps it, with a confidence score attached.

Four arms, chosen because they fail differently — an ensemble of four
near-identical scorers would be ceremony, not evidence:

  impurity      RandomForest mean decrease in impurity.
                Bias: inflates high-cardinality / high-variance features.
  permutation   drop in accuracy when the column is shuffled.
                Bias: splits credit badly among correlated features, so a
                genuinely useful feature with a duplicate can look worthless.
  mutual_info   univariate MI against the label.
                Bias: blind to interactions — a feature that only matters in
                combination scores ~0.
  stability     how often the feature clears the null across seeds.
                Catches features that look important on one lucky split.

Thresholds are NOT hardcoded. Following Confident Learning (arXiv 1911.00068),
each arm's cutoff is calibrated against a null distribution built by shuffling
the labels: a feature is "irrelevant" to that arm only if it scores below what
the arm assigns to a feature with no real relationship to the label. That makes
the cutoff comparable across arms whose scores are on different scales, which a
shared percentile would not be.

Run:
  python3 spec/select_features.py --arch x86_64 [--out eval/feature_selection.json]
"""

from __future__ import annotations

import argparse
import json
import sys
from pathlib import Path

import numpy as np
from sklearn.ensemble import RandomForestClassifier
from sklearn.feature_selection import mutual_info_classif
from sklearn.inspection import permutation_importance
from sklearn.model_selection import train_test_split

ROOT = Path(__file__).resolve().parent.parent
sys.path.insert(0, str(ROOT / "spec"))
sys.path.insert(0, str(ROOT / "v54"))

from isa_spec import load_engine               # noqa: E402
from candidate_features import build_space      # noqa: E402
import train_mlm as T                           # noqa: E402

KEEP, DISCARD, ABSTAIN = 1, -1, 0
ARMS = ("impurity", "permutation", "mutual_info", "stability")


def _rf(seed, n_estimators=200):
    return RandomForestClassifier(n_estimators=n_estimators, n_jobs=-1,
                                  random_state=seed, class_weight="balanced")


def score_impurity(X, y, seed):
    return _rf(seed).fit(X, y).feature_importances_


def score_permutation(X, y, seed, n_repeats=3):
    Xtr, Xte, ytr, yte = train_test_split(X, y, test_size=0.3, random_state=seed,
                                          stratify=y)
    clf = _rf(seed).fit(Xtr, ytr)
    r = permutation_importance(clf, Xte, yte, n_repeats=n_repeats,
                               random_state=seed, n_jobs=-1)
    return r.importances_mean


def score_mutual_info(X, y, seed):
    return mutual_info_classif(X, y, random_state=seed)


SCORERS = {"impurity": score_impurity,
           "permutation": score_permutation,
           "mutual_info": score_mutual_info}


def null_cutoff(scorer, X, y, seed, n_shuffles=3, q=95.0):
    """Highest score this arm gives a feature when the labels carry no signal.

    Anything at or below this is indistinguishable from noise *to this arm*.
    """
    rng = np.random.RandomState(seed)
    nulls = []
    for i in range(n_shuffles):
        y_shuf = rng.permutation(y)
        nulls.append(scorer(X, y_shuf, seed + i))
    return float(np.percentile(np.concatenate(nulls), q))


def select(X, y, names, seeds=(42, 1, 7), n_shuffles=3, verbose=True):
    """-> dict with per-arm votes, the agreed keep/discard split, confidences."""
    n_feat = X.shape[1]
    votes = {a: np.zeros(n_feat, dtype=np.int8) for a in ARMS}
    detail = {}

    per_seed_pass = np.zeros((len(seeds), n_feat), dtype=bool)
    for arm in ("impurity", "permutation", "mutual_info"):
        scorer = SCORERS[arm]
        s = scorer(X, y, seeds[0])
        cut = null_cutoff(scorer, X, y, seeds[0], n_shuffles=n_shuffles)
        votes[arm] = np.where(s > cut, KEEP, DISCARD).astype(np.int8)
        detail[arm] = {"cutoff": cut, "n_keep": int((s > cut).sum())}
        if verbose:
            print(f"  {arm:12s} null cutoff={cut:.6g}  keeps {int((s > cut).sum())}/{n_feat}")

    # stability: does the feature clear its own null on most seeds?
    cut0 = null_cutoff(SCORERS["impurity"], X, y, seeds[0], n_shuffles=n_shuffles)
    for i, sd in enumerate(seeds):
        per_seed_pass[i] = SCORERS["impurity"](X, y, sd) > cut0
    frac = per_seed_pass.mean(axis=0)
    # Abstain in the ambiguous middle rather than forcing a call.
    v = np.zeros(n_feat, dtype=np.int8)
    v[frac >= 0.66] = KEEP
    v[frac <= 0.33] = DISCARD
    votes["stability"] = v
    detail["stability"] = {"n_keep": int((v == KEEP).sum()),
                           "n_abstain": int((v == ABSTAIN).sum())}
    if verbose:
        print(f"  {'stability':12s} keeps {int((v == KEEP).sum())}/{n_feat}, "
              f"abstains {int((v == ABSTAIN).sum())}")

    V = np.stack([votes[a] for a in ARMS], axis=0)
    n_keep = (V == KEEP).sum(axis=0)
    n_disc = (V == DISCARD).sum(axis=0)
    adjudicated = (n_keep + n_disc) > 0

    # Paul's rule: unanimity among adjudicating arms is required to discard.
    discard = adjudicated & (n_keep == 0)
    keep = ~discard
    confidence = np.where(adjudicated, n_keep / np.maximum(n_keep + n_disc, 1), 1.0)

    return {
        "names": list(names),
        "votes": {a: votes[a].tolist() for a in ARMS},
        "keep_idx": np.where(keep)[0].tolist(),
        "discard_idx": np.where(discard)[0].tolist(),
        "confidence": confidence.tolist(),
        "detail": detail,
        "n_disagreed": int(((n_keep > 0) & (n_disc > 0)).sum()),
    }


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--arch", default="x86_64")
    ap.add_argument("--seeds", type=int, nargs="+", default=[42, 1, 7])
    ap.add_argument("--train-data", default=None)
    ap.add_argument("--out", default=str(ROOT / "eval" / "feature_selection.json"))
    args = ap.parse_args()

    rows = T.load(Path(args.train_data) if args.train_data else T.TRAIN)
    engine = load_engine(f"{args.arch}.json")
    space = build_space(rows)
    names = space.feature_names()
    X = space.transform(rows)
    y = np.array([r["label"] for r in rows])
    print(f"candidates={X.shape[1]} records={X.shape[0]}\n")

    res = select(X, y, names, seeds=tuple(args.seeds))
    n = len(names)
    print(f"\nunanimous discard : {len(res['discard_idx'])}/{n}")
    print(f"kept              : {len(res['keep_idx'])}/{n}")
    print(f"arms disagreed on : {res['n_disagreed']} "
          f"(these survive because of Paul's rule; a single-arm cut would have "
          f"dropped whichever ones that arm disliked)")

    kept_names = [names[i] for i in res["keep_idx"]]
    print("\nsample kept bigrams:",
          [x for x in kept_names if x.startswith("bg_")][:8])
    print("sample discarded   :",
          [names[i] for i in res["discard_idx"]][:8])

    Path(args.out).parent.mkdir(parents=True, exist_ok=True)
    with open(args.out, "w") as f:
        json.dump(res, f, indent=2)
    print(f"\nsaved -> {args.out}")


if __name__ == "__main__":
    main()
