#!/usr/bin/env python3
import argparse
import json
from pathlib import Path
from typing import List, Tuple

import joblib
from sklearn.ensemble import RandomForestClassifier
from sklearn.feature_extraction import DictVectorizer
from sklearn.metrics import classification_report
from sklearn.model_selection import GroupShuffleSplit, StratifiedShuffleSplit



def load_features(path: Path) -> Tuple[List[dict], List[str], List[str], List[float]]:
    X, y, g, w = [], [], [], []
    with path.open() as f:
        for line in f:
            if not line.strip():
                continue
            rec = json.loads(line)
            X.append(rec["features"])
            y.append(rec["label"])
            g.append(rec.get("group", rec["label"]))
            w.append(float(rec.get("weight", 1.0)))
    return X, y, g, w


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--in", dest="inp", type=Path, default=Path("data/dataset/gadgets_features.jsonl"))
    ap.add_argument("--model-dir", type=Path, default=Path("models/gadgets"))
    ap.add_argument("--test-size", type=float, default=0.2)
    ap.add_argument("--seed", type=int, default=42)
    args = ap.parse_args()

    args.model_dir.mkdir(parents=True, exist_ok=True)

    X_dicts, y, groups, weights = load_features(args.inp)
    vec = DictVectorizer(sparse=True)
    X = vec.fit_transform(X_dicts)

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

    # Per-class group selection with fallback when a class has <2 groups
    import random
    random.seed(args.seed)
    from collections import defaultdict
    groups_by_label = defaultdict(list)
    for g in unique_groups:
        groups_by_label[group_to_label[g]].append(g)
    test_groups = set()
    train_groups = set()
    for lbl, grp_list in groups_by_label.items():
        grp_list = list(grp_list)
        random.shuffle(grp_list)
        if len(grp_list) >= 2:
            k = max(1, int(round(len(grp_list) * args.test_size)))
            test_groups.update(grp_list[:k])
            train_groups.update(grp_list[k:])
        else:
            # not enough groups to stratify; keep in train only
            train_groups.update(grp_list)
    # Fallback: if test is empty, do an unstratified group split
    if not test_groups:
        splitter = GroupShuffleSplit(n_splits=1, test_size=args.test_size, random_state=args.seed)
        grp_train_idx, grp_test_idx = next(splitter.split(unique_groups, group_labels))
        train_groups = set(unique_groups[grp_train_idx])
        test_groups = set(unique_groups[grp_test_idx])

    idx_train = [i for i, g in enumerate(groups) if g in train_groups]
    idx_test = [i for i, g in enumerate(groups) if g in test_groups]
    X_train, X_test = X[idx_train], X[idx_test]
    y_train = [y[i] for i in idx_train]
    y_test = [y[i] for i in idx_test]

    clf = RandomForestClassifier(
        n_estimators=400,
        max_depth=None,
        min_samples_split=2,
        min_samples_leaf=1,
        n_jobs=-1,
        class_weight="balanced_subsample",
        random_state=args.seed,
    )
    clf.fit(X_train, y_train, sample_weight=[weights[i] for i in idx_train])

    y_pred = clf.predict(X_test)
    report = classification_report(y_test, y_pred, output_dict=True)

    # Save artifacts
    joblib.dump(clf, args.model_dir / "rf_multiclass.joblib")
    joblib.dump(vec, args.model_dir / "rf_vectorizer.joblib")
    with (args.model_dir / "rf_metrics.json").open("w") as f:
        json.dump(report, f, indent=2)

    print(json.dumps(report, indent=2))


if __name__ == "__main__":
    main()

