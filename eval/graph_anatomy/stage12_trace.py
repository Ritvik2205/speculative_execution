#!/usr/bin/env python3
"""stage12_trace.py — trace one shared MDS and one shared L1TF gadget from text
to the graph tensors the GINE sees, and verify our reconstruction against the
real GINEDatasetV47 (byte-equal edge tensors + node features).

Also measures, per corpus, what the pipeline drops: boilerplate strip, label /
directive lines, node truncation (256) and edge truncation (1024).

Usage: python3 eval/graph_anatomy/stage12_trace.py > eval/graph_anatomy/stage12_trace.txt
"""
from __future__ import annotations

import sys
from collections import Counter
from pathlib import Path

import numpy as np

sys.path.insert(0, str(Path(__file__).resolve().parent))
from stage12_common import (CAT, ET, FLAG, MEM, MAX_NODES, MAX_EDGES, build, builder,  # noqa: E402
                            load_corpora, tensor_view, addr_regs, mem_role)
import pdg_builder as pb  # noqa: E402


def trace(rec):
    pdg, stripped = build(rec)
    b = builder(rec["arch"])
    print(f"\n=== {rec['label']}  {rec['src_path']}")
    print(f"raw lines {len(rec['sequence'])} -> after strip_boilerplate {len(stripped)} "
          f"-> nodes {len(pdg.nodes)}")
    print(f"{'id':>3} {'instruction':34s} {'category':12s} {'mem':8s} {'rd/wr':5s} "
          f"{'src':18s} {'dst':6s} addr  flags")
    for nd in pdg.nodes:
        r, w = mem_role(nd, b)
        fl = ",".join(FLAG[i].replace("is_", "") for i in range(14) if nd.spec_flags[i])
        print(f"{nd.id:>3} {nd.raw_instruction.replace(chr(9), ' ')[:34]:34s} "
              f"{CAT[nd.opcode_category]:12s} {MEM[nd.mem_access_type]:8s} "
              f"{('R' if r else '-') + ('W' if w else '-'):5s} "
              f"{','.join(sorted(nd.src_regs))[:18]:18s} {','.join(sorted(nd.dest_regs))[:6]:6s} "
              f"{','.join(sorted(addr_regs(nd, b.engine) - {'r14'})):5s} {fl}")
    ec = Counter(ET[e.edge_type] for e in pdg.edges)
    print("edges by type:", dict(ec))
    for t in ("DATA_DEP", "MEMORY_ORDER"):
        lst = [(e.src, e.dst) for e in pdg.edges if ET[e.edge_type] == t]
        print(f"{t} edges: {lst}")
    return pdg


def verify_against_dataset(recs):
    """Build the real GINEDatasetV47 (locked B1 config) and compare tensors."""
    from train_gine_v38 import GINEDatasetV47
    from inline_features import get_feature_names
    l2i = {c: i for i, c in enumerate(sorted({r["label"] for r in recs}))}
    ds = GINEDatasetV47(recs, l2i, get_feature_names(), speculative_window=20,
                        strip_bp=True, node_feature_mode="hand", use_spec_builder=True)
    ok = 0
    for rec, item in zip(recs, ds.data):
        pdg, _ = build(rec)
        tv = tensor_view(pdg)
        et = np.array(tv["edge_types_kept"])
        nf = pdg.get_node_features(MAX_NODES)
        same = (item["n_edges"] == tv["n_edges"]
                and np.array_equal(item["edge_type"][:item["n_edges"]], et)
                and np.allclose(item["node_features"][:, :40], nf)
                and int(item["node_mask"].sum()) == tv["n_nodes"])
        ok += same
    print(f"\nreconstruction == GINEDatasetV47 tensors on {ok}/{len(ds.data)} records "
          f"(dataset kept {len(ds.data)}/{len(recs)})")


def pipeline_losses(corp):
    print("\n=== what the pipeline drops, per corpus")
    for name, recs in corp.items():
        n = len(recs)
        lab = sum(1 for r in recs for l in r["sequence"]
                  if l.strip().endswith(":") or l.strip().startswith("."))
        instr = sum(len(r["sequence"]) for r in recs)
        stripped = tn = te = drop = lone_lock = 0
        dropped_types = Counter()
        for r in recs:
            pdg, s = build(r)
            if pdg is None:
                drop += 1
                continue
            stripped += len(r["sequence"]) - len(s)
            tv = tensor_view(pdg)
            tn += tv["n_nodes_raw"] > MAX_NODES
            te += tv["n_edges_after_node_trunc"] > MAX_EDGES
            dropped_types.update(ET[t] for t in tv["edge_types_dropped"])
            lone_lock += sum(1 for l in r["sequence"] if l.strip() == "lock")
        print(f"{name:7s} n={n:5d} unbuildable={drop} label/directive lines={lab}/{instr} "
              f"strip_boilerplate removed {stripped} lines; >256 nodes: {tn}; "
              f">1024 edges: {te}; truncated edge types {dict(dropped_types)}; "
              f"bare 'lock' lines (become an OTHER node, prefix lost): {lone_lock}")


def main():
    corp = load_corpora()
    sh = corp["shared"]
    mds = next(r for r in sh if r["label"] == "MDS")
    l1 = next(r for r in sh if r["label"] == "L1TF")
    trace(mds)
    trace(l1)
    verify_against_dataset(sh)
    pipeline_losses(corp)


if __name__ == "__main__":
    main()
