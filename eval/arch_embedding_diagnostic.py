#!/usr/bin/env python3
"""arch_embedding_diagnostic.py — is the untrained arch-embedding row the RISC-V
bottleneck, or is it the graph features?

The model concatenates an 8-dim architecture embedding into its fusion vector
(gine_classifier_v38.py:311). ARCH_VOCAB maps riscv64 -> row 3, but v54's training
pool contains ZERO riscv64 records, so row 3 never received a gradient: at
inference the model injects that row's random initialization as noise. This asks
whether removing that noise changes RISC-V predictions at all.

Conditions, all on the SAME graphs, no retraining:
  as-is        arch_id = riscv64 (row 3, random/untrained)
  as-x86       arch_id = x86_64  (row 0, trained)
  as-arm       arch_id = arm64   (row 1, trained)
  averaged     row 3 overwritten with mean(row0,row1) — the principled fix for an
               unseen ISA: a neutral prior instead of noise
  zeroed       row 3 overwritten with zeros — ablate the arch signal entirely

Interpretation. If a trained/averaged/zeroed row moves accuracy materially, the
untrained embedding is a real bottleneck and the fix is architectural (give unseen
archs a neutral embedding). If nothing moves, the failure is in the graph/feature
representation (the H3 graph-size domain shift), and the arch row is a red herring.

Run:  python3 eval/arch_embedding_diagnostic.py --records-jsonl <file>
"""
from __future__ import annotations

import argparse
import json
import sys
from collections import Counter
from pathlib import Path

import torch

ROOT = Path(__file__).resolve().parent.parent
sys.path.insert(0, str(ROOT / "v54"))
sys.path.insert(0, str(ROOT / "spec"))

from train_gine_v38 import GINEDatasetV47, collate_fn      # noqa: E402
from gine_classifier_v38 import GINEClassifier, ARCH_VOCAB  # noqa: E402
from pdg_builder import NUM_EDGE_TYPES                       # noqa: E402

CKPT = ROOT / "v54" / "viz_v54_spec" / "gine_best.pt"


def run(model, loader, device, id_to_label, arch_override=None):
    model.eval()
    preds, labels = [], []
    with torch.no_grad():
        for batch in loader:
            arch_id = batch["arch_id"].to(device)
            if arch_override is not None:
                arch_id = torch.full_like(arch_id, arch_override)
            out = model(
                batch["node_features"].to(device),
                batch["edge_index"].to(device),
                batch["edge_type"].to(device),
                batch["node_mask"].to(device),
                batch["handcrafted"].to(device),
                batch["global_features"].to(device),
                arch_id,
            )
            logits = out[0] if isinstance(out, (tuple, list)) else out
            p = logits.argmax(-1).cpu().tolist()
            preds += p
            labels += batch["label"].cpu().tolist()
    acc = sum(int(a == b) for a, b in zip(preds, labels)) / len(labels)
    dist = Counter(id_to_label[x] for x in preds)
    return acc, dist


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--records-jsonl", required=True)
    args = ap.parse_args()
    device = "cpu"

    records = [json.loads(l) for l in open(args.records_jsonl) if l.strip()]
    ckpt = torch.load(CKPT, map_location=device, weights_only=False)
    l2i = ckpt["label_to_id"]; a = ckpt["args"]
    i2l = {i: l for l, i in l2i.items()}
    records = [r for r in records if r["label"] in l2i]

    ds = GINEDatasetV47(records, l2i, ckpt["feature_names"],
                        speculative_window=a["speculative_window"],
                        strip_bp=not a["no_strip"],
                        node_feature_mode=a["node_feature_mode"],
                        use_spec_builder=a["use_spec_builder"])
    loader = torch.utils.data.DataLoader(ds, batch_size=32, shuffle=False,
                                         collate_fn=collate_fn)
    model = GINEClassifier(
        node_feat_dim=ds.node_feature_dim, num_edge_types=NUM_EDGE_TYPES,
        hidden_dim=a["hidden_dim"], num_layers=a["num_layers"],
        num_classes=len(l2i), handcrafted_dim=max(len(ckpt["feature_names"]), 1),
        global_feat_dim=5, arch_emb_dim=a["arch_emb_dim"], dropout=a["dropout"],
        use_virtual_node=not a["no_virtual_node"], jk_mode=a["jk_mode"]).to(device)
    model.load_state_dict(ckpt["model_state_dict"])

    n = len(ds)
    print(f"records evaluated: {n}   file: {args.records_jsonl}")
    print(f"true class mix: {dict(Counter(i2l[r] for r in [l2i[x['label']] for x in records]))}\n")
    print(f"{'condition':12s} {'arch row':22s} {'accuracy':>9s}   prediction distribution")
    print("-" * 96)

    conds = [
        ("as-is", ARCH_VOCAB["riscv64"], "riscv64 (untrained, random)"),
        ("as-x86", ARCH_VOCAB["x86_64"], "x86_64 (trained)"),
        ("as-arm", ARCH_VOCAB["arm64"], "arm64 (trained)"),
    ]
    for name, aid, desc in conds:
        acc, dist = run(model, loader, device, i2l, arch_override=aid)
        print(f"{name:12s} {desc:22s} {acc*100:8.2f}%   {dict(dist)}")

    # averaged and zeroed: patch the embedding weight, keep arch_id=riscv64
    riscv = ARCH_VOCAB["riscv64"]
    orig = model.arch_embedding.weight.data.clone()
    model.arch_embedding.weight.data[riscv] = 0.5 * (
        orig[ARCH_VOCAB["x86_64"]] + orig[ARCH_VOCAB["arm64"]])
    acc, dist = run(model, loader, device, i2l, arch_override=riscv)
    print(f"{'averaged':12s} {'mean(x86,arm) -> row3':22s} {acc*100:8.2f}%   {dict(dist)}")
    model.arch_embedding.weight.data[riscv] = 0.0
    acc, dist = run(model, loader, device, i2l, arch_override=riscv)
    print(f"{'zeroed':12s} {'zeros -> row3':22s} {acc*100:8.2f}%   {dict(dist)}")
    model.arch_embedding.weight.data.copy_(orig)

    print("\nRead: if 'averaged'/'zeroed'/'as-x86' beat 'as-is' materially, the "
          "untrained\narch row is a real bottleneck and the fix is architectural. "
          "If all rows tie,\nthe failure is in the graph/feature representation "
          "(H3 size shift), not the arch\nembedding.")


if __name__ == "__main__":
    main()
