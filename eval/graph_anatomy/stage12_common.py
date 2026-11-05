#!/usr/bin/env python3
"""stage12_common.py — shared helpers for the stage 1-2 (text -> PDG) anatomy.

Reproduces EXACTLY the graph construction the locked B1 GINE and
eval/score_hwlabel_variants.py use (v54/train_gine_v38.GINEDatasetV47 with
use_spec_builder=True, speculative_window=20, strip_bp=True, hand node
features, W4 defaults taint_mode=shift / mem_order_edges=False /
cfg_spec_edges=False / drop_nops=False; MAX_NODES=256, MAX_EDGES=1024) —
read from v54/viz_v54_spec/gine_metrics.json args. Read-only: imports the
builders, never edits them.
"""
from __future__ import annotations

import hashlib
import json
import re
import sys
from collections import Counter, defaultdict
from pathlib import Path

import numpy as np

ROOT = Path(__file__).resolve().parents[2]
for p in (ROOT / "v54", ROOT / "spec", ROOT):
    if str(p) not in sys.path:
        sys.path.insert(0, str(p))

import pdg_builder as pb  # noqa: E402
from isa_spec import load_engine  # noqa: E402
from spec_pdg_builder import SpecBackedPDGBuilder  # noqa: E402
from strip_boilerplate import strip_boilerplate  # noqa: E402
from eval.shared_config import seed_group  # noqa: E402

MAX_NODES, MAX_EDGES, SPEC_WINDOW = 256, 1024, 20
CAT = {v: k for k, v in pb.OPCODE_CATEGORIES.items()}
ET = {v: k for k, v in pb.EDGE_TYPES.items()}
FLAG = {v: k for k, v in pb.SPEC_FLAGS.items()}
MEM = {v: k for k, v in pb.MEM_ACCESS_TYPES.items()}
EDGE_NAMES = [ET[i] for i in range(pb.NUM_EDGE_TYPES)]

DATA = ROOT / "eval" / "data"
SHARED = DATA / "revizor_shared_all_variants.jsonl"
REAL = {c: DATA / f"revizor_{c.lower()}_real.jsonl"
        for c in ("MDS", "L1TF", "SPECTRE_V4", "SPECTRE_V1")}
SYNTH = [ROOT / "v54" / "data" / "v54_train.jsonl", ROOT / "v54" / "data" / "v54_test.jsonl"]
CLASSES4 = ("MDS", "L1TF", "SPECTRE_V4", "SPECTRE_V1")

_SPECS = {"x86_64": "x86_64.json", "arm64": "arm64.json", "arm32": "arm64.json",
          "riscv64": "riscv.json", "unknown": "base.json"}
_BUILDERS: dict = {}


def builder(arch: str = "x86_64") -> SpecBackedPDGBuilder:
    arch = arch if arch in _SPECS else "unknown"
    if arch not in _BUILDERS:
        _BUILDERS[arch] = SpecBackedPDGBuilder(load_engine(_SPECS[arch]),
                                               speculative_window=SPEC_WINDOW)
    return _BUILDERS[arch]


def load(p: Path) -> list[dict]:
    return [json.loads(l) for l in open(p) if l.strip()]


def load_corpora() -> dict[str, list[dict]]:
    """shared (224), per-class real (725), synthetic x86 (v54 train+test, the 4 classes)."""
    shared = load(SHARED)
    real = [r for c in CLASSES4 for r in load(REAL[c])]
    synth = [r for p in SYNTH for r in load(p)
             if r.get("arch") == "x86_64" and r["label"] in CLASSES4]
    for r in shared + real:
        r["_g"] = seed_group(r)
        r["_seed"] = r["_g"].split("::", 1)[1]
    for r in synth:
        r["_g"] = f"{r['label']}::{r.get('group')}"
        r["_seed"] = r["_g"]
    return {"shared": shared, "real": real, "synth": synth}


def build(rec: dict):
    """Exactly GINEDatasetV47._process_record's text->PDG path (no drop_nops)."""
    seq = rec["sequence"]
    if len(seq) < 3:
        return None, seq
    stripped = strip_boilerplate(seq)
    pdg = builder(rec.get("arch", "unknown")).build(stripped)
    if len(pdg.nodes) < 2:
        return None, stripped
    return pdg, stripped


def tensor_view(pdg):
    """What survives into the tensors: node truncation at MAX_NODES (edges with an
    endpoint >= n dropped), then edges truncated at MAX_EDGES in CREATION order."""
    n = min(len(pdg.nodes), MAX_NODES)
    ei, et = pdg.get_edge_index_and_type(MAX_NODES)
    ne = ei.shape[1]
    return {"n_nodes_raw": len(pdg.nodes), "n_nodes": n, "n_edges_raw": len(pdg.edges),
            "n_edges_after_node_trunc": ne, "n_edges": min(ne, MAX_EDGES),
            "edge_types_kept": et[:MAX_EDGES].tolist(),
            "edge_types_dropped": et[MAX_EDGES:].tolist()}


# ---------------------------------------------------------------- semantics
_MEM_RE = re.compile(r"\(([^)]*)\)")
_X86REG = re.compile(r"%([a-z0-9]+)", re.I)


def addr_regs(node, eng) -> set:
    """Registers inside the memory operand's parentheses (base/index), canonicalised."""
    m = _MEM_RE.search(node.raw_instruction)
    if not m:
        return set()
    return {eng._norm_reg(r.lower()) for r in _X86REG.findall(m.group(1))} - {None}


_PURE_WRITE = re.compile(r"^(mov[a-z]*|set[a-z]+|stos[bwlq]?|movnti|pop[a-z]?|cmov[a-z]+)$")
_READ_ONLY_DST = re.compile(r"^(cmp[a-z]?|test[a-z]?|bt[wlq]?|div[a-z]?|idiv[a-z]?|mul[a-z]?|"
                            r"imul[a-z]?|push[a-z]?|prefetch[a-z0-9]*|clflush[a-z]*)$")


def _split_ops(s: str) -> list[str]:
    out, depth, cur = [], 0, ""
    for ch in s:
        if ch == "(":
            depth += 1
        elif ch == ")":
            depth -= 1
        if ch == "," and depth == 0:
            out.append(cur.strip())
            cur = ""
        else:
            cur += ch
    if cur.strip():
        out.append(cur.strip())
    return out


def mem_role(node, b=None) -> tuple[bool, bool]:
    """(reads_mem, writes_mem) from an x86 AT&T operand-position parse, independent
    of the coarse opcode category. NOTE the spec builder's own _reads_mem misses
    every cmov/bsf/bt-style memory read (they classify MOVE/OTHER), so we do not
    reuse it. lea is not a memory access."""
    ins = node.raw_instruction.strip()
    parts = ins.split(None, 1)
    if not parts:
        return False, False
    mn = parts[0].lower()
    if mn == "lock" and len(parts) > 1:
        parts = parts[1].split(None, 1)
        mn = parts[0].lower()
    if mn.startswith("lea") or len(parts) < 2:
        return False, False
    ops = _split_ops(parts[1])
    mpos = [i for i, o in enumerate(ops) if "(" in o and not o.startswith("$")]
    if not mpos:
        return False, False
    if mn.startswith("cmov"):
        return True, False
    if mpos[0] < len(ops) - 1:          # memory is a source operand
        return True, mn.startswith("xchg") or mn.startswith("xadd")
    # memory is the destination (or the only operand)
    if _READ_ONLY_DST.match(mn):
        return True, False
    if _PURE_WRITE.match(mn):
        return False, True
    return True, True                    # read-modify-write


def graph_stats(pdg, rec) -> dict:
    """Per-graph structural statistics on the tensor-visible graph."""
    b = builder(rec.get("arch", "unknown"))
    eng = b.engine
    tv = tensor_view(pdg)
    n = tv["n_nodes"]
    nodes = pdg.nodes[:n]
    edges = [e for e in pdg.edges if e.src < n and e.dst < n][:MAX_EDGES]
    s: dict = {"n_nodes": n, "n_edges": len(edges),
               "trunc_nodes": int(tv["n_nodes_raw"] > MAX_NODES),
               "trunc_edges": int(tv["n_edges_after_node_trunc"] > MAX_EDGES)}
    ec = Counter(e.edge_type for e in edges)
    for i, name in enumerate(EDGE_NAMES):
        s[f"e_{name}"] = ec.get(i, 0)
        s[f"f_{name}"] = ec.get(i, 0) / max(len(edges), 1)
    s["edges_per_node"] = len(edges) / max(n, 1)
    cats = Counter(nd.opcode_category for nd in nodes)
    for c in ("LOAD", "STORE", "BRANCH_COND", "FENCE", "CACHE", "TIMING", "OTHER", "MOVE",
              "ARITHMETIC", "LOGIC"):
        s[f"c_{c}"] = cats.get(pb.OPCODE_CATEGORIES[c], 0) / max(n, 1)
    flags = np.array([nd.spec_flags for nd in nodes]) if nodes else np.zeros((1, 14))
    for f in ("is_secret_source", "is_transmitter", "is_cache_probe", "is_timing_source",
              "is_lfence", "is_verw", "is_serializing"):
        s[f"flag_{f}"] = float(flags[:, pb.SPEC_FLAGS[f]].sum())
    # DATA_DEP sub-graph
    dd = [(e.src, e.dst) for e in edges if e.edge_type == pb.EDGE_TYPES["DATA_DEP"]]
    indeg, outdeg = np.zeros(n), np.zeros(n)
    succ = defaultdict(list)
    for u, v in dd:
        indeg[v] += 1
        outdeg[u] += 1
        succ[u].append(v)
    s["dd_in_mean"], s["dd_in_max"] = float(indeg.mean()), float(indeg.max())
    s["dd_out_max"] = float(outdeg.max())
    s["dd_isolated_frac"] = float(((indeg + outdeg) == 0).mean())
    # longest DATA_DEP path (edges go forward -> DAG in index order)
    L = np.zeros(n)
    pred = defaultdict(list)
    for u, v in dd:
        pred[v].append(u)
    for v in range(n):
        if pred[v]:
            L[v] = max(L[u] for u in pred[v]) + 1
    s["dd_longest_path"] = float(L.max())
    # weakly connected components of DATA_DEP-only graph (singletons count)
    parent = list(range(n))

    def find(x):
        while parent[x] != x:
            parent[x] = parent[parent[x]]
            x = parent[x]
        return x
    for u, v in dd:
        parent[find(u)] = find(v)
    roots = Counter(find(i) for i in range(n))
    s["dd_components"] = len(roots)
    s["dd_components_nontrivial"] = sum(1 for c in roots.values() if c > 1)
    s["dd_largest_comp_frac"] = max(roots.values()) / max(n, 1)
    # semantic memory roles + address-dependence motifs
    rw = [mem_role(nd, b) for nd in nodes]
    ar = [addr_regs(nd, eng) for nd in nodes]
    s["sem_reads"] = sum(r for r, _ in rw) / max(n, 1)
    s["sem_writes"] = sum(w for _, w in rw) / max(n, 1)
    s["sem_reads_not_LOAD"] = (sum(1 for nd, (r, _) in zip(nodes, rw)
                                   if r and nd.opcode_category != pb.OPCODE_CATEGORIES["LOAD"])
                               / max(1, sum(r for r, _ in rw)))
    # reaching-def map (same rule the builder uses: last def of a register)
    last_def: dict = {}
    reach = [dict() for _ in range(n)]  # reg -> def node, for address regs only
    for i, nd in enumerate(nodes):
        for r_ in ar[i]:
            if r_ in last_def:
                reach[i][r_] = last_def[r_]
        for d in nd.dest_regs:
            last_def[d] = i
    # load(semantic read with reg def) -> address of a later mem access, k hops via ALU
    is_alu = {pb.OPCODE_CATEGORIES[c] for c in ("ARITHMETIC", "LOGIC", "SHIFT", "MOVE", "OTHER")}

    def origin_reads(i, k):
        """Set of semantic-read nodes reaching node i's address within <=k def hops."""
        out, frontier = set(), set(reach[i].values())
        for _ in range(k):
            nxt = set()
            for u in frontier:
                if rw[u][0] and nodes[u].dest_regs:
                    out.add(u)
                elif nodes[u].opcode_category in is_alu and not rw[u][0]:
                    nxt |= set(pred[u])
            frontier = nxt
        return out
    l2a1 = l2a3 = l2a3_ld = 0
    for i in range(n):
        if not ar[i] or not (rw[i][0] or rw[i][1]):
            continue
        o1, o3 = origin_reads(i, 1), origin_reads(i, 3)
        l2a1 += bool(o1)
        l2a3 += bool(o3)
        l2a3_ld += bool(o3) and rw[i][0]
    s["motif_load_addr_direct"] = l2a1
    s["motif_load_addr_k3"] = l2a3          # read -> (ALU)* -> address of a mem access
    s["motif_load_addr_k3_read"] = l2a3_ld  # ... where the sink also READS (transmit)
    # model-visible DATA_DEP endpoint pairs
    cat = [nd.opcode_category for nd in nodes]
    LD, ST = pb.OPCODE_CATEGORIES["LOAD"], pb.OPCODE_CATEGORIES["STORE"]
    s["dd_LOAD_LOAD"] = sum(1 for u, v in dd if cat[u] == LD and cat[v] == LD)
    s["dd_semread_semread"] = sum(1 for u, v in dd if rw[u][0] and rw[v][0])
    mo = [(e.src, e.dst) for e in edges if e.edge_type == pb.EDGE_TYPES["MEMORY_ORDER"]]
    s["mo_store_load"] = sum(1 for u, v in mo if cat[u] == ST and cat[v] == LD)
    s["mo_span_mean"] = float(np.mean([v - u for u, v in mo])) if mo else 0.0
    return s


def wl_bag(pdg, h: int = 3, node_label: str = "cat", drop_cf: bool = False,
           strip_triggers: bool = False) -> Counter:
    """Weisfeiler-Lehman subtree bag (multi-relational: neighbour label tagged by
    edge type + direction). node_label: 'cat' | 'catmem' | 'full' (+spec flags)."""
    n = min(len(pdg.nodes), MAX_NODES)
    nodes = pdg.nodes[:n]
    edges = [e for e in pdg.edges if e.src < n and e.dst < n][:MAX_EDGES]
    TRIG = {pb.OPCODE_CATEGORIES[c] for c in ("FENCE", "CACHE", "TIMING")}
    TRIG_FLAGS = {pb.SPEC_FLAGS[f] for f in ("is_serializing", "is_cache_probe",
                  "is_timing_source", "is_lfence", "is_mfence_or_sfence", "is_verw",
                  "is_prefetch", "is_nontemp_load")}
    labels = []
    for nd in nodes:
        c = nd.opcode_category
        if strip_triggers and c in TRIG:
            c = pb.OPCODE_CATEGORIES["OTHER"]
        lab = CAT[c]
        if node_label in ("catmem", "full"):
            lab += "|" + MEM[nd.mem_access_type]
        if node_label == "full":
            fl = [FLAG[i] for i in range(len(nd.spec_flags)) if nd.spec_flags[i]
                  and not (strip_triggers and i in TRIG_FLAGS)]
            lab += "|" + ",".join(fl)
        labels.append(lab)
    adj = defaultdict(list)
    for e in edges:
        if drop_cf and e.edge_type == pb.EDGE_TYPES["CONTROL_FLOW"]:
            continue
        if strip_triggers and e.edge_type in (pb.EDGE_TYPES["FENCE_BOUNDARY"],
                                              pb.EDGE_TYPES["CACHE_TEMPORAL"]):
            continue
        adj[e.dst].append((f"<{ET[e.edge_type][:4]}", e.src))
        adj[e.src].append((f">{ET[e.edge_type][:4]}", e.dst))
    bag = Counter(f"0:{l}" for l in labels)
    cur = labels
    for it in range(1, h + 1):
        nxt = []
        for i in range(n):
            neigh = sorted(f"{t}{cur[j]}" for t, j in adj[i])
            nxt.append(hashlib.md5(repr((cur[i], neigh)).encode()).hexdigest()[:10])
        cur = nxt
        bag.update(f"{it}:{l}" for l in cur)
    return bag


def cluster_boot_diff(x: np.ndarray, y: np.ndarray, gx: list, gy: list,
                      n_boot: int = 2000, seed: int = 0):
    """Hedges-g style SMD (x - y)/pooled sd, CI by resampling GROUPS within each class."""
    rng = np.random.default_rng(seed)

    def smd(a, b):
        sd = np.sqrt((a.var(ddof=1) * (len(a) - 1) + b.var(ddof=1) * (len(b) - 1))
                     / max(len(a) + len(b) - 2, 1))
        return (a.mean() - b.mean()) / sd if sd > 0 else 0.0
    def by_group(v, g):
        d = defaultdict(list)
        for vi, gi in zip(v, g):
            d[gi].append(vi)
        return [np.array(a) for a in d.values()]
    GX, GY = by_group(x, gx), by_group(y, gy)
    point = smd(x, y)
    boots = []
    for _ in range(n_boot):
        a = np.concatenate([GX[i] for i in rng.integers(0, len(GX), len(GX))])
        b_ = np.concatenate([GY[i] for i in rng.integers(0, len(GY), len(GY))])
        if len(a) > 1 and len(b_) > 1:
            boots.append(smd(a, b_))
    lo, hi = np.percentile(boots, [2.5, 97.5]) if boots else (np.nan, np.nan)
    return point, lo, hi
