#!/usr/bin/env python3
"""rewindow_riscv_eval.py — does matching the test window size to the training
window size recover RISC-V accuracy? (H3 graph-size domain shift, no retraining.)

Diagnosis (eval/... size census): v54 trains on windows of ~24-28 instructions
(p90 <=47), but the harvested RISC-V functions are 40-1927 instructions. The model
sees all of them (graphs pad to 256 with a node_mask; speculative_window is only
the speculation-edge decay horizon, not a truncation), so it is asked to classify
graphs 2-10x larger than anything in training.

This slides a training-sized window over each RISC-V function, classifies every
window, and aggregates to a function-level verdict, testing whether the size shift
-- not the ISA -- is what breaks it. It is also a real deployment recipe: scan a
new-ISA function the way the training data was constructed.

Aggregation:
  attack sets  a function is CAUGHT if ANY window predicts its true attack class
               (a gadget need only be visible in one window)
  benign set   a function is a FALSE POSITIVE if ANY window predicts any attack
               class (strict: any alarm anywhere is an alarm) -- so this REPORTS
               the harder number, and also the per-window FP rate for context

Run: python3 eval/rewindow_riscv_eval.py --records-jsonl <f> --window 32 --stride 16
"""
from __future__ import annotations

import argparse
import json
import sys
from collections import Counter, defaultdict
from pathlib import Path

import torch

ROOT = Path(__file__).resolve().parent.parent
sys.path.insert(0, str(ROOT / "v54"))
sys.path.insert(0, str(ROOT / "spec"))

from train_gine_v38 import GINEDatasetV47, collate_fn      # noqa: E402
from gine_classifier_v38 import GINEClassifier             # noqa: E402
from pdg_builder import NUM_EDGE_TYPES                      # noqa: E402

CKPT = ROOT / "v54" / "viz_v54_spec" / "gine_best.pt"


def is_instr(l):
    s = l.strip()
    return bool(s) and not s.startswith(".") and not s.endswith(":")


def windows(seq, w, stride):
    instrs = [l for l in seq if is_instr(l)]
    if len(instrs) <= w:
        return [instrs]
    out = []
    i = 0
    while i < len(instrs):
        out.append(instrs[i:i + w])
        if i + w >= len(instrs):
            break
        i += stride
    return out


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--records-jsonl", required=True)
    ap.add_argument("--window", type=int, default=32)
    ap.add_argument("--stride", type=int, default=16)
    ap.add_argument("--min-alarms", type=int, default=1,
                    help="windows that must predict an attack before the function is flagged")
    args = ap.parse_args()
    device = "cpu"

    src = [json.loads(l) for l in open(args.records_jsonl) if l.strip()]
    ckpt = torch.load(CKPT, map_location=device, weights_only=False)
    l2i = ckpt["label_to_id"]; a = ckpt["args"]
    i2l = {i: l for l, i in l2i.items()}
    src = [r for r in src if r["label"] in l2i]

    # explode into windows, remembering the parent
    wrecs, parent = [], []
    for pi, r in enumerate(src):
        for wi, chunk in enumerate(windows(r["sequence"], args.window, args.stride)):
            if len(chunk) < 4:
                continue
            wrecs.append({"label": r["label"], "sequence": chunk,
                          "arch": "riscv64", "group": f'{r.get("group","")}#{wi}'})
            parent.append(pi)

    ds = GINEDatasetV47(wrecs, l2i, ckpt["feature_names"],
                        speculative_window=a["speculative_window"],
                        strip_bp=not a["no_strip"],
                        node_feature_mode=a["node_feature_mode"],
                        use_spec_builder=a["use_spec_builder"])
    loader = torch.utils.data.DataLoader(ds, batch_size=64, shuffle=False,
                                         collate_fn=collate_fn)
    model = GINEClassifier(
        node_feat_dim=ds.node_feature_dim, num_edge_types=NUM_EDGE_TYPES,
        hidden_dim=a["hidden_dim"], num_layers=a["num_layers"],
        num_classes=len(l2i), handcrafted_dim=max(len(ckpt["feature_names"]), 1),
        global_feat_dim=5, arch_emb_dim=a["arch_emb_dim"], dropout=a["dropout"],
        use_virtual_node=not a["no_virtual_node"], jk_mode=a["jk_mode"]).to(device)
    model.load_state_dict(ckpt["model_state_dict"]); model.eval()

    win_pred = []
    with torch.no_grad():
        for batch in loader:
            out = model(batch["node_features"].to(device),
                        batch["edge_index"].to(device),
                        batch["edge_type"].to(device),
                        batch["node_mask"].to(device),
                        batch["handcrafted"].to(device),
                        batch["global_features"].to(device),
                        batch["arch_id"].to(device))
            logits = out[0] if isinstance(out, (tuple, list)) else out
            win_pred += logits.argmax(-1).cpu().tolist()

    # per-parent aggregation
    by_parent = defaultdict(list)
    for p, pred in zip(parent, win_pred):
        by_parent[p].append(i2l[pred])
    BENIGN = "BENIGN"
    is_benign_set = all(r["label"] == BENIGN for r in src)

    caught = fp = 0
    win_dist = Counter(i2l[p] for p in win_pred)
    for pi, r in enumerate(src):
        preds = by_parent.get(pi, [])
        if not preds:
            continue
        if is_benign_set:
            if sum(1 for p in preds if p != BENIGN) >= args.min_alarms:
                fp += 1
        else:
            if sum(1 for p in preds if p == r["label"]) >= args.min_alarms:
                caught += 1

    n = len({p for p in parent})
    print(f"file: {args.records_jsonl}")
    print(f"functions: {len(src)}   windows: {len(wrecs)} "
          f"(w={args.window}, stride={args.stride})")
    print(f"per-window prediction mix: {dict(win_dist)}")
    if is_benign_set:
        fp_rate = fp / len(src)
        win_fp = sum(1 for p in win_pred if i2l[p] != BENIGN) / len(win_pred)
        print(f"\nBENIGN false-positive rate (function flagged if ANY window "
              f"alarms): {fp}/{len(src)} = {100*fp_rate:.1f}%")
        print(f"per-window FP rate: {100*win_fp:.1f}%")
    else:
        print(f"\nattack recall (CAUGHT if ANY window predicts true class): "
              f"{caught}/{len(src)} = {100*caught/len(src):.1f}%")


if __name__ == "__main__":
    main()
