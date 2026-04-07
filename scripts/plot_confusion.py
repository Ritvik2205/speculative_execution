#!/usr/bin/env python3
import argparse
import json
import sys
from pathlib import Path
from typing import List, Tuple
import joblib
import numpy as np
import matplotlib.pyplot as plt
from sklearn.metrics import confusion_matrix, ConfusionMatrixDisplay
from collections import defaultdict
import random

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
    ap.add_argument("--in", dest="inp", type=Path, default=Path("data/dataset/merged_features_v5.jsonl"))
    ap.add_argument("--model-dir", type=Path, default=Path("models/merged_rf_v5"))
    ap.add_argument("--test-size", type=float, default=0.2)
    ap.add_argument("--seed", type=int, default=42)
    ap.add_argument("--out-dir", type=Path, default=Path("viz_comparisons"))
    args = ap.parse_args()

    args.out_dir.mkdir(parents=True, exist_ok=True)

    print(f"Loading data from {args.inp}...")
    X_dicts, y, groups, weights = load_features(args.inp)
    
    print(f"Loading model from {args.model_dir}...")
    try:
        clf = joblib.load(args.model_dir / "rf_multiclass.joblib")
        vec = joblib.load(args.model_dir / "rf_vectorizer.joblib")
    except FileNotFoundError:
        print(f"Error: Model files not found in {args.model_dir}")
        sys.exit(1)

    X = vec.transform(X_dicts)

    # --- Replicate Split Logic (StratifiedShuffleSplit) ---
    from sklearn.model_selection import StratifiedShuffleSplit
    
    # Use StratifiedShuffleSplit for robust evaluation across all augmentations
    splitter = StratifiedShuffleSplit(n_splits=1, test_size=args.test_size, random_state=args.seed)
    train_idx, test_idx = next(splitter.split(X, y))
    
    X_train, X_test = X[train_idx], X[test_idx]
    y_train = [y[i] for i in train_idx]
    y_test = [y[i] for i in test_idx]
    
    print(f"Split info:")
    print(f"  Total samples: {len(y)}")
    print(f"  Train samples: {len(y_train)} ({len(y_train)/len(y):.1%})")
    print(f"  Test samples:  {len(y_test)} ({len(y_test)/len(y):.1%})")
    
    # --- Plotting ---
    labels = sorted(list(set(y)))
    
    # Train Matrix
    print("Generating training confusion matrix...")
    y_train_pred = clf.predict(X_train)
    fig, ax = plt.subplots(figsize=(12, 12))
    cm_train = confusion_matrix(y_train, y_train_pred, labels=labels)
    disp_train = ConfusionMatrixDisplay(confusion_matrix=cm_train, display_labels=labels)
    disp_train.plot(ax=ax, xticks_rotation=45, cmap='Blues')
    ax.set_title("Confusion Matrix - Training Set")
    plt.tight_layout()
    train_plot_path = args.out_dir / "confusion_matrix_train.png"
    plt.savefig(train_plot_path)
    print(f"Saved training confusion matrix to {train_plot_path}")
    plt.close()

    # Test Matrix
    print("Generating test confusion matrix...")
    y_test_pred = clf.predict(X_test)
    fig, ax = plt.subplots(figsize=(12, 12))
    cm_test = confusion_matrix(y_test, y_test_pred, labels=labels)
    disp_test = ConfusionMatrixDisplay(confusion_matrix=cm_test, display_labels=labels)
    disp_test.plot(ax=ax, xticks_rotation=45, cmap='Greens')
    ax.set_title("Confusion Matrix - Test Set")
    plt.tight_layout()
    test_plot_path = args.out_dir / "confusion_matrix_test.png"
    plt.savefig(test_plot_path)
    print(f"Saved test confusion matrix to {test_plot_path}")
    plt.close()

if __name__ == "__main__":
    main()

