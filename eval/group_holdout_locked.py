#!/usr/bin/env python3
"""group_holdout_locked.py — the leakage-controlled generalisation number for
the LOCKED model's recipe, on current code.

Why a new script. eval/group_holdout_full.py does the same group split but
trains the B1 recipe (hand node features, spec builder). The paper's locked
ensemble is a different configuration (learned neutral-MLM node features,
adversarial arch head, the 9 neutral inline features, NOP-dropping,
length-matched data), and its headline is a RANDOM-split number. A reviewer
will ask what that model does under a split where no base gadget appears on
both sides; this answers it with the locked model's own flags.

What it does: group-split v54/data/v54_train_lenmatch_v4s.jsonl by `group`
(the same rng(0), shuffle, 77% cut eval/splits.py uses), retrain the locked
recipe on the train side for each seed, score on the held-out side, report
mean +/- 95% CI, and print the delta against the locked random-split number.

Optimisation-level hold-out is NOT here, and cannot be: the lenmatch training
data carries no `opt` field (measured: 18,897 of 19,053 records have none, and
the 156 that do are O0/O1 only -- there is no O3 to hold out). The earlier
"macro-F1 94 -> 39 under an O3 hold-out" came from an older dataset that still
tagged optimisation level; reproducing it on the locked model needs that data
rebuilt with opt tags first. This script refuses the opt split rather than
fake it.

Run on the cluster (a retrain per seed; use eval/cluster/group_holdout_locked.sbatch):
    python3 eval/group_holdout_locked.py --seeds 42 1 7 13 21
"""
from __future__ import annotations

import argparse
import json
import subprocess
import sys
import os
from pathlib import Path

import numpy as np
from scipy import stats

ROOT = Path(__file__).resolve().parent.parent
DATA_DIR = ROOT / "eval" / "data"
OUT_DIR = ROOT / "eval" / "group_holdout_locked"
TRAIN = ROOT / "v54" / "data" / "v54_train_lenmatch_v4s.jsonl"
GROUP_CUT = 0.77
# the locked model's random-split reference (models/locked_classifier.json)
LOCKED_RANDOM_ACC = 92.45


def load(path):
    return [json.loads(l) for l in open(path) if l.strip()]


def build_group_split(seed_for_split: int = 0):
    rows = load(TRAIN)
    groups = sorted({r["group"] for r in rows})
    rng = np.random.default_rng(seed_for_split)
    rng.shuffle(groups)
    gcut = int(GROUP_CUT * len(groups))
    test_groups = set(groups[gcut:])
    tr = [r for r in rows if r["group"] not in test_groups]
    te = [r for r in rows if r["group"] in test_groups]
    DATA_DIR.mkdir(parents=True, exist_ok=True)
    tp = DATA_DIR / "group_holdout_locked_train.jsonl"
    ep = DATA_DIR / "group_holdout_locked_test.jsonl"
    with open(tp, "w") as f:
        for r in tr:
            f.write(json.dumps(r) + "\n")
    with open(ep, "w") as f:
        for r in te:
            f.write(json.dumps(r) + "\n")
    # guard: no group on both sides
    assert not ({r["group"] for r in tr} & {r["group"] for r in te}), "group leak!"
    print(f"pool={len(rows)} groups={len(groups)} "
          f"train={len(tr)} test={len(te)} ({len(test_groups)} test groups)")
    return tp, ep


def run_seed(sd, tp, ep):
    out = OUT_DIR / f"viz_s{sd}"
    cmd = [
        sys.executable, "-u", "train_gine_v38.py",
        "--train-data", str(tp), "--test-data", str(ep),
        "--output-dir", str(out), "--viz-dir", str(out),
        "--epochs", "60", "--patience", "10",
        "--hidden-dim", "128", "--num-layers", "3", "--jk-mode", "cat",
        "--batch-size", "32", "--lr", "1e-3",
        "--use-spec-builder",
        "--node-feature-mode", "learned", "--mlm-path", "spec/mlm_neutral.pt",
        "--arch-mode", "adversarial", "--arch-lambda", "1.0",
        "--handcrafted-subset", "neutral", "--drop-nops", "--node-drop", "0.1",
        "--seed", str(sd),
    ]
    log = OUT_DIR / f"s{sd}.log"
    with open(log, "w") as lf:
        p = subprocess.run(cmd, cwd=str(ROOT / "v54"), stdout=lf,
                           stderr=subprocess.STDOUT,
                           env={"TQDM_DISABLE": "1", **os.environ})
    if p.returncode != 0:
        print(f"  seed {sd} FAILED (see {log})")
        return None
    m = json.load(open(out / "gine_metrics.json"))
    acc = m["test_accuracy"] * 100
    f1 = m["classification_report"]["macro avg"]["f1-score"] * 100
    print(f"  seed {sd}: acc={acc:.2f} macroF1={f1:.2f}")
    return acc, f1


def ci(x):
    x = np.asarray(x, float)
    if len(x) < 2:
        return float(x.mean()), 0.0
    return float(x.mean()), float(x.std(ddof=1) / np.sqrt(len(x)) * stats.t.ppf(0.975, len(x) - 1))


def main(argv=None):
    ap = argparse.ArgumentParser(description=__doc__,
                                 formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument("--seeds", type=int, nargs="+", default=[42, 1, 7, 13, 21])
    ap.add_argument("--split-seed", type=int, default=0)
    a = ap.parse_args(argv)
    OUT_DIR.mkdir(parents=True, exist_ok=True)
    tp, ep = build_group_split(a.split_seed)
    accs, f1s = [], []
    for sd in a.seeds:
        r = run_seed(sd, tp, ep)
        if r:
            accs.append(r[0]); f1s.append(r[1])
    if not accs:
        print("no successful runs"); return 1
    am, ah = ci(accs); fm, fh = ci(f1s)
    summary = {
        "n_seeds": len(accs), "acc_mean": am, "acc_ci95": ah,
        "macro_f1_mean": fm, "macro_f1_ci95": fh,
        "locked_random_acc": LOCKED_RANDOM_ACC, "delta_acc": am - LOCKED_RANDOM_ACC,
        "seeds": a.seeds, "accs": accs, "f1s": f1s,
    }
    (OUT_DIR / "summary.json").write_text(json.dumps(summary, indent=1))
    print(f"\ngroup-holdout, LOCKED recipe, {len(accs)} seeds:")
    print(f"  acc      {am:6.2f} +/- {ah:4.2f}")
    print(f"  macro-F1 {fm:6.2f} +/- {fh:4.2f}")
    print(f"  vs locked random-split acc {LOCKED_RANDOM_ACC}: delta {am - LOCKED_RANDOM_ACC:+.2f}pp")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
