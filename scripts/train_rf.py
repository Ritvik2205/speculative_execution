#!/usr/bin/env python3
import argparse
import json
from pathlib import Path
from typing import List, Tuple

import joblib
from sklearn.ensemble import RandomForestClassifier
from sklearn.feature_extraction import DictVectorizer
from sklearn.metrics import classification_report
from sklearn.model_selection import train_test_split


def load_features(path: Path) -> Tuple[List[dict], List[str]]:
    X, y = [], []
    with path.open() as f:
        for line in f:
            if not line.strip():
                continue
            rec = json.loads(line)
            X.append(rec["features"])
            y.append(rec["label"])
    return X, y


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--in", dest="inp", type=Path, default=Path("data/dataset/arm64_features.jsonl"))
    ap.add_argument("--model-dir", type=Path, default=Path("models"))
    ap.add_argument("--test-size", type=float, default=0.4)
    ap.add_argument("--seed", type=int, default=42)
    args = ap.parse_args()

    args.model_dir.mkdir(parents=True, exist_ok=True)

    X_dicts, y = load_features(args.inp)
    vec = DictVectorizer(sparse=True)
    X = vec.fit_transform(X_dicts)

    X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=args.test_size, random_state=args.seed, stratify=y)

    clf = RandomForestClassifier(
        n_estimators=300,
        max_depth=None,
        min_samples_split=2,
        min_samples_leaf=1,
        n_jobs=-1,
        class_weight="balanced_subsample",
        random_state=args.seed,
    )
    clf.fit(X_train, y_train)

    y_pred = clf.predict(X_test)
    report = classification_report(y_test, y_pred, output_dict=True)

    # Save artifacts
    joblib.dump(clf, args.model_dir / "rf_model.joblib")
    joblib.dump(vec, args.model_dir / "rf_vectorizer.joblib")
    with (args.model_dir / "rf_metrics.json").open("w") as f:
        json.dump(report, f, indent=2)

    print(json.dumps(report, indent=2))


if __name__ == "__main__":
    main()


