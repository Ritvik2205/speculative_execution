#!/usr/bin/env python3
"""eval/robustness_suite.py — Task 1.3 (W1) robustness-evaluation suite.

Scores a trained GINE checkpoint (v54/train_gine_v38.py stack) across four
conditions and reports the scoreboard later workstreams (W2/W3) are measured
against:

  locked          — the held-out test set, unmodified.
  trigger_masked  — literal vulnerability-trigger mnemonics (verw, clflush,
                     rdtsc, lfence, ...) replaced with a benign equivalent
                     (eval/neutralize_triggers.py, Task 1.1). If the model is
                     mostly keying off these tokens rather than real dataflow
                     structure, macro-F1 collapses here.
  arch=x86_64     — locked test set restricted to one ISA (checks D4:
  arch=arm64        does the model's benign false-positive rate differ across
                     architectures?).

Metrics: macro_f1 and per_class_recall from sklearn's classification_report;
benign_fp_rate = fraction of true-BENIGN samples predicted as any non-BENIGN
class (within the arch_filter, if given); ece = expected_calibration_error
(eval/calibration.py, Task 1.2) over the softmax'd class probabilities.

Usage:
    python3 eval/robustness_suite.py --ckpt v54/viz_v54_spec/gine_best.pt \
        --test v54/data/v54_test.jsonl
"""
from __future__ import annotations

import argparse
import json
import sys
from pathlib import Path
from typing import Dict, List, Optional

import numpy as np
import torch
from sklearn.metrics import classification_report

ROOT = Path(__file__).resolve().parent.parent
sys.path.insert(0, str(ROOT))  # so `import eval.*` resolves when run as a script
sys.path.insert(0, str(ROOT / "v54"))
sys.path.insert(0, str(ROOT / "spec"))

from train_gine_v38 import GINEDatasetV47, collate_fn  # noqa: E402
from gine_classifier_v38 import GINEClassifier  # noqa: E402
from pdg_builder import NUM_EDGE_TYPES  # noqa: E402

from eval.neutralize_triggers import neutralize_triggers  # noqa: E402
from eval.calibration import expected_calibration_error  # noqa: E402

# Frozen recipe defaults (see task-1-brief.md) — used only when a checkpoint's
# saved `args` dict is missing a key (older checkpoints predating an argparse
# flag). Every checkpoint currently shipped saves all of these.
_DEFAULTS = dict(
    hidden_dim=128, num_layers=3, jk_mode="cat", arch_emb_dim=8, dropout=0.5,
    no_virtual_node=False, node_feature_mode="hand", use_spec_builder=False,
    speculative_window=20, no_strip=False,
)
_GLOBAL_FEAT_DIM = 5
_NODE_BASE_DIM, _NODE_POS_DIM = 40, 1


def _apply_perturbation(records: List[Dict], name: Optional[str]) -> List[Dict]:
    """Return `records` with `sequence` transformed per condition `name`.

    "trigger_masked" -> neutralize_triggers(seq, "mask") on every record.
    "locked" / None   -> unchanged (arch conditions filter records elsewhere;
                          they do not perturb sequences).
    """
    if name == "trigger_masked":
        out = []
        for rec in records:
            rec2 = dict(rec)
            rec2["sequence"] = neutralize_triggers(rec.get("sequence", []), "mask")
            out.append(rec2)
        return out
    return records


def _load_records(path: str) -> List[Dict]:
    records = []
    with open(path) as f:
        for line in f:
            if line.strip():
                records.append(json.loads(line))
    return records


def _build_model(ckpt: Dict, device: torch.device):
    label_to_id = ckpt["label_to_id"]
    feature_names = ckpt["feature_names"]
    a = dict(_DEFAULTS)
    a.update(ckpt.get("args") or {})

    node_feature_mode = a["node_feature_mode"]
    if node_feature_mode != "hand":
        raise ValueError(
            f"robustness_suite currently only supports node_feature_mode='hand' "
            f"checkpoints (learned/both require the MLM encoder); got "
            f"{node_feature_mode!r}"
        )
    node_feat_dim = _NODE_BASE_DIM + _NODE_POS_DIM

    model = GINEClassifier(
        node_feat_dim=node_feat_dim,
        num_edge_types=NUM_EDGE_TYPES,
        hidden_dim=a["hidden_dim"],
        num_layers=a["num_layers"],
        num_classes=len(label_to_id),
        handcrafted_dim=max(len(feature_names), 1),
        global_feat_dim=_GLOBAL_FEAT_DIM,
        arch_emb_dim=a["arch_emb_dim"],
        dropout=a["dropout"],
        use_virtual_node=not a["no_virtual_node"],
        jk_mode=a["jk_mode"],
    ).to(device)
    model.load_state_dict(ckpt["model_state_dict"])
    model.eval()

    ds_kwargs = dict(
        speculative_window=a["speculative_window"],
        strip_bp=not a["no_strip"],
        node_feature_mode=node_feature_mode,
        use_spec_builder=a["use_spec_builder"],
    )
    return model, label_to_id, feature_names, ds_kwargs


@torch.no_grad()
def _eval_probs(model, loader, device):
    """Mirror train_gine_v38.evaluate()'s batching, but also return softmax
    probabilities (needed for ECE) rather than just argmax predictions."""
    all_probs, all_preds, all_labels = [], [], []
    for batch in loader:
        logits = model(
            batch["node_features"].to(device),
            batch["edge_index"].to(device),
            batch["edge_type"].to(device),
            batch["node_mask"].to(device),
            batch["handcrafted"].to(device),
            batch["global_features"].to(device),
            batch["arch_id"].to(device),
            edge_mask=batch["edge_mask"].to(device),
            edge_weight=batch["edge_weight"].to(device),
        )
        probs = torch.softmax(logits, dim=-1)
        preds = probs.argmax(dim=-1)
        all_probs.append(probs.cpu().numpy())
        all_preds.extend(preds.cpu().tolist())
        all_labels.extend(batch["label"].cpu().tolist())
    if all_probs:
        probs = np.concatenate(all_probs, axis=0)
    else:
        probs = np.zeros((0, 1), dtype=np.float32)
    return probs, np.array(all_preds), np.array(all_labels)


def evaluate_checkpoint(
    ckpt_path: str,
    test_jsonl: str,
    perturb: Optional[str] = None,
    arch_filter: Optional[str] = None,
) -> Dict:
    """Score one checkpoint under one condition.

    Returns {macro_f1, per_class_recall (dict), benign_fp_rate, ece}.
    """
    device = torch.device("cpu")
    ckpt = torch.load(ckpt_path, map_location=device, weights_only=False)
    model, label_to_id, feature_names, ds_kwargs = _build_model(ckpt, device)
    id_to_label = {v: k for k, v in label_to_id.items()}

    records = _load_records(test_jsonl)
    records = [r for r in records if r.get("label") in label_to_id]
    if arch_filter is not None:
        records = [r for r in records if r.get("arch") == arch_filter]
    records = _apply_perturbation(records, perturb)

    empty = {"macro_f1": float("nan"), "per_class_recall": {},
             "benign_fp_rate": float("nan"), "ece": float("nan")}
    if not records:
        return empty

    dataset = GINEDatasetV47(records, label_to_id, feature_names, **ds_kwargs)
    if len(dataset) == 0:
        return empty
    loader = torch.utils.data.DataLoader(
        dataset, batch_size=32, shuffle=False, collate_fn=collate_fn
    )
    probs, preds, labels = _eval_probs(model, loader, device)

    present_ids = sorted(set(labels.tolist()) | set(preds.tolist()))
    target_names = [id_to_label[i] for i in present_ids]
    report = classification_report(
        labels, preds, labels=present_ids, target_names=target_names,
        output_dict=True, zero_division=0,
    )
    macro_f1 = report["macro avg"]["f1-score"]
    per_class_recall = {name: report[name]["recall"] for name in target_names}

    benign_id = label_to_id.get("BENIGN")
    if benign_id is not None and (labels == benign_id).sum() > 0:
        mask = labels == benign_id
        benign_fp_rate = float((preds[mask] != benign_id).mean())
    else:
        benign_fp_rate = float("nan")

    ece = expected_calibration_error(probs, labels)

    return {
        "macro_f1": macro_f1,
        "per_class_recall": per_class_recall,
        "benign_fp_rate": benign_fp_rate,
        "ece": ece,
    }


def _print_table(rows: List[tuple]):
    header = f"{'condition':16s} {'macro_f1':>10s} {'benign_fp':>10s} {'ece':>8s}"
    print(header)
    print("-" * len(header))
    for name, metrics in rows:
        mf1 = metrics["macro_f1"]
        fp = metrics["benign_fp_rate"]
        ece = metrics["ece"]
        mf1_s = f"{mf1:.4f}" if mf1 == mf1 else "nan"
        fp_s = f"{fp:.4f}" if fp == fp else "nan"
        ece_s = f"{ece:.4f}" if ece == ece else "nan"
        print(f"{name:16s} {mf1_s:>10s} {fp_s:>10s} {ece_s:>8s}")
    print()
    for name, metrics in rows:
        print(f"per-class recall [{name}]:")
        for cls, recall in sorted(metrics["per_class_recall"].items()):
            print(f"  {cls:28s} {recall:.4f}")
        print()


def main():
    ap = argparse.ArgumentParser(description=__doc__)
    ap.add_argument("--ckpt", required=True)
    ap.add_argument("--test", required=True)
    args = ap.parse_args()

    conditions = [
        ("locked", None, None),
        ("trigger_masked", "trigger_masked", None),
        ("arch=x86_64", None, "x86_64"),
        ("arch=arm64", None, "arm64"),
    ]
    rows = []
    for name, perturb, arch_filter in conditions:
        metrics = evaluate_checkpoint(args.ckpt, args.test, perturb=perturb,
                                       arch_filter=arch_filter)
        rows.append((name, metrics))

    print(f"ckpt: {args.ckpt}")
    print(f"test: {args.test}\n")
    _print_table(rows)


if __name__ == "__main__":
    main()
