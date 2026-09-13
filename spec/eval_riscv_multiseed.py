#!/usr/bin/env python3
"""
eval_riscv_multiseed.py — score all 5 dataflow_taint multi-seed checkpoints
zero-shot on RISC-V, for an honest mean±CI instead of one noisy snapshot
(single-seed RISC-V numbers have already shown large swings unrelated to any
real change this session — see SPECDISCOVER_VERIFICATION_GAPS.md).

Run:  python3 spec/eval_riscv_multiseed.py
"""
import json
import sys
from pathlib import Path

import numpy as np
import torch
from scipy import stats

ROOT = Path(__file__).resolve().parent.parent
V54 = ROOT / "v54"
sys.path.insert(0, str(V54))

from train_gine_v38 import GINEDatasetV47, collate_fn, evaluate, select_device  # noqa: E402
from gine_classifier_v38 import GINEClassifier  # noqa: E402
from pdg_builder import NUM_EDGE_TYPES  # noqa: E402
from eval_riscv_real import build_riscv_records  # noqa: E402

SEEDS = [42, 1, 7, 13, 21]
CKPT_DIR = ROOT / "eval" / "dataflow_taint_multiseed"


def score(ckpt_path):
    device = select_device()
    ckpt = torch.load(ckpt_path, map_location=device, weights_only=False)
    label_to_id = ckpt["label_to_id"]
    feature_names = ckpt["feature_names"]
    a = ckpt["args"]
    records = [r for r in build_riscv_records() if r["label"] in label_to_id]

    ds = GINEDatasetV47(records, label_to_id, feature_names,
                         speculative_window=a["speculative_window"],
                         strip_bp=not a["no_strip"], node_feature_mode=a["node_feature_mode"],
                         use_spec_builder=a["use_spec_builder"])
    loader = torch.utils.data.DataLoader(ds, batch_size=32, shuffle=False,
                                          collate_fn=collate_fn, num_workers=0)
    model = GINEClassifier(
        node_feat_dim=ds.node_feature_dim, num_edge_types=NUM_EDGE_TYPES,
        hidden_dim=a["hidden_dim"], num_layers=a["num_layers"], num_classes=len(label_to_id),
        handcrafted_dim=max(len(feature_names), 1), global_feat_dim=5,
        arch_emb_dim=a["arch_emb_dim"], dropout=a["dropout"],
        use_virtual_node=not a["no_virtual_node"], jk_mode=a["jk_mode"],
    ).to(device)
    model.load_state_dict(ckpt["model_state_dict"])
    acc, preds, labels = evaluate(model, loader, device, desc="riscv")

    id_to_label = {i: l for l, i in label_to_id.items()}
    from sklearn.metrics import classification_report
    present = sorted(set(labels))
    rep = classification_report(labels, preds, labels=present,
                                 target_names=[id_to_label[i] for i in present],
                                 output_dict=True, zero_division=0)
    return acc, rep


def ci(x):
    x = np.asarray(x, float)
    return x.mean(), x.std(ddof=1) / np.sqrt(len(x)) * stats.t.ppf(0.975, len(x) - 1)


def main():
    accs = []
    l1tf_recalls, mds_recalls = [], []
    for sd in SEEDS:
        ckpt = CKPT_DIR / f"viz_s{sd}" / "gine_best.pt"
        acc, rep = score(ckpt)
        accs.append(acc * 100)
        l1tf_recalls.append(rep.get("L1TF", {}).get("recall", 0.0) * 100)
        mds_recalls.append(rep.get("MDS", {}).get("recall", 0.0) * 100)
        print(f"  seed {sd}: acc={acc*100:.2f}%  L1TF recall={rep.get('L1TF',{}).get('recall',0)*100:.1f}%  "
              f"MDS recall={rep.get('MDS',{}).get('recall',0)*100:.1f}%")

    am, ah = ci(accs)
    print(f"\nRISC-V zero-shot, dataflow_taint model, {len(SEEDS)} seeds:")
    print(f"  accuracy:    {am:.2f} ± {ah:.2f}")
    print(f"  L1TF recall: {np.mean(l1tf_recalls):.2f}% (all seeds: {l1tf_recalls})")
    print(f"  MDS recall:  {np.mean(mds_recalls):.2f}% (all seeds: {mds_recalls})")


if __name__ == "__main__":
    main()
