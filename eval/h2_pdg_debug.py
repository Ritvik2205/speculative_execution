#!/usr/bin/env python3
"""Debug why dataflow_taint doesn't fire on a specific L1TF/MDS RISC-V record
despite the #APP block containing a syntactically-correct
LOAD -> SHIFT(probe-scale) -> ADD -> LOAD chain post-translation."""
import sys
from pathlib import Path

ROOT = Path(sys.argv[1]) if len(sys.argv) > 1 else Path(".")
sys.path.insert(0, str(ROOT / "spec"))
sys.path.insert(0, str(ROOT / "v54"))

from isa_spec import load_engine  # noqa: E402
from spec_pdg_builder import SpecBackedPDGBuilder  # noqa: E402
from pdg_builder import OPCODE_CATEGORIES, EDGE_TYPES, SPEC_FLAGS  # noqa: E402

CAT_NAMES = {v: k for k, v in OPCODE_CATEGORIES.items()}
EDGE_NAMES = {v: k for k, v in EDGE_TYPES.items()}

riscv_engine = load_engine("riscv.json")
builder = SpecBackedPDGBuilder(riscv_engine)

target = sys.argv[2] if len(sys.argv) > 2 else "c_vulns_c_code_enhanced_variants_l1tf_pf_arm64_gen_0.O0.riscv64.s"
path = ROOT / "riscv_corpus" / target

import re
_COMMENT = re.compile(r"[#;].*$")


def is_instr(line: str) -> bool:
    s = line.strip()
    return bool(s) and not s.startswith(".") and not s.endswith(":") and ":" not in s.split()[0]


def extract_sequence(p: Path):
    seq = []
    for raw in p.read_text(errors="ignore").splitlines():
        line = _COMMENT.sub("", raw).rstrip()
        if is_instr(line):
            seq.append(line.strip())
    return seq


seq = extract_sequence(path)
print(f"file={target}  n_instr={len(seq)}")
pdg = builder.build(seq)
print(f"n_nodes={len(pdg.nodes)}  n_edges={len(pdg.edges)}")

# find nodes relevant to the leak idiom
for i, node in enumerate(pdg.nodes):
    cat = CAT_NAMES.get(node.opcode_category, node.opcode_category)
    flags_on = [name for name, idx in SPEC_FLAGS.items() if node.spec_flags[idx] > 0]
    if cat in ("LOAD", "SHIFT", "STORE") or flags_on:
        print(f"  node[{i}] cat={cat:10s} flags={flags_on}  raw={node.raw_instruction!r}")

print("\nDATA_DEP edges:")
for e in pdg.edges:
    if EDGE_NAMES.get(e.edge_type) == "DATA_DEP":
        src = pdg.nodes[e.src]
        dst = pdg.nodes[e.dst]
        print(f"  {e.src}({src.raw_instruction!r}) -> {e.dst}({dst.raw_instruction!r})")
