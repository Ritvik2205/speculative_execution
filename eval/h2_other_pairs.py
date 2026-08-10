#!/usr/bin/env python3
"""Same precise per-record size/edge-dist comparison as h2_precise_edge_dist.py,
generalized to any (true,pred) pair via pair_sources in the predictions json."""
import json
import re
import sys
from pathlib import Path
from collections import Counter
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
pair_sources = d["pair_sources"]

riscv_engine = load_engine("riscv.json")
builder = SpecBackedPDGBuilder(riscv_engine)


def stats_for(sources, label):
    if not sources:
        print(f"\n{label}: (empty)")
        return None, [], []
    n_instr, n_nodes = [], []
    edge_counter = Counter()
    for s in sources:
        p = ROOT / s
        seq = extract_sequence(p)
        if len(seq) < 3:
            continue
        pdg = builder.build(seq)
        n_instr.append(len(seq))
        n_nodes.append(len(pdg.nodes))
        for e in pdg.edges:
            edge_counter[EDGE_NAMES.get(e.edge_type, e.edge_type)] += 1
    total_e = sum(edge_counter.values()) or 1
    edge_frac = {k: v / total_e for k, v in edge_counter.items()}
    print(f"\n{label} (n={len(n_instr)}):")
    print(f"  instr/record: mean={st.mean(n_instr):.1f} median={st.median(n_instr):.0f}")
    print(f"  edge-type fractions: { {k: round(v,3) for k,v in sorted(edge_frac.items(), key=lambda x:-x[1])} }")
    return edge_frac, n_instr, n_nodes


for pair in ["RETBLEED->RETBLEED", "RETBLEED->INCEPTION", "RETBLEED->BENIGN",
             "MDS->MDS", "MDS->BENIGN", "MDS->L1TF",
             "INCEPTION->INCEPTION", "INCEPTION->BENIGN",
             "L1TF->L1TF", "L1TF->BENIGN"]:
    stats_for(pair_sources.get(pair, []), pair)
