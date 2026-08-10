#!/usr/bin/env python3
"""
H3: instruction-count / PDG-node-count / edge-count per class, RISC-V corpus
vs x86/ARM v54_train.jsonl, for the classes with real confusion (BHI,
RETBLEED, MDS, INCEPTION, SPECTRE_V2), plus L1TF for context.

H2: edge-type distribution (fraction of edges per EDGE_TYPES category) for
RISC-V BHI graphs vs x86/ARM-training BHI graphs vs x86/ARM-training MDS
graphs, to test whether RISC-V BHI structurally resembles x86/ARM MDS more
than it resembles x86/ARM BHI.

Reuses build_riscv_records()'s exact label-recovery logic (copied inline,
verified identical to spec/eval_riscv_real.py) and the same SpecBackedPDGBuilder
class used by the real eval scripts, so PDGs here are built exactly the way
the classifier sees them (modulo dataflow_taint on/off, irrelevant to
structural edge-type/size stats).
"""
import json
import re
import sys
from pathlib import Path
from collections import Counter, defaultdict
import statistics as st

ROOT = Path(sys.argv[1])
sys.path.insert(0, str(ROOT / "spec"))
sys.path.insert(0, str(ROOT / "v54"))

from isa_spec import load_engine  # noqa: E402
from spec_pdg_builder import SpecBackedPDGBuilder  # noqa: E402
from pdg_builder import EDGE_TYPES  # noqa: E402

EDGE_NAMES = {v: k for k, v in EDGE_TYPES.items()}

CORPUS = ROOT / "riscv_corpus"
_OPT_SUFFIX = re.compile(r'\.O[0-9]+\.riscv64\.s$')
_COMMENT = re.compile(r"[#;].*$")
KEYWORD_TO_LABEL = [
    ("spectre_rsb", "SPECTRE_RSB"), ("spectre_v2", "SPECTRE_V2"),
    ("spectre_2", "SPECTRE_V2"), ("spectre_v4", "SPECTRE_V4"),
    ("retbleed", "RETBLEED"), ("inception", "INCEPTION"),
    ("l1tf", "L1TF"), ("mds", "MDS"), ("bhi", "BRANCH_HISTORY_INJECTION"),
    ("utils", "BENIGN"),
]
EXCLUDED = {"downfall"}


def label_for_stem(stem):
    low = stem.lower()
    if any(k in low for k in EXCLUDED):
        return None
    for kw, label in KEYWORD_TO_LABEL:
        if kw in low:
            return label
    return None


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


def build_riscv_records():
    records = []
    for f in sorted(CORPUS.glob("*.s")):
        if f.name.endswith(".pre_corpus_fix"):
            continue
        stem = _OPT_SUFFIX.sub("", f.name)
        label = label_for_stem(stem)
        if label is None:
            continue
        seq = extract_sequence(f)
        if len(seq) < 3:
            continue
        records.append({"label": label, "sequence": seq, "arch": "riscv64", "group": stem})
    return records


riscv_engine = load_engine("riscv.json")
riscv_builder = SpecBackedPDGBuilder(riscv_engine)

x86_engine = load_engine("x86_64.json")
arm_engine = load_engine("arm64.json")
x86_builder = SpecBackedPDGBuilder(x86_engine)
arm_builder = SpecBackedPDGBuilder(arm_engine)

TARGET_CLASSES = ["BRANCH_HISTORY_INJECTION", "RETBLEED", "MDS", "INCEPTION", "SPECTRE_V2", "L1TF", "BENIGN"]

# ---- RISC-V side ----
riscv_records = build_riscv_records()
riscv_by_class = defaultdict(list)
for r in riscv_records:
    riscv_by_class[r["label"]].append(r)

print("=" * 70)
print("H3: instruction count / PDG node count / edge count, RISC-V corpus")
print("=" * 70)
riscv_edge_dist = {}
for label in TARGET_CLASSES:
    recs = riscv_by_class.get(label, [])
    if not recs:
        print(f"{label}: no records")
        continue
    n_instr = [len(r["sequence"]) for r in recs]
    n_nodes = []
    n_edges = []
    edge_counter = Counter()
    for r in recs:
        try:
            pdg = riscv_builder.build(r["sequence"])
        except Exception as e:
            continue
        n_nodes.append(len(pdg.nodes))
        n_edges.append(len(pdg.edges))
        for e in pdg.edges:
            edge_counter[EDGE_NAMES.get(e.edge_type, e.edge_type)] += 1
    total_e = sum(edge_counter.values()) or 1
    edge_frac = {k: v / total_e for k, v in edge_counter.items()}
    riscv_edge_dist[label] = edge_frac
    print(f"\n{label} (n={len(recs)}):")
    print(f"  instr/record: mean={st.mean(n_instr):.1f} median={st.median(n_instr):.0f} "
          f"min={min(n_instr)} max={max(n_instr)}")
    if n_nodes:
        print(f"  pdg nodes/record: mean={st.mean(n_nodes):.1f}  pdg edges/record: mean={st.mean(n_edges):.1f}")
    print(f"  edge-type fractions: { {k: round(v,3) for k,v in sorted(edge_frac.items(), key=lambda x:-x[1])} }")

# ---- x86/ARM training side ----
print()
print("=" * 70)
print("H3: instruction count / PDG node count / edge count, x86/ARM v54_train.jsonl")
print("=" * 70)
train_path = ROOT / "v54" / "data" / "v54_train.jsonl"
train_by_class = defaultdict(list)
with open(train_path) as f:
    for line in f:
        r = json.loads(line)
        train_by_class[r["label"]].append(r)

xa_edge_dist = {}
import random
random.seed(0)
for label in TARGET_CLASSES:
    recs = train_by_class.get(label, [])
    if not recs:
        print(f"{label}: no records")
        continue
    n_instr = [len(r["sequence"]) for r in recs]
    sample = recs if len(recs) <= 150 else random.sample(recs, 150)
    n_nodes = []
    n_edges = []
    edge_counter = Counter()
    for r in sample:
        builder = x86_builder if r.get("arch") == "x86_64" else arm_builder
        try:
            pdg = builder.build(r["sequence"])
        except Exception:
            continue
        n_nodes.append(len(pdg.nodes))
        n_edges.append(len(pdg.edges))
        for e in pdg.edges:
            edge_counter[EDGE_NAMES.get(e.edge_type, e.edge_type)] += 1
    total_e = sum(edge_counter.values()) or 1
    edge_frac = {k: v / total_e for k, v in edge_counter.items()}
    xa_edge_dist[label] = edge_frac
    print(f"\n{label} (n={len(recs)}, sampled {len(sample)} for graph stats):")
    print(f"  instr/record: mean={st.mean(n_instr):.1f} median={st.median(n_instr):.0f} "
          f"min={min(n_instr)} max={max(n_instr)}")
    if n_nodes:
        print(f"  pdg nodes/record: mean={st.mean(n_nodes):.1f}  pdg edges/record: mean={st.mean(n_edges):.1f}")
    print(f"  edge-type fractions: { {k: round(v,3) for k,v in sorted(edge_frac.items(), key=lambda x:-x[1])} }")

# ---- H2: does RISC-V BHI edge distribution look more like x86/ARM MDS than x86/ARM BHI? ----
print()
print("=" * 70)
print("H2: L1 distance between RISC-V-BHI edge-type distribution and each")
print("    x86/ARM-training class's edge-type distribution (lower = more similar)")
print("=" * 70)


def l1_dist(a, b):
    keys = set(a) | set(b)
    return sum(abs(a.get(k, 0.0) - b.get(k, 0.0)) for k in keys)


rv_bhi = riscv_edge_dist.get("BRANCH_HISTORY_INJECTION")
if rv_bhi:
    dists = []
    for label, dist in xa_edge_dist.items():
        d = l1_dist(rv_bhi, dist)
        dists.append((d, label))
    dists.sort()
    for d, label in dists:
        marker = "  <-- closest" if d == dists[0][0] else ""
        print(f"  RISC-V-BHI vs x86/ARM-{label}: L1={d:.3f}{marker}")
