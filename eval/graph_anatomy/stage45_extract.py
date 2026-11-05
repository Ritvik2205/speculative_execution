#!/usr/bin/env python3
"""stage45_extract.py — pipeline stages 4-5 (inside the trained GINE).

For every checkpoint arm (shared_gine / B1 rv_embed_specfix / allhw / allhw2,
all seeds) dump, per gadget, every internal representation:

  in_mean      mean of the 41-dim raw node features over valid nodes
  L0..L3       mean-pooled node embeddings after node_encoder (L0) and each
               GINE layer (+LN +virtual node), 128 each
  attn_pool    attention-pooled JK-cat graph embedding (512) = graph_repr_raw
  graph        graph_projector output (256)        -- graph branch of `combined`
  feat         feature_encoder output (256)        -- handcrafted branch
  glob         global_projector output (32)
  combined     the fusion vector (552) fed to the classifier
  hidden       classifier hidden layer after ReLU (128)
  logits       10-way logits
  hc_raw/glob_raw  the raw 58-dim handcrafted and 5-dim global inputs
plus branch-ablation logits (graph/feat zeroed or replaced by the synthetic
v54_test mean) and the learned edge-type scales.

Loading, config, label vocab and the reproduce gate are taken verbatim from
eval/score_hwlabel_variants.py (imported, not reimplemented). The manual
forward below is asserted to reproduce model(...) logits to 1e-4 on every batch.

    python3 eval/graph_anatomy/stage45_extract.py [--cache DIR] [--runs a,b]
"""
from __future__ import annotations
import argparse
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parents[2]
sys.path.insert(0, str(ROOT / "eval"))
sys.path.insert(0, str(ROOT))

import numpy as np  # noqa: E402
import torch  # noqa: E402
import torch.nn.functional as F  # noqa: E402
from torch.utils.data import DataLoader  # noqa: E402

import score_hwlabel_variants as S  # noqa: E402  (sets up v54/ + spec/ paths)
from score_hwlabel_variants import (  # noqa: E402
    load_run_config, load_jsonl, build_model, reproduce_gate, EXPECTED_CLASSES,
)
from train_gine_v38 import GINEDatasetV47, collate_fn, DEVICE  # noqa: E402
from inline_features import get_feature_names  # noqa: E402

CO = ROOT / "eval" / "cluster_out"
SEEDS = (1, 7, 13, 21, 42)
ARMS = {"shared_gine": "shared_gine_s{}", "b1": "rv_embed_specfix_s{}",
        "allhw": "allhw_s{}", "allhw2": "allhw2_s{}"}
DATASETS = {
    "real_train": ROOT / "eval/data/revizor_shared_train.jsonl",
    "real_heldout": ROOT / "eval/data/revizor_shared_heldout_variants.jsonl",
    "syn_test": ROOT / "v54/data/v54_test.jsonl",
}


@torch.no_grad()
def anatomy_forward(model, b):
    """Manual copy of GINEClassifier.encode_graph + forward that keeps every
    intermediate. Asserted equal to model(...) by the caller."""
    nf, ei, et, nm = b["node_features"], b["edge_index"], b["edge_type"], b["node_mask"]
    em, ew = b["edge_mask"], b["edge_weight"]
    B = nf.shape[0]
    m = nm.unsqueeze(-1).float()
    cnt = m.sum(1).clamp(min=1)
    out = {"in_mean": (nf * m).sum(1) / cnt}
    h = model.node_encoder(nf.view(-1, nf.shape[-1])).view(B, -1, model.hidden_dim)
    ea = model.edge_encoder(et) * model.edge_type_scale[et].unsqueeze(-1)
    ea = ea * em.unsqueeze(-1).float()
    vn = model.vn_init.expand(B, -1) if model.use_virtual_node else None
    layers = [h]
    for i in range(model.num_layers):
        hn = model.gine_layers[i](h, ei, ea, nm, em, ew)
        h = model.layer_norms[i](h + hn)
        if model.use_virtual_node:
            h, vn = model.vn_updates[i](h, vn, nm)
        layers.append(h)
    for i, L in enumerate(layers):
        out[f"L{i}"] = (L * m).sum(1) / cnt
    hjk = torch.cat(layers, -1) if model.jk_mode == "cat" else layers[-1]
    al = model.attention_net(hjk).masked_fill(~nm.unsqueeze(-1), float("-inf"))
    aw = F.softmax(al, dim=1)
    out["attn_pool"] = (hjk * aw).sum(1)
    out["graph"] = model.graph_projector(out["attn_pool"])
    out["feat"] = model.feature_encoder(b["handcrafted"])
    out["glob"] = model.global_projector(b["global_features"])
    arch = model.arch_embedding(b["arch_id"])
    out["combined"] = torch.cat([out["graph"], out["feat"], out["glob"], arch], -1)
    clf = model.classifier
    z = clf[2](clf[1](clf[0](out["combined"])))   # Linear, BN, ReLU (dropout off)
    out["hidden"] = z
    out["logits"] = clf[4](z)
    out["hc_raw"] = b["handcrafted"]
    out["glob_raw"] = b["global_features"]
    out["_attn"] = aw.squeeze(-1)
    return out


def head(model, combined):
    return model.classifier(combined.to(DEVICE)).cpu()


def run_dataset(model, ds):
    loader = DataLoader(ds, batch_size=64, shuffle=False, collate_fn=collate_fn, num_workers=0)
    acc = {}
    model.eval()
    for b in loader:
        b = {k: v.to(DEVICE) for k, v in b.items()}
        o = anatomy_forward(model, b)
        ref = model(b["node_features"], b["edge_index"], b["edge_type"], b["node_mask"],
                    b["handcrafted"], b["global_features"], b["arch_id"],
                    edge_mask=b["edge_mask"], edge_weight=b["edge_weight"])
        err = (ref - o["logits"]).abs().max().item()
        assert err < 1e-4, f"manual forward diverges from model: {err}"
        o.pop("_attn")
        for k, v in o.items():
            acc.setdefault(k, []).append(v.cpu().numpy())
    return {k: np.concatenate(v) for k, v in acc.items()}


def ablations(model, D, ref_graph, ref_feat):
    """Logits with one branch of `combined` zeroed or replaced by the synthetic
    in-distribution mean (graph 0:256, feat 256:512)."""
    c = torch.from_numpy(D["combined"]).float()
    res = {}
    with torch.no_grad():
        for name, sl, ref in (("graph", slice(0, 256), ref_graph), ("feat", slice(256, 512), ref_feat)):
            z = c.clone(); z[:, sl] = 0
            res[f"abl_{name}_zero"] = head(model, z).numpy()
            mu = c.clone(); mu[:, sl] = torch.from_numpy(ref).float()
            res[f"abl_{name}_mean"] = head(model, mu).numpy()
    return res


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--cache", default=str(ROOT / "eval/graph_anatomy/cache"))
    ap.add_argument("--runs", default=None, help="comma list of arm names (default all)")
    ap.add_argument("--acc-tol", type=float, default=1e-3)
    args = ap.parse_args()
    cache = Path(args.cache); cache.mkdir(parents=True, exist_ok=True)
    torch.manual_seed(42); np.random.seed(42)

    train_labels = sorted({r["label"] for r in load_jsonl(ROOT / "v54/data/v54_train.jsonl")
                           if r.get("label", "UNKNOWN") != "UNKNOWN"})
    assert train_labels == EXPECTED_CLASSES, train_labels
    label_to_id = {l: i for i, l in enumerate(train_labels)}
    feature_names = get_feature_names()

    arms = args.runs.split(",") if args.runs else list(ARMS)
    dsets = {}
    ds_kw0 = None
    for arm in arms:
        for s in SEEDS:
            run = ARMS[arm].format(s)
            mp = CO / run / "gine_metrics.json"
            out_p = cache / f"{arm}_s{s}.npz"
            if out_p.exists():
                print("skip (cached)", out_p); continue
            expected, model_cfg, ds_kw, hc_subset, mech = load_run_config(mp)
            assert hc_subset in ("all", None) and not mech, (run, hc_subset, mech)
            if ds_kw0 is None:
                ds_kw0 = ds_kw
                for name, p in DATASETS.items():
                    recs = load_jsonl(p)
                    for r in recs:
                        r.setdefault("arch", "x86_64")
                        r["source_file"] = r.get("src_path", r.get("group", "revizor_hw"))
                    recs = [r for r in recs if r.get("label", "UNKNOWN") in label_to_id]
                    ds = GINEDatasetV47(recs, label_to_id, feature_names, **ds_kw)
                    assert len(ds) == len(recs), f"{name}: dropped records"
                    dsets[name] = (recs, ds)
            assert ds_kw == ds_kw0, (run, ds_kw, ds_kw0)
            ckpt = torch.load(CO / run / "gine_best.pt", map_location=DEVICE, weights_only=False)
            state = ckpt["model_state_dict"] if "model_state_dict" in ckpt else ckpt
            model = build_model(len(train_labels), len(feature_names),
                                dsets["syn_test"][1].node_feature_dim, model_cfg)
            model.load_state_dict(state); model.eval()
            print(f"== {run}")
            gate = reproduce_gate(model, label_to_id, feature_names,
                                  ROOT / "v54/data/v54_test.jsonl", ds_kw, expected, args.acc_tol)
            save = {"gate_acc": np.array(gate),
                    "edge_scales": model.edge_type_scale.detach().cpu().numpy()}
            per = {name: run_dataset(model, ds) for name, (recs, ds) in dsets.items()}
            ref_g = per["syn_test"]["graph"].mean(0); ref_f = per["syn_test"]["feat"].mean(0)
            for name, D in per.items():
                D.update(ablations(model, D, ref_g, ref_f))
                for k, v in D.items():
                    save[f"{name}/{k}"] = v.astype(np.float32 if k.startswith(("logits", "abl")) else np.float16)
            np.savez_compressed(out_p, **save)
            print("wrote", out_p)


if __name__ == "__main__":
    main()
