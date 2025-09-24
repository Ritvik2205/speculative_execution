#!/usr/bin/env python3
"""
Train RandomForest + IsolationForest on dataset built by build_dataset.py
Reads dataset/dataset.jsonl and outputs models via ensemble saving paths.
"""

from __future__ import annotations

import os
import json
from pathlib import Path
from typing import List, Dict, Any, Tuple

import numpy as np
from sklearn.ensemble import RandomForestClassifier, IsolationForest
from sklearn.model_selection import train_test_split
from sklearn.preprocessing import StandardScaler
from sklearn.metrics import classification_report
import joblib

DATASET = Path('dataset/dataset.jsonl')
MODEL_DIR = Path('ensemble_vulnerability_model_ensemble')
MODEL_DIR.mkdir(exist_ok=True)

LABELS = [
    'SPECTRE_V1','SPECTRE_V2','MELTDOWN','BHI','INCEPTION','L1TF','MDS','SAFE'
]


def window_to_features(sample: Dict[str, Any]) -> List[float]:
    instrs = sample['instructions']
    n = len(instrs)
    if n == 0:
        return [0.0] * 64
    opcodes = [i.get('opcode', '') for i in instrs]
    sems = [i.get('semantics', {}) for i in instrs]
    unique_opcodes = len(set(opcodes))
    branch = sum(1 for s in sems if s.get('is_branch')) / n
    memory = sum(1 for s in sems if s.get('accesses_memory')) / n
    compares = sum(1 for s in sems if s.get('is_comparison')) / n
    loads = sum(1 for s in sems if s.get('is_load')) / n
    stores = sum(1 for s in sems if s.get('is_store')) / n
    returns = sum(1 for s in sems if s.get('is_return')) / n
    indirect = sum(1 for s in sems if s.get('is_indirect')) / n
    # Simple vector (keep <= 64 dims)
    vec: List[float] = [
        float(n), float(unique_opcodes), branch, memory, compares,
        loads, stores, returns, indirect
    ]
    # Pad
    if len(vec) < 64:
        vec.extend([0.0] * (64 - len(vec)))
    return vec[:64]


def load_dataset() -> Tuple[np.ndarray, np.ndarray]:
    X: List[List[float]] = []
    y: List[int] = []
    if not DATASET.exists():
        raise FileNotFoundError(f"Dataset not found: {DATASET}")
    with open(DATASET, 'r') as f:
        for line in f:
            sample = json.loads(line)
            label = sample['label']
            if label not in LABELS:
                continue
            X.append(window_to_features(sample))
            y.append(LABELS.index(label))
    return np.array(X, dtype=float), np.array(y, dtype=int)


def main():
    X, y = load_dataset()
    X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.2, random_state=42, stratify=y)
    scaler = StandardScaler()
    X_train_s = scaler.fit_transform(X_train)
    X_test_s = scaler.transform(X_test)

    clf = RandomForestClassifier(n_estimators=200, max_depth=14, random_state=42, class_weight='balanced_subsample')
    clf.fit(X_train_s, y_train)
    y_pred = clf.predict(X_test_s)
    # Align report names with actually present classes
    present_classes = np.unique(np.concatenate([y_test, y_pred]))
    present_names = [LABELS[i] for i in present_classes]
    print(classification_report(y_test, y_pred, labels=present_classes, target_names=present_names, zero_division=0))

    # Anomaly detector on train distribution
    iso = IsolationForest(contamination=0.1, random_state=42)
    iso.fit(X_train_s)

    # Save components
    joblib.dump(clf, MODEL_DIR / 'ml_classifier.joblib')
    joblib.dump(iso, MODEL_DIR / 'anomaly_detector.joblib')
    joblib.dump(scaler, MODEL_DIR / 'scaler.joblib')
    print(f"Saved models to {MODEL_DIR}")


if __name__ == '__main__':
    main()

