#!/usr/bin/env python3
import argparse
import json
import sys
import time
from pathlib import Path
from typing import List, Tuple
from collections import Counter

import joblib
from sklearn.ensemble import RandomForestClassifier
from sklearn.feature_extraction import DictVectorizer
from sklearn.metrics import classification_report
from sklearn.model_selection import GroupShuffleSplit, StratifiedShuffleSplit


def log(msg: str):
    """Print with flush for real-time output."""
    print(msg, flush=True)


def load_features(path: Path) -> Tuple[List[dict], List[str], List[str], List[float]]:
    log(f"Loading features from {path}...")
    X, y, g, w = [], [], [], []
    with path.open() as f:
        for i, line in enumerate(f):
            if not line.strip():
                continue
            rec = json.loads(line)
            X.append(rec["features"])
            y.append(rec["label"])
            g.append(rec.get("group", rec["label"]))
            w.append(float(rec.get("weight", 1.0)))
            if (i + 1) % 25000 == 0:
                log(f"  Loaded {i + 1} records...")
    log(f"  Total: {len(X)} records")
    return X, y, g, w


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--in", dest="inp", type=Path, default=Path("data/dataset/gadgets_features.jsonl"))
    ap.add_argument("--model-dir", type=Path, default=Path("models/gadgets"))
    ap.add_argument("--test-size", type=float, default=0.2)
    ap.add_argument("--seed", type=int, default=42)
    ap.add_argument("--n-estimators", type=int, default=200, help="Number of trees (reduce for faster training)")
    ap.add_argument("--n-jobs", type=int, default=-1, help="Parallel jobs (-1 = all cores)")
    args = ap.parse_args()

    args.model_dir.mkdir(parents=True, exist_ok=True)
    
    start_time = time.time()

    X_dicts, y, groups, weights = load_features(args.inp)
    
    # Print label distribution
    label_counts = Counter(y)
    log("\nLabel distribution:")
    for label, count in sorted(label_counts.items(), key=lambda x: -x[1]):
        log(f"  {label}: {count}")
    
    log("\nVectorizing features...")
    vec = DictVectorizer(sparse=True)
    X = vec.fit_transform(X_dicts)
    log(f"  Feature matrix shape: {X.shape}")

    # Build group-level labels for stratification
    import numpy as np
    groups_arr = np.array(groups)
    y_arr = np.array(y)
    unique_groups = np.unique(groups_arr)
    # assign each group a representative label (most frequent among its members)
    group_to_label = {}
    for g in unique_groups:
        ys = y_arr[groups_arr == g]
        if len(ys) == 0:
            continue
        # pick the first label (groups should be homogeneous)
        group_to_label[g] = ys[0]
    group_labels = [group_to_label[g] for g in unique_groups]

    log("\nSplitting train/test...")
    # Use StratifiedShuffleSplit for robust evaluation across all augmentations
    # (GroupShuffleSplit was causing issues where entire architectures like x86 were in Test only)
    splitter = StratifiedShuffleSplit(n_splits=1, test_size=args.test_size, random_state=args.seed)
    train_idx, test_idx = next(splitter.split(X, y))
    
    X_train, X_test = X[train_idx], X[test_idx]
    y_train = [y[i] for i in train_idx]
    y_test = [y[i] for i in test_idx]
    # weights need to be indexed as well
    w_train = [weights[i] for i in train_idx]
    
    log(f"  Train: {len(y_train)} samples")
    log(f"  Test:  {len(y_test)} samples")

    log(f"\nTraining RandomForest with {args.n_estimators} trees (n_jobs={args.n_jobs})...")
    clf = RandomForestClassifier(
        n_estimators=args.n_estimators,
        max_depth=None,
        min_samples_split=2,
        min_samples_leaf=1,
        n_jobs=args.n_jobs,
        class_weight="balanced_subsample",
        random_state=args.seed,
        verbose=1,  # Show progress
    )
    clf.fit(X_train, y_train, sample_weight=w_train)
    
    train_time = time.time() - start_time
    log(f"\nTraining completed in {train_time:.1f}s")

    log("\nEvaluating on test set...")
    y_pred = clf.predict(X_test)
    report = classification_report(y_test, y_pred, output_dict=True)

    # Save artifacts
    log(f"\nSaving model to {args.model_dir}...")
    joblib.dump(clf, args.model_dir / "rf_multiclass.joblib")
    joblib.dump(vec, args.model_dir / "rf_vectorizer.joblib")
    with (args.model_dir / "rf_metrics.json").open("w") as f:
        json.dump(report, f, indent=2)

    log("\n" + "="*50)
    log("RESULTS:")
    log("="*50)
    print(json.dumps(report, indent=2), flush=True)


if __name__ == "__main__":
    main()

