#!/usr/bin/env python3
"""Edge-type distribution for the EXACT 56 BHI->MDS-misclassified records vs
the EXACT 40 correctly-classified BHI records, RISC-V, compared to x86/ARM
training BHI and MDS distributions."""
import json
import re
import sys
from pathlib import Path
from collections import Counter, defaultdict
import statistics as st

ROOT = Path(sys.argv[1])
PRED_JSON = Path(sys.argv[2])
sys.path.insert(0, str(ROOT / "spec"))
sys.path.insert(0, str(ROOT / "v54"))

from isa_spec import load_engine
from spec_pdg_builder import SpecBackedPDGBuilder
from pdg_builder import EDGE_TYPES

EDGE_NAMES = {v: k for k, v in EDGE_TYPES.items()}
_COMMENT = re.compile(r"[#;].*$")


def is_instr(line):
    s = line.strip()
    return bool(s) and not s.startswith(".") and not s.endswith(":") and ":" not in s.split()[0]


def extract_sequence(path):
    seq = []
    for raw in path.read_text(errors="ignore").splitlines():
        line = _COMMENT.sub("", raw).rstrip()
        if is_instr(line):
            seq.append(line.strip())
    return seq


d = json.loads(PRED_JSON.read_text())
mds_sources = d["bhi_to_mds_sources"]
correct_sources = d["bhi_correct_sources"]

riscv_engine = load_engine("riscv.json")
builder = SpecBackedPDGBuilder(riscv_engine)


def stats_for(sources, label):
    n_instr, n_nodes, n_edges = [], [], []
    edge_counter = Counter()
    for s in sources:
        p = ROOT / s
        seq = extract_sequence(p)
        if len(seq) < 3:
            continue
        pdg = builder.build(seq)
        n_instr.append(len(seq))
        n_nodes.append(len(pdg.nodes))
        n_edges.append(len(pdg.edges))
        for e in pdg.edges:
            edge_counter[EDGE_NAMES.get(e.edge_type, e.edge_type)] += 1
    total_e = sum(edge_counter.values()) or 1
    edge_frac = {k: v / total_e for k, v in edge_counter.items()}
    print(f"\n{label} (n={len(n_instr)}):")
    print(f"  instr/record: mean={st.mean(n_instr):.1f} median={st.median(n_instr):.0f}")
    print(f"  pdg nodes/record: mean={st.mean(n_nodes):.1f}")
    print(f"  edge-type fractions: { {k: round(v,3) for k,v in sorted(edge_frac.items(), key=lambda x:-x[1])} }")
    return edge_frac, n_instr, n_nodes


print("=" * 70)
print("Exact per-record comparison: BHI records misclassified as MDS vs BHI")
print("records correctly classified, RISC-V, same checkpoint")
print("=" * 70)
mds_dist, mds_instr, mds_nodes = stats_for(mds_sources, "BHI->MDS (misclassified, n=56 incl. dup opt-levels)")
correct_dist, c_instr, c_nodes = stats_for(correct_sources, "BHI->BHI (correct, n=40)")


def l1_dist(a, b):
    keys = set(a) | set(b)
    return sum(abs(a.get(k, 0.0) - b.get(k, 0.0)) for k in keys)


print(f"\nL1 distance between misclassified-BHI and correct-BHI edge distributions: {l1_dist(mds_dist, correct_dist):.3f}")
print(f"Mean instr/record: misclassified={st.mean(mds_instr):.1f} vs correct={st.mean(c_instr):.1f}")
print(f"Mean nodes/record: misclassified={st.mean(mds_nodes):.1f} vs correct={st.mean(c_nodes):.1f}")
