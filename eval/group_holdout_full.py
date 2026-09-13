#!/usr/bin/env python3
"""
group_holdout_full.py — group-holdout the REAL production model (G3 / B1a,
see SPECDISCOVER_VERIFICATION_GAPS.md).

eval/splits.py already showed the compact-proxy GINE drops -4.90pp acc /
-7.90pp macro-F1 from a random record-level split to a group hold-out split.
That was never checked on the actual v54/train_gine_v38.py model that produces
the cited "96.14% ± 1.59" flagship number (eval/full_tost/results.tsv, hand
mode). This script:

  1. Recombines v54_train.jsonl + v54_test.jsonl (the same 7203-record pool
     eval/splits.py uses) and partitions it by `group` (no base gadget split
     across sides), mirroring eval/splits.py's own group-partition logic
     exactly (np.random.default_rng(0), shuffle groups, 77% cut).
  2. Writes the two sides to eval/data/group_holdout_{train,test}.jsonl.
  3. Trains the REAL v54 GINE (train_gine_v38.py, --use-spec-builder) with the
     exact hyperparameters eval/run_full_tost.sh used for the "hand" mode
     (epochs=60, patience=10, hidden=128, layers=3, jk=cat, batch=32, lr=1e-3)
     across the same 5 seeds, and reports test-acc/macro-F1 mean±CI next to
     the locked-split number.

Run:  python3 eval/group_holdout_full.py
"""

from __future__ import annotations

import json
import subprocess
import sys
from pathlib import Path

import numpy as np
from scipy import stats

ROOT = Path(__file__).resolve().parent.parent
TRAIN = ROOT / "v54" / "data" / "v54_train.jsonl"
TEST = ROOT / "v54" / "data" / "v54_test.jsonl"
DATA_DIR = ROOT / "eval" / "data"
OUT_DIR = ROOT / "eval" / "group_holdout"
SEEDS = [42, 1, 7, 13, 21]
GROUP_CUT = 0.77


def load(path: Path):
    return [json.loads(l) for l in open(path) if l.strip()]


def build_group_split():
    rows = load(TRAIN) + load(TEST)
    groups = sorted({r["group"] for r in rows})
    rng = np.random.default_rng(0)
    rng.shuffle(groups)
    gcut = int(GROUP_CUT * len(groups))
    test_groups = set(groups[gcut:])

    tr_rows = [r for r in rows if r["group"] not in test_groups]
    te_rows = [r for r in rows if r["group"] in test_groups]

    DATA_DIR.mkdir(parents=True, exist_ok=True)
    tr_path = DATA_DIR / "group_holdout_train.jsonl"
    te_path = DATA_DIR / "group_holdout_test.jsonl"
    with open(tr_path, "w") as f:
        for r in tr_rows:
            f.write(json.dumps(r) + "\n")
    with open(te_path, "w") as f:
        for r in te_rows:
            f.write(json.dumps(r) + "\n")

    print(f"pool={len(rows)} groups={len(groups)}  "
          f"group-train={len(tr_rows)} ({len(groups)-len(test_groups)} groups)  "
          f"group-test={len(te_rows)} ({len(test_groups)} groups)")
    assert not ({r["group"] for r in tr_rows} & {r["group"] for r in te_rows}), \
        "group leakage in constructed split!"
    return tr_path, te_path


def run_seed(sd: int, tr_path: Path, te_path: Path):
    out_dir = OUT_DIR / f"viz_s{sd}"
    log_path = OUT_DIR / f"s{sd}.log"
    cmd = [
        sys.executable, "-u", "train_gine_v38.py",
        "--train-data", str(tr_path), "--test-data", str(te_path),
        "--output-dir", str(out_dir), "--viz-dir", str(out_dir),
        "--epochs", "60", "--patience", "10",
        "--hidden-dim", "128", "--num-layers", "3", "--jk-mode", "cat",
        "--batch-size", "32", "--lr", "1e-3",
        "--use-spec-builder", "--seed", str(sd),
    ]
    print(f"\n=== seed {sd} ===")
    with open(log_path, "w") as logf:
        proc = subprocess.run(cmd, cwd=str(ROOT / "v54"), stdout=logf,
                               stderr=subprocess.STDOUT, env={"TQDM_DISABLE": "1",
                                                               **__import__("os").environ})
    if proc.returncode != 0:
        print(f"  seed {sd} FAILED (see {log_path})")
        return None
    metrics_path = out_dir / "gine_metrics.json"
    m = json.load(open(metrics_path))
    acc = m["test_accuracy"] * 100
    f1 = m["classification_report"]["macro avg"]["f1-score"] * 100
    print(f"  seed {sd}: test-acc={acc:.2f}  macro-F1={f1:.2f}")
    return acc, f1


def ci(x):
    x = np.asarray(x, float)
    if len(x) < 2:
        return x.mean(), 0.0
    return x.mean(), x.std(ddof=1) / np.sqrt(len(x)) * stats.t.ppf(0.975, len(x) - 1)


def main():
    OUT_DIR.mkdir(parents=True, exist_ok=True)
    tr_path, te_path = build_group_split()

    accs, f1s = [], []
    for sd in SEEDS:
        r = run_seed(sd, tr_path, te_path)
        if r is not None:
            accs.append(r[0]); f1s.append(r[1])

    if not accs:
        print("no successful runs")
        sys.exit(1)

    am, ah = ci(accs)
    fm, fh = ci(f1s)
    print(f"\n{'='*60}")
    print(f"group-holdout (real v54 GINE, {len(accs)} seeds):")
    print(f"  test-acc  {am:6.2f} ± {ah:4.2f}")
    print(f"  macro-F1  {fm:6.2f} ± {fh:4.2f}")
    print(f"\ncompare to locked-split flagship (eval/full_tost/results.tsv, hand mode):")
    print(f"  test-acc  96.14 ± 1.59")
    # G12 fix: the original 85.60 here was macro-RECALL mislabeled as F1 (an
    # awk column-index bug in run_full_tost.sh, $4 instead of $5). True
    # macro-F1 for that baseline is 84.60 ± 7.22 (recomputed directly from
    # the classification_report in each log).
    print(f"  macro-F1  84.60 ± 7.22 (recomputed correctly post-G12)")
    print(f"  delta acc: {am - 96.14:+.2f}pp   delta F1: {fm - 84.60:+.2f}pp")


if __name__ == "__main__":
    main()
