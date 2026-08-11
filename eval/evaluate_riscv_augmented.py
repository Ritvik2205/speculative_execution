#!/usr/bin/env python3
"""
evaluate_riscv_augmented.py -- evaluates each of the riscv-augmented
checkpoints (eval/train_riscv_augmented.py's output) on two axes:
  1. eval/data/group_holdout_test.jsonl -- x86/ARM regression check, compared
     against the pre-existing group-holdout baseline (eval/group_holdout_full.py,
     94.83% +/- 1.50% accuracy / 89.67% +/- 2.84% macro-F1 over the same 5 seeds).
  2. eval/data/riscv_eval_holdout.jsonl -- the actual measurement: does real
     RISC-V training exposure raise accuracy above the 29-34% zero-shot
     baseline.
Reports mean +/- 95% CI over available seeds for both axes, plus a per-class
breakdown for the RISC-V holdout with classes under LOW_CONFIDENCE_THRESHOLD
real examples flagged as low-confidence (too few to trust individually).

NOTE (deviation from the original brief, corrected before dispatch): Task 2's
77/23 group-holdout split of the RISC-V corpus put ZERO real eval-holdout
examples for 3 classes that DO have real corpus examples (L1TF, SPECTRE_V4,
BENIGN -- see Task 2's review; a hypergeometric consequence of few groups per
class, not a bug). The per-class table below must not silently omit those
classes.

IMPORTANT correction to the brief's literal recipe: a naive fix that iterates
over `Counter(r["label"] for r in riscv_records)` (the raw eval-holdout file)
does NOT work, because a `Counter` never gains a key for a label with zero
occurrences -- L1TF/SPECTRE_V4/BENIGN have zero rows in
riscv_eval_holdout.jsonl, so they'd never become keys in that Counter either,
and the "missing class" bug would silently persist under a different guise.
Verified empirically: running that version produced a 6-row table (only the
classes that *do* have real examples), still omitting the 3 classes this fix
exists to surface.

The actual fix enumerates over the checkpoint's full label vocabulary
(`id_to_label`, confirmed identical -- the same 10 classes -- across all 5
seed checkpoints) rather than anything derived from the eval file. For each
of the checkpoint's classes: if it has entries in `classification_report`'s
output (i.e. it had >=1 real holdout example), report the real
precision/recall/f1/n. Otherwise it gets an explicit "N/A" row with
confidence="UNMEASURABLE (0 real holdout examples)". This also correctly
surfaces SPECTRE_V1 (which has zero examples anywhere in the RISC-V corpus,
not just the eval split -- a separate, pre-existing gap) as unmeasurable,
which is strictly more honest than omitting it.

Run:  python3 eval/evaluate_riscv_augmented.py
Output: eval/group_holdout_riscv/RISCV_INTEGRATION_RESULTS.md
"""
from __future__ import annotations

import json
import sys
from collections import Counter
from pathlib import Path

import numpy as np
import torch
from scipy import stats
from sklearn.metrics import classification_report

ROOT = Path(__file__).resolve().parent.parent
sys.path.insert(0, str(ROOT / "v54"))

from train_gine_v38 import GINEDatasetV47, collate_fn, evaluate, select_device  # noqa: E402
from gine_classifier_v38 import GINEClassifier  # noqa: E402
from pdg_builder import NUM_EDGE_TYPES  # noqa: E402

SEEDS = [42, 1, 7, 13, 21]
CKPT_DIR = ROOT / "eval" / "group_holdout_riscv"
GROUP_HOLDOUT_TEST = ROOT / "eval" / "data" / "group_holdout_test.jsonl"
RISCV_HOLDOUT = ROOT / "eval" / "data" / "riscv_eval_holdout.jsonl"
REPORT_PATH = CKPT_DIR / "RISCV_INTEGRATION_RESULTS.md"
LOW_CONFIDENCE_THRESHOLD = 10

# Cited baselines -- see docs/superpowers/specs/
# 2026-08-11-riscv-corpus-training-integration-design.md
ZERO_SHOT_RISCV_BASELINE = (29.0, 34.0)  # range, prior-session zero-shot eval
XARCH_GROUP_HOLDOUT_BASELINE_ACC = (94.83, 1.50)  # mean, 95% CI half-width


def load_jsonl(path: Path):
    return [json.loads(l) for l in open(path) if l.strip()]


def ci(x):
    x = np.asarray(x, float)
    if len(x) < 2:
        return float(x.mean()), 0.0
    return float(x.mean()), float(x.std(ddof=1) / np.sqrt(len(x)) * stats.t.ppf(0.975, len(x) - 1))


def evaluate_checkpoint(ckpt_path: Path, records: list, device):
    ckpt = torch.load(ckpt_path, map_location=device, weights_only=False)
    label_to_id = ckpt["label_to_id"]
    feature_names = ckpt["feature_names"]
    ckpt_args = ckpt["args"]
    id_to_label = {i: l for l, i in label_to_id.items()}

    filtered = [r for r in records if r["label"] in label_to_id]

    dataset = GINEDatasetV47(
        filtered, label_to_id, feature_names,
        speculative_window=ckpt_args["speculative_window"],
        strip_bp=not ckpt_args["no_strip"],
        node_feature_mode=ckpt_args["node_feature_mode"],
        use_spec_builder=ckpt_args["use_spec_builder"],
    )
    if len(dataset) == 0:
        return None

    loader = torch.utils.data.DataLoader(dataset, batch_size=32, shuffle=False,
                                          collate_fn=collate_fn, num_workers=0)
    model = GINEClassifier(
        node_feat_dim=dataset.node_feature_dim,
        num_edge_types=NUM_EDGE_TYPES,
        hidden_dim=ckpt_args["hidden_dim"],
        num_layers=ckpt_args["num_layers"],
        num_classes=len(label_to_id),
        handcrafted_dim=max(len(feature_names), 1),
        global_feat_dim=5,
        arch_emb_dim=ckpt_args["arch_emb_dim"],
        dropout=ckpt_args["dropout"],
        use_virtual_node=not ckpt_args["no_virtual_node"],
        jk_mode=ckpt_args["jk_mode"],
    ).to(device)
    model.load_state_dict(ckpt["model_state_dict"])

    acc, preds, labels = evaluate(model, loader, device, desc=ckpt_path.parent.name)
    return acc, preds, labels, id_to_label


def main():
    device = select_device()
    xarch_records = load_jsonl(GROUP_HOLDOUT_TEST)
    riscv_records = load_jsonl(RISCV_HOLDOUT)
    riscv_label_counts = Counter(r["label"] for r in riscv_records)

    xarch_accs, riscv_accs = [], []
    riscv_all_preds, riscv_all_labels, riscv_id_to_label = [], [], None
    seeds_run = []

    for sd in SEEDS:
        ckpt_path = CKPT_DIR / f"viz_s{sd}" / "gine_best.pt"
        if not ckpt_path.exists():
            print(f"seed {sd}: no checkpoint at {ckpt_path}, skipping")
            continue

        xr = evaluate_checkpoint(ckpt_path, xarch_records, device)
        rr = evaluate_checkpoint(ckpt_path, riscv_records, device)
        if xr is None or rr is None:
            print(f"seed {sd}: empty dataset on one axis, skipping")
            continue

        seeds_run.append(sd)
        xarch_accs.append(xr[0] * 100)
        riscv_accs.append(rr[0] * 100)
        riscv_all_preds.extend(rr[1])
        riscv_all_labels.extend(rr[2])
        riscv_id_to_label = rr[3]
        print(f"seed {sd}: x86/ARM acc={xr[0]*100:.2f}%  riscv-holdout acc={rr[0]*100:.2f}%")

    if not seeds_run:
        print("no successful seed evaluations")
        sys.exit(1)

    xarch_mean, xarch_h = ci(xarch_accs)
    riscv_mean, riscv_h = ci(riscv_accs)

    present = sorted(set(riscv_all_labels))
    names = [riscv_id_to_label[i] for i in present]
    per_class = classification_report(riscv_all_labels, riscv_all_preds,
                                       labels=present, target_names=names,
                                       zero_division=0, output_dict=True)

    lines = []
    lines.append("# RISC-V Corpus Training Integration -- Results\n\n")
    lines.append(f"Seeds evaluated: {seeds_run}\n\n")
    lines.append("## Regression check (x86/ARM, eval/data/group_holdout_test.jsonl)\n\n")
    lines.append(f"- Baseline (pre-existing group-holdout run): "
                 f"{XARCH_GROUP_HOLDOUT_BASELINE_ACC[0]:.2f}% +/- {XARCH_GROUP_HOLDOUT_BASELINE_ACC[1]:.2f}%\n")
    lines.append(f"- After RISC-V augmentation: {xarch_mean:.2f}% +/- {xarch_h:.2f}%\n\n")
    lines.append("## RISC-V measurement (eval/data/riscv_eval_holdout.jsonl)\n\n")
    lines.append(f"- Zero-shot baseline (prior session, no RISC-V training exposure): "
                 f"{ZERO_SHOT_RISCV_BASELINE[0]:.0f}-{ZERO_SHOT_RISCV_BASELINE[1]:.0f}%\n")
    lines.append(f"- After RISC-V augmentation: {riscv_mean:.2f}% +/- {riscv_h:.2f}%\n\n")
    lines.append("## Per-class RISC-V holdout breakdown\n\n")
    lines.append("| class | precision | recall | f1 | n (real examples) | confidence |\n")
    lines.append("|---|---|---|---|---|---|\n")
    # NOTE: iterate over the checkpoint's FULL label vocabulary
    # (riscv_id_to_label), not `names` (only the labels that survived into
    # classification_report) and not Counter(riscv_label_counts) alone (a
    # Counter never has a key for a label with zero occurrences, so it
    # cannot surface classes with zero real holdout examples -- verified
    # empirically that using it still silently dropped L1TF/SPECTRE_V4/
    # BENIGN). Task 2's split put zero real eval-holdout examples for some
    # classes that do exist in the RISC-V corpus (L1TF, SPECTRE_V4, BENIGN)
    # -- those must be shown explicitly as unmeasurable, never silently
    # dropped from the table.
    all_classes = sorted(riscv_id_to_label.values()) if riscv_id_to_label else names
    for name in all_classes:
        n_corpus = riscv_label_counts.get(name, 0)
        if name in per_class:
            row = per_class[name]
            n = int(row["support"])
            conf = "LOW (few real examples)" if n_corpus < LOW_CONFIDENCE_THRESHOLD else "ok"
            lines.append(f"| {name} | {row['precision']:.2f} | {row['recall']:.2f} | "
                         f"{row['f1-score']:.2f} | {n} | {conf} |\n")
        else:
            lines.append(f"| {name} | N/A | N/A | N/A | 0 | "
                         f"UNMEASURABLE (0 real holdout examples) |\n")

    REPORT_PATH.parent.mkdir(parents=True, exist_ok=True)
    REPORT_PATH.write_text("".join(lines))
    print(f"\nwrote {REPORT_PATH}")


if __name__ == "__main__":
    main()
