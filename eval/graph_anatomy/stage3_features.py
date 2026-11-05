#!/usr/bin/env python3
"""Stage 3 (model INPUT features): build the exact tensors GINE sees.

Reuses v54/train_gine_v38.GINEDatasetV47 (use_spec_builder=True, strip_bp=True,
node_feature_mode='hand' = the locked B1 recipe) so nothing is reimplemented.
Per record we keep:
  handcrafted  [58]  compute_inline_features(raw seq)
  global       [5]   compute_global_features(raw seq)
  node_mean    [41]  mean over valid nodes of the 40-dim PDG node vector + pos
  node_any     [41]  fraction-of-graphs indicator: max over valid nodes
  arch_id, n_nodes, n_edges, edge-type histogram (fractions)
Output: eval/graph_anatomy/stage3_features.npz
"""
import json, sys
from pathlib import Path
import numpy as np

ROOT = Path(__file__).resolve().parents[2]
sys.path.insert(0, str(ROOT / "v54"))
sys.path.insert(0, str(ROOT))
import train_gine_v38 as T                      # noqa: E402
from pdg_builder import (OPCODE_CATEGORIES, MEM_ACCESS_TYPES, SPEC_FLAGS,  # noqa: E402
                         EDGE_TYPES, NUM_EDGE_TYPES)
from eval.shared_config import seed_group      # noqa: E402

OUT = ROOT / "eval" / "graph_anatomy" / "stage3_features.npz"
SOURCES = {
    "synthetic": [ROOT / "v54/data/v54_train.jsonl"],
    "real": [ROOT / f"eval/data/revizor_{c}_real.jsonl"
             for c in ("mds", "l1tf", "spectre_v1", "spectre_v4")],
    "shared": [ROOT / "eval/data/revizor_shared_all_variants.jsonl"],
}


def node_names():
    inv = lambda d: [k for k, _ in sorted(d.items(), key=lambda kv: kv[1])]
    return ([f"op_{k}" for k in inv(OPCODE_CATEGORIES)] +
            [f"mem_{k}" for k in inv(MEM_ACCESS_TYPES)] +
            ["num_dest_regs", "num_src_regs"] +
            [f"flag_{k}" for k in inv(SPEC_FLAGS)] + ["pos_enc"])


def main():
    feat_names = T.get_feature_names()
    all_recs, src = [], []
    for s, paths in SOURCES.items():
        for p in paths:
            for l in open(p):
                if not l.strip():
                    continue
                r = json.loads(l)
                if s == "synthetic" and r.get("arch") != "x86_64":
                    continue
                all_recs.append(r); src.append(s)
    labels = sorted({r["label"] for r in all_recs})
    l2i = {l: i for i, l in enumerate(labels)}
    # Process record-by-record so dropped (<3 instr / <2 nodes) rows stay aligned.
    ds = T.GINEDatasetV47([], l2i, feat_names, use_spec_builder=True,
                          strip_bp=True, node_feature_mode="hand")
    rows = {k: [] for k in ("hc", "gl", "nmean", "nmax", "arch", "nn", "ne",
                            "eh", "label", "source", "group", "ninstr")}
    dropped = 0
    for r, s in zip(all_recs, src):
        it = ds._process_record(r)
        if it is None:
            dropped += 1; continue
        n = int(it["node_mask"].sum()); ne = int(it["n_edges"])
        nf = it["node_features"][:n]
        rows["hc"].append(it["handcrafted"]); rows["gl"].append(it["global_features"])
        rows["nmean"].append(nf.mean(0)); rows["nmax"].append(nf.max(0))
        rows["arch"].append(it["arch_id"]); rows["nn"].append(n); rows["ne"].append(ne)
        eh = np.bincount(it["edge_type"][:ne], minlength=NUM_EDGE_TYPES).astype(float)
        rows["eh"].append(eh / max(ne, 1))
        rows["label"].append(r["label"]); rows["source"].append(s)
        rows["group"].append(seed_group(r) if s != "synthetic" else "")
        rows["ninstr"].append(len(r["sequence"]))
    inv_e = [k for k, _ in sorted(EDGE_TYPES.items(), key=lambda kv: kv[1])]
    np.savez_compressed(
        OUT, hc=np.array(rows["hc"]), gl=np.array(rows["gl"]),
        nmean=np.array(rows["nmean"]), nmax=np.array(rows["nmax"]),
        arch=np.array(rows["arch"]), nn=np.array(rows["nn"]), ne=np.array(rows["ne"]),
        eh=np.array(rows["eh"]), ninstr=np.array(rows["ninstr"]),
        label=np.array(rows["label"]), source=np.array(rows["source"]),
        group=np.array(rows["group"]), hc_names=np.array(feat_names),
        gl_names=np.array(["g_nop_frac", "g_indirect_frac", "g_ret_frac",
                           "g_verw_frac", "g_movntdqa_frac"]),
        node_names=np.array(node_names()), edge_names=np.array(inv_e))
    print(f"saved {len(rows['label'])} rows (dropped {dropped}) -> {OUT}")
    print("node_feature_dim", ds.node_feature_dim, "hc", len(feat_names))


if __name__ == "__main__":
    main()
