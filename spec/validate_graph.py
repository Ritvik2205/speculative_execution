#!/usr/bin/env python3
"""
validate_graph.py — prove full-graph equivalence.

For every sequence in the v54 dataset, build the PDG twice:
  - original PDGBuilder (hardcoded)
  - SpecBackedPDGBuilder (spec-driven, per-arch engine)
and compare the ENTIRE graph: node vectors (category, mem type, spec flags,
dest/src registers, opcode) and the full edge multiset (src, dst, type, weight)
across all 9 edge types.

Tested at the training speculative_window (20) and the base default (10).
Phase 0 graph acceptance = zero node or edge mismatches.

Run:  python3 spec/validate_graph.py
"""

import json
import sys
from collections import Counter
from pathlib import Path

import numpy as np

ROOT = Path(__file__).resolve().parent.parent
sys.path.insert(0, str(ROOT / "v54"))
sys.path.insert(0, str(ROOT / "spec"))

import pdg_builder as pb  # noqa: E402
from isa_spec import load_engine  # noqa: E402
from spec_pdg_builder import SpecBackedPDGBuilder  # noqa: E402

DATA = [ROOT / "v54" / "data" / "v54_train.jsonl",
        ROOT / "v54" / "data" / "v54_test.jsonl"]

ENGINE_FILE = {"x86_64": "x86_64.json", "arm64": "arm64.json",
               "arm32": "arm64.json", "unknown": "base.json"}


def node_tuple(n):
    return (n.opcode, n.opcode_category, n.mem_access_type,
            tuple(np.asarray(n.spec_flags).tolist()),
            tuple(sorted(n.dest_regs)), tuple(sorted(n.src_regs)))


def edge_multiset(pdg):
    c = Counter()
    for e in pdg.edges:
        c[(e.src, e.dst, e.edge_type, round(float(e.weight), 6))] += 1
    return c


def iter_records():
    for path in DATA:
        if not path.exists():
            continue
        for line in open(path):
            line = line.strip()
            if line:
                yield json.loads(line)


def run(window: int) -> bool:
    ref_builder = pb.PDGBuilder(speculative_window=window)
    engines = {a: load_engine(f) for a, f in ENGINE_FILE.items()}
    spec_builders = {a: SpecBackedPDGBuilder(e, speculative_window=window)
                     for a, e in engines.items()}

    stats = Counter()
    node_mism = edge_mism = 0
    examples = []

    for r in iter_records():
        seq = r.get("sequence", [])
        arch = r.get("arch", "unknown")
        sb = spec_builders.get(arch, spec_builders["unknown"])

        ref = ref_builder.build(seq)
        got = sb.build(seq)
        stats["records"] += 1
        stats["nodes"] += len(ref.nodes)
        stats["edges"] += len(ref.edges)

        n_ok = (len(ref.nodes) == len(got.nodes) and
                all(node_tuple(a) == node_tuple(b)
                    for a, b in zip(ref.nodes, got.nodes)))
        e_ok = edge_multiset(ref) == edge_multiset(got)

        if not n_ok:
            node_mism += 1
        if not e_ok:
            edge_mism += 1
        if (not n_ok or not e_ok) and len(examples) < 5:
            examples.append((r.get("source_file", "?"), arch,
                             len(ref.nodes), len(got.nodes),
                             len(ref.edges), len(got.edges)))

    print(f"[window={window}] records={stats['records']} "
          f"nodes={stats['nodes']} edges={stats['edges']}")
    print(f"[window={window}] node-graph mismatches={node_mism}  "
          f"edge-graph mismatches={edge_mism}")
    for ex in examples:
        print("   mismatch:", ex)
    return node_mism == 0 and edge_mism == 0


def main():
    ok = True
    for window in (20, 10):
        ok &= run(window)
    print("\nRESULT:", "PASS — spec-backed builder yields identical graphs"
          if ok else "FAIL — graph divergence found")
    sys.exit(0 if ok else 1)


if __name__ == "__main__":
    main()
