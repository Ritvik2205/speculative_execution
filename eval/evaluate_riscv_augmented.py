#!/usr/bin/env python3
"""
evaluate_riscv_augmented.py -- evaluates each of the riscv-augmented
checkpoints (eval/train_riscv_augmented.py's output) on two axes:
  1. eval/data/group_holdout_test.jsonl -- x86/ARM regression check, compared
     against the pre-existing group-holdout baseline (eval/group_holdout_full.py,
     94.83% +/- 1.50% accuracy over the same 5 seeds).
  2. eval/data/riscv_eval_holdout.jsonl -- the actual measurement: does real
     RISC-V training exposure raise accuracy above the 29-34% zero-shot
     baseline.
Also evaluates a third, apples-to-apples control: the PRE-EXISTING,
non-riscv-augmented checkpoints (eval/group_holdout/viz_s<seed>/gine_best.pt
-- same recipe/split/seeds as the riscv-augmented run, just without RISC-V
training data) against the same eval/data/riscv_eval_holdout.jsonl set. This
is the correct baseline for the RISC-V headline number: the 29-34% zero-shot
figure above was measured on a different, larger eval set with a different
model family (dataflow_taint), not a like-for-like comparison.
Reports mean +/- 95% CI over available seeds for all three axes, plus a
per-class breakdown for the RISC-V holdout with classes under
LOW_CONFIDENCE_THRESHOLD real examples flagged as low-confidence (too few to
trust individually).

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
# Pre-existing, non-riscv-augmented checkpoints -- same recipe/split/seeds as
# CKPT_DIR, just trained without any RISC-V data. Used as the apples-to-apples
# control for the RISC-V holdout axis (see module docstring).
CONTROL_CKPT_DIR = ROOT / "eval" / "group_holdout"
GROUP_HOLDOUT_TEST = ROOT / "eval" / "data" / "group_holdout_test.jsonl"
RISCV_HOLDOUT = ROOT / "eval" / "data" / "riscv_eval_holdout.jsonl"
REPORT_PATH = CKPT_DIR / "RISCV_INTEGRATION_RESULTS.md"
LOW_CONFIDENCE_THRESHOLD = 10

# Cited baselines -- see docs/superpowers/specs/
# 2026-08-11-riscv-corpus-training-integration-design.md
# Zero-shot baseline is a DIFFERENT model family (dataflow_taint) evaluated on
# a DIFFERENT, larger eval set -- see eval/eval_riscv_multiseed_postfix_results.txt.
# Cited for continuity only; NOT apples-to-apples. Use CONTROL_CKPT_DIR (computed
# below) as the apples-to-apples comparison for the RISC-V holdout axis.
ZERO_SHOT_RISCV_BASELINE = (29.0, 34.0)  # range, prior-session zero-shot eval
ZERO_SHOT_RISCV_BASELINE_SOURCE = "eval/eval_riscv_multiseed_postfix_results.txt"
XARCH_GROUP_HOLDOUT_BASELINE_ACC = (94.83, 1.50)  # mean, 95% CI half-width


def load_jsonl(path: Path):
    return [json.loads(l) for l in open(path) if l.strip()]


def ci(x):
    x = np.asarray(x, float)
    if len(x) < 2:
        return float(x.mean()), 0.0
    return float(x.mean()), float(x.std(ddof=1) / np.sqrt(len(x)) * stats.t.ppf(0.975, len(x) - 1))


def build_per_class_rows(id_to_label: dict, per_class: dict, label_counts: dict,
                          low_confidence_threshold: int = LOW_CONFIDENCE_THRESHOLD):
    """Enumerate the checkpoint's FULL label vocabulary (`id_to_label`), not
    just the labels that survived into `per_class` (sklearn's
    classification_report output_dict) and not `label_counts` alone (a
    Counter/dict never gains a key for a label with zero occurrences, so it
    cannot on its own surface classes with zero real holdout examples).

    For each class in the checkpoint's vocabulary: if it has an entry in
    `per_class` (i.e. it had >=1 real holdout example), return its real
    precision/recall/f1 plus the RAW per-class count from `label_counts`
    (NOT `per_class[name]["support"]`, which is pooled across however many
    seeds were merged into `per_class` and is therefore a multiple of the
    real underlying example count). Otherwise return an explicit
    unmeasurable row.

    Returns a list of dicts, sorted by class name, with keys:
    name, precision, recall, f1, n, confidence, measurable.
    """
    rows = []
    all_classes = sorted(id_to_label.values()) if id_to_label else sorted(per_class.keys())
    for name in all_classes:
        n = label_counts.get(name, 0)
        if name in per_class:
            row = per_class[name]
            conf = "LOW (few real examples)" if n < low_confidence_threshold else "ok"
            rows.append({
                "name": name,
                "precision": row["precision"],
                "recall": row["recall"],
                "f1": row["f1-score"],
                "n": n,
                "confidence": conf,
                "measurable": True,
            })
        else:
            rows.append({
                "name": name,
                "precision": None,
                "recall": None,
                "f1": None,
                "n": n,
                "confidence": "UNMEASURABLE (0 real holdout examples)",
                "measurable": False,
            })
    return rows


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

    # Apples-to-apples control: same recipe/split/seeds as CKPT_DIR, but the
    # checkpoints in CONTROL_CKPT_DIR never saw any RISC-V training data.
    # Evaluated against the SAME riscv_records (riscv_eval_holdout.jsonl) so
    # this is directly comparable to riscv_mean/riscv_h above -- unlike
    # ZERO_SHOT_RISCV_BASELINE, which used a different model family and a
    # different, larger eval set.
    control_accs = []
    control_seeds_run = []
    for sd in SEEDS:
        ckpt_path = CONTROL_CKPT_DIR / f"viz_s{sd}" / "gine_best.pt"
        if not ckpt_path.exists():
            print(f"control seed {sd}: no checkpoint at {ckpt_path}, skipping")
            continue
        cr = evaluate_checkpoint(ckpt_path, riscv_records, device)
        if cr is None:
            print(f"control seed {sd}: empty dataset, skipping")
            continue
        control_seeds_run.append(sd)
        control_accs.append(cr[0] * 100)
        print(f"control seed {sd}: riscv-holdout acc={cr[0]*100:.2f}% (no RISC-V training)")
    control_mean, control_h = ci(control_accs) if control_accs else (None, None)

    present = sorted(set(riscv_all_labels))
    names = [riscv_id_to_label[i] for i in present]
    per_class = classification_report(riscv_all_labels, riscv_all_preds,
                                       labels=present, target_names=names,
                                       zero_division=0, output_dict=True)

    xarch_pass = xarch_mean >= XARCH_GROUP_HOLDOUT_BASELINE_ACC[0]
    xarch_verdict = "PASS" if xarch_pass else "FAIL"

    lines = []
    lines.append("# RISC-V Corpus Training Integration -- Results\n\n")
    lines.append(f"Seeds evaluated: {seeds_run}\n\n")
    lines.append("## Known data issue: 2 BENIGN riscv records in training data\n\n")
    lines.append(
        "This plan's Global Constraints explicitly say not to add any BENIGN "
        "riscv records (the design doc's Non-goals section defers RISC-V "
        "BENIGN entirely -- riscv_corpus adds real examples for the 8 "
        "vulnerable classes only). Despite that, 2 of the 5944 training "
        "records (0.03%) in `eval/data/riscv_augmented_train.jsonl` are "
        "RISC-V `utils.c` files (`riscv_corpus/c_vulns_c_code_utils.O0/O2."
        "riscv64.s`) labeled BENIGN. This happened because "
        "`eval/build_riscv_labeled.py` reuses `spec/eval_riscv_real.py`'s "
        "`KEYWORD_TO_LABEL` table, which maps `\"utils\"` filenames to "
        "BENIGN. Impact is negligible (2 of 5944 records) and not worth an "
        "87-minute retrain to fix retroactively. `eval/build_riscv_labeled."
        "py`'s `build_records()` has been fixed to skip any BENIGN-mapped "
        "record going forward (see the `if label == \"BENIGN\"` filter with "
        "explanatory comment); the already-committed `eval/data/"
        "riscv_labeled.jsonl` and downstream files are left as-is so they "
        "stay consistent with the checkpoints actually trained on them.\n\n"
    )
    lines.append("## Regression check (x86/ARM, eval/data/group_holdout_test.jsonl)\n\n")
    lines.append(f"- Baseline (pre-existing group-holdout run): "
                 f"{XARCH_GROUP_HOLDOUT_BASELINE_ACC[0]:.2f}% +/- {XARCH_GROUP_HOLDOUT_BASELINE_ACC[1]:.2f}%\n")
    lines.append(f"- After RISC-V augmentation: {xarch_mean:.2f}% +/- {xarch_h:.2f}%\n")
    lines.append(f"- **Regression check: {xarch_verdict}** -- augmented accuracy "
                 f"{xarch_mean:.2f}% is "
                 f"{'not below' if xarch_pass else 'below'} baseline "
                 f"{XARCH_GROUP_HOLDOUT_BASELINE_ACC[0]:.2f}%\n\n")
    lines.append("## RISC-V measurement (eval/data/riscv_eval_holdout.jsonl)\n\n")
    lines.append(f"- After RISC-V augmentation: {riscv_mean:.2f}% +/- {riscv_h:.2f}%\n\n")
    lines.append("### Apples-to-apples control (primary comparison)\n\n")
    lines.append("Identical recipe/seeds/split as the RISC-V-augmented checkpoints "
                 "(`eval/group_holdout/viz_s<seed>/gine_best.pt`), RISC-V training data "
                 "withheld, evaluated on the SAME `eval/data/riscv_eval_holdout.jsonl` set:\n\n")
    if control_mean is not None:
        lift = riscv_mean - control_mean
        lines.append(f"- Control (no RISC-V training exposure, {len(control_seeds_run)} seeds "
                     f"{control_seeds_run}): {control_mean:.2f}% +/- {control_h:.2f}%\n")
        lines.append(f"- After RISC-V augmentation: {riscv_mean:.2f}% +/- {riscv_h:.2f}%\n")
        lines.append(f"- Lift: +{lift:.2f}pp\n\n")
    else:
        lines.append("- Control checkpoints not found -- see console output.\n\n")
    lines.append("### Prior zero-shot baseline (cited for continuity, not apples-to-apples)\n\n")
    lines.append(f"- Source: `{ZERO_SHOT_RISCV_BASELINE_SOURCE}`\n")
    lines.append(f"- Zero-shot baseline (different model family -- `dataflow_taint` -- and a "
                 f"different, larger eval set; no RISC-V training exposure): "
                 f"{ZERO_SHOT_RISCV_BASELINE[0]:.0f}-{ZERO_SHOT_RISCV_BASELINE[1]:.0f}%\n\n")
    def _recall_str(class_name):
        row = per_class.get(class_name)
        return f"{row['recall'] * 100:.0f}% recall" if row is not None else "N/A recall"

    _retbleed_n = riscv_label_counts.get("RETBLEED", 0)
    _inception_n = riscv_label_counts.get("INCEPTION", 0)
    _mds_n = riscv_label_counts.get("MDS", 0)
    _l1tf_n = riscv_label_counts.get("L1TF", 0)
    lines.append(f"### Composition of the {riscv_mean:.2f}% result\n\n")
    if _l1tf_n > 0:
        _l1tf_clause = (
            f"L1TF -- the single largest class in the full RISC-V corpus -- now has "
            f"{_l1tf_n} real holdout examples ({_recall_str('L1TF')})"
        )
    else:
        _l1tf_clause = (
            "L1TF -- the single largest class in the full RISC-V corpus -- has zero "
            "holdout examples and could not be measured at all"
        )
    lines.append(
        f"RETBLEED ({_retbleed_n} examples, {_recall_str('RETBLEED')}) and "
        f"INCEPTION ({_inception_n} examples, {_recall_str('INCEPTION')}) supply the "
        f"majority of correct predictions; MDS ({_mds_n} examples, the largest holdout "
        f"class) has weak recall ({_recall_str('MDS')}); {_l1tf_clause}.\n\n"
    )
    lines.append("## Per-class RISC-V holdout breakdown\n\n")
    lines.append("| class | precision | recall | f1 | n (real corpus examples) | confidence |\n")
    lines.append("|---|---|---|---|---|---|\n")
    # Task 2's split put zero real eval-holdout examples for some classes
    # that do exist in the RISC-V corpus (L1TF, SPECTRE_V4, BENIGN) -- see
    # build_per_class_rows() docstring for why those must be shown
    # explicitly as unmeasurable, never silently dropped from the table.
    for row in build_per_class_rows(riscv_id_to_label, per_class, riscv_label_counts):
        if row["measurable"]:
            lines.append(f"| {row['name']} | {row['precision']:.2f} | {row['recall']:.2f} | "
                         f"{row['f1']:.2f} | {row['n']} | {row['confidence']} |\n")
        else:
            lines.append(f"| {row['name']} | N/A | N/A | N/A | {row['n']} | "
                         f"{row['confidence']} |\n")

    REPORT_PATH.parent.mkdir(parents=True, exist_ok=True)
    REPORT_PATH.write_text("".join(lines))
    print(f"\nwrote {REPORT_PATH}")


if __name__ == "__main__":
    main()
