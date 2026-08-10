#!/usr/bin/env python3
"""
Precise per-record RISC-V predictions (which exact BHI records get predicted
MDS), reusing spec/eval_riscv_real.py's build_riscv_records() verbatim and
v54/viz_v54_spec/gine_best.pt (the checkpoint eval_riscv_real.py defaults
to). Requires v54/train_gine_v38.py's GINEDatasetV47._process_record item
dict to carry a '_group' key (added locally, does not change any tensor the
model sees or the collate/eval path -- purely an extra dict key on
dataset.data[i] for post-hoc identification).
"""
import sys
from pathlib import Path
import json

ROOT = Path(sys.argv[1])
V54 = ROOT / "v54"
CORPUS = ROOT / "riscv_corpus"
CKPT = V54 / "viz_v54_spec" / "gine_best.pt"

sys.path.insert(0, str(V54))
import torch
from train_gine_v38 import GINEDatasetV47, collate_fn, evaluate, select_device
from gine_classifier_v38 import GINEClassifier, NUM_ARCHS
from pdg_builder import NUM_EDGE_TYPES

sys.path.insert(0, str(ROOT / "spec"))
sys.path.insert(0, str(ROOT))
import importlib.util
spec_mod = importlib.util.spec_from_file_location("eval_riscv_real", str(ROOT / "spec" / "eval_riscv_real.py"))
err = importlib.util.module_from_spec(spec_mod)
spec_mod.loader.exec_module(err)
build_riscv_records = err.build_riscv_records

records = build_riscv_records()

device = select_device()
ckpt = torch.load(CKPT, map_location=device, weights_only=False)
label_to_id = ckpt["label_to_id"]
feature_names = ckpt["feature_names"]
ckpt_args = ckpt["args"]
id_to_label = {i: l for l, i in label_to_id.items()}

records = [r for r in records if r["label"] in label_to_id]

dataset = GINEDatasetV47(
    records, label_to_id, feature_names,
    speculative_window=ckpt_args["speculative_window"],
    strip_bp=not ckpt_args["no_strip"],
    node_feature_mode=ckpt_args["node_feature_mode"],
    use_spec_builder=ckpt_args["use_spec_builder"],
)

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
model.eval()

acc, preds, labels = evaluate(model, loader, device, desc="RISC-V zero-shot (precise)")
print(f"accuracy (this run) = {acc*100:.2f}%  n={len(labels)}")

groups = [dataset.data[i]['_group'] for i in range(len(dataset.data))]
sources = [dataset.data[i].get('_source_file', '') for i in range(len(dataset.data))]
assert len(groups) == len(preds) == len(labels)

from collections import Counter, defaultdict
conf = defaultdict(Counter)
bhi_to_mds_groups = []
bhi_to_mds_sources = []
bhi_correct_sources = []
pair_sources = defaultdict(list)  # (true, pred) -> [source_file, ...]
for g, s, p, l in zip(groups, sources, preds, labels):
    true_label = id_to_label[l]
    pred_label = id_to_label[p]
    conf[true_label][pred_label] += 1
    pair_sources[f"{true_label}->{pred_label}"].append(s)
    if true_label == "BRANCH_HISTORY_INJECTION" and pred_label == "MDS":
        bhi_to_mds_groups.append(g)
        bhi_to_mds_sources.append(s)
    elif true_label == "BRANCH_HISTORY_INJECTION" and pred_label == "BRANCH_HISTORY_INJECTION":
        bhi_correct_sources.append(s)

print("\nConfusion (this run):")
for t in sorted(conf):
    print(f"  {t}: {dict(conf[t])}")

print(f"\nBHI->MDS records ({len(bhi_to_mds_groups)}):")
for g in bhi_to_mds_groups:
    print(f"  {g}")

out = {
    "bhi_to_mds_groups": bhi_to_mds_groups,
    "bhi_to_mds_sources": bhi_to_mds_sources,
    "bhi_correct_sources": bhi_correct_sources,
    "pair_sources": dict(pair_sources),
    "confusion": {t: dict(c) for t, c in conf.items()},
    "accuracy": acc,
}
with open(sys.argv[2], "w") as f:
    json.dump(out, f, indent=2)
