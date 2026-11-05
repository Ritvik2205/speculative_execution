#!/usr/bin/env python3
"""eval/graph_anatomy/groundtruth_anatomy.py — what in the CODE of a real
Revizor gadget distinguishes MDS / L1TF / SPECTRE_V4 / SPECTRE_V1?

Read-only analysis of local data. Prints the numbers quoted in
groundtruth_report.md:

  A. address form: every memory operand is `(%r14,%reg)` after an
     `and $0x1fff|$0x1ff8` mask, i.e. WHICH page an access hits (main vs the
     faulty/assist page) is set by the input register value, not the code.
  B. cross-class (near-)duplicates in the shared-config corpus (opcode 3-gram
     Jaccard nearest neighbour, same-class vs other-class).
  C. leak windows from Revizor's fence pass (`cf_fencepass` variants: lfences
     were inserted wherever the violation survived, so the lfence-free runs
     are the instructions the violation needs to execute back-to-back).
     Per class: window length, loads/stores/RMW, load->address taint
     (load result reaches a later address = transmit), store->load with the
     same address register (SSB proxy), jcc in window.
  D. MDS vs L1TF separability on the window features (group-CV LR).

Usage: python3 eval/graph_anatomy/groundtruth_anatomy.py
"""
from __future__ import annotations

import ast
import collections
import json
import re
import statistics
from pathlib import Path

ROOT = Path(__file__).resolve().parents[2]
DATA = ROOT / "eval" / "data"

MASK_RE = re.compile(r"^and[bwlq]?\s+\$(0x1fff|0x1ff8|0x7|-0x8|0x3|0x1f|0x3f)\b")
MEM_RE = re.compile(r"(-?0x[0-9a-f]+|-?\d+)?\((%\w+)?(?:,(%\w+))?(?:,\d)?\)")
REG_RE = re.compile(r"%([a-z0-9]+)")

# canonical 64-bit register family
FAM = {}
for base, names in {
    "rax": "rax eax ax al ah", "rbx": "rbx ebx bx bl bh", "rcx": "rcx ecx cx cl ch",
    "rdx": "rdx edx dx dl dh", "rsi": "rsi esi si sil", "rdi": "rdi edi di dil",
    "rbp": "rbp ebp bp bpl", "rsp": "rsp esp sp spl",
}.items():
    for n in names.split():
        FAM[n] = base
for i in range(8, 16):
    for suf in ("", "d", "w", "b"):
        FAM[f"r{i}{suf}"] = f"r{i}"

READ_ONLY_MEM = re.compile(r"^(cmp|test|bt[wlq]?\b|bt$)")
PURE_STORE = re.compile(r"^(mov[bwlq]?|movabs)$")
NO_DEST = re.compile(r"^(cmp|test|bt[wlq]?$|bt$|push)")
JCC = re.compile(r"^(j(?!mp)[a-z]+|loop[a-z]*|jrcxz|jecxz)$")


def seq_of(rec):
    s = rec["sequence"]
    return ast.literal_eval(s) if isinstance(s, str) else list(s)


def load(name):
    p = DATA / name
    return [json.loads(l) for l in p.open()] if p.exists() else []


def fam(r):
    return FAM.get(r, r)


def parse(ins):
    """-> dict(op, mem(base,index) or None, reads_mem, writes_mem, src_regs, dst_reg)"""
    ins = ins.strip()
    if ins.startswith("lock "):
        ins = ins[5:].strip()
    parts = ins.split(None, 1)
    op = parts[0]
    args = parts[1] if len(parts) > 1 else ""
    # split operands on top-level commas
    ops, depth, cur = [], 0, ""
    for ch in args:
        if ch == "(":
            depth += 1
        elif ch == ")":
            depth -= 1
        if ch == "," and depth == 0:
            ops.append(cur.strip()); cur = ""
        else:
            cur += ch
    if cur.strip():
        ops.append(cur.strip())
    mem = None
    mem_idx = None
    for i, o in enumerate(ops):
        m = MEM_RE.search(o)
        if m and "(" in o and not op.startswith("lea"):
            mem = (m.group(2), m.group(3)); mem_idx = i
    reads_mem = writes_mem = False
    if mem is not None:
        is_dest = mem_idx == len(ops) - 1
        if not is_dest:
            reads_mem = True
        else:
            if READ_ONLY_MEM.match(op) or len(ops) == 1 and re.match(r"^(i?mul|i?div)", op):
                reads_mem = True
            elif PURE_STORE.match(op):
                writes_mem = True
            else:
                reads_mem = writes_mem = True  # RMW
    regs = []
    for o in ops:
        if "(" in o:
            continue
        regs += [fam(r) for r in REG_RE.findall(o)]
    dst = None
    if ops and "(" not in ops[-1] and REG_RE.search(ops[-1]) and not NO_DEST.match(op):
        dst = fam(REG_RE.search(ops[-1]).group(1))
    src = set(regs)
    if dst and (PURE_STORE.match(op) or op.startswith("lea")) and len(ops) == 2:
        src.discard(dst)
        src |= {fam(r) for r in REG_RE.findall(ops[0])}
    addr = {fam(r[1:]) for r in (mem or ()) if r} - {"r14"}
    return dict(op=op, mem=mem, addr=addr, reads_mem=reads_mem,
                writes_mem=writes_mem, src=src, dst=dst, raw=ins)


def is_instr(ins):
    return bool(MASK_RE.match(ins.strip()))


# ---------------------------------------------------------------- A
def section_a(recs_by_cls):
    print("\n## A. address form (shared-config corpus)")
    for cls, recs in recs_by_cls.items():
        n_mem = n_r14 = n_masked = 0
        masks = collections.Counter()
        for r in recs:
            s = seq_of(r)
            last_mask = {}
            for i, ins in enumerate(s):
                m = re.match(r"^and[bwlq]?\s+\$(0x1fff|0x1ff8),\s*%(\w+)", ins)
                if m:
                    last_mask[fam(m.group(2))] = m.group(1)
                    continue
                p = parse(ins)
                if p["mem"] is None:
                    continue
                n_mem += 1
                if p["mem"][0] == "%r14":
                    n_r14 += 1
                    a = list(p["addr"])
                    if a and a[0] in last_mask:
                        n_masked += 1; masks[last_mask[a[0]]] += 1
        print(f"{cls:11s} mem operands {n_mem:5d}  r14-based {n_r14/n_mem:.3f}  "
              f"index masked to 0x1fff/0x1ff8 {n_masked/n_mem:.3f}  masks {dict(masks)}")


# ---------------------------------------------------------------- B
def opc(ins):
    return parse(ins)["op"].rstrip("bwlq") if not is_instr(ins) else "MASK"


def section_b(recs_by_cls):
    print("\n## B. nearest neighbour (opcode-3gram Jaccard), shared corpus")
    items = []
    for cls, recs in recs_by_cls.items():
        for r in recs:
            ops = [opc(x) for x in seq_of(r)]
            g = {tuple(ops[i:i + 3]) for i in range(len(ops) - 2)}
            items.append((cls, r["group"], g, tuple(seq_of(r))))
    exact = collections.Counter(it[3] for it in items)
    print("exact duplicate sequences:", sum(1 for v in exact.values() if v > 1))
    res = collections.defaultdict(lambda: {"same": [], "other": [], "nn_same": 0})
    for i, (c, g_, s, _) in enumerate(items):
        best_same = best_other = 0.0
        for j, (c2, g2, s2, _) in enumerate(items):
            if i == j:
                continue
            jac = len(s & s2) / max(1, len(s | s2))
            if c2 == c:
                best_same = max(best_same, jac)
            else:
                best_other = max(best_other, jac)
        res[c]["same"].append(best_same); res[c]["other"].append(best_other)
        res[c]["nn_same"] += best_same > best_other
    for c, d in res.items():
        print(f"{c:11s} n={len(d['same']):3d} median NN-jaccard same-class "
              f"{statistics.median(d['same']):.3f} other-class {statistics.median(d['other']):.3f}"
              f"  NN is same class {d['nn_same']}/{len(d['same'])}")


# ---------------------------------------------------------------- C
def windows(seq):
    """lfence-free runs of a fence-passed program (body instrs only)."""
    runs, cur = [], []
    for ins in seq:
        if ins.strip() == "lfence":
            if cur:
                runs.append(cur)
            cur = []
        else:
            cur.append(ins)
    if cur:
        runs.append(cur)
    return runs


def window_feats(win):
    body = [x for x in win if not is_instr(x)]
    ps = [parse(x) for x in body]
    loads = sum(p["reads_mem"] and not p["writes_mem"] for p in ps)
    stores = sum(p["writes_mem"] and not p["reads_mem"] for p in ps)
    rmw = sum(p["reads_mem"] and p["writes_mem"] for p in ps)
    jcc = sum(bool(JCC.match(p["op"])) for p in ps)
    # taint: load results -> later address register (transmit)
    taint, transmit = set(), 0
    for p in ps:
        if p["mem"] is not None and p["addr"] & taint:
            transmit += 1
        new = set()
        if p["reads_mem"] and p["dst"]:
            new.add(p["dst"])
        if p["dst"] and (p["src"] & taint):
            new.add(p["dst"])
        if p["dst"] and not new and p["dst"] in taint and PURE_STORE.match(p["op"]):
            taint.discard(p["dst"])
        taint |= new
    # store -> later load through the same (unredefined) address register
    st_ld = 0
    for i, p in enumerate(ps):
        if not p["writes_mem"]:
            continue
        for q in ps[i + 1:]:
            if q["dst"] in p["addr"]:
                break
            if q["reads_mem"] and q["addr"] == p["addr"] and p["addr"]:
                st_ld += 1; break
    return dict(n=len(body), loads=loads, stores=stores, rmw=rmw, jcc=jcc,
                mem=loads + stores + rmw, transmit=transmit, st_ld=st_ld)


def section_c():
    print("\n## C. leak windows from Revizor's fence pass (cf_fencepass, hardware-confirmed still leaking)")
    recs = [r for r in load("revizor_hwlabel_cf_heldout.jsonl")
            if r["variant"] == "cf_fencepass" and r["label"] != "BENIGN"]
    by = collections.defaultdict(list)
    for r in recs:
        s = seq_of(r)
        n_fence = sum(x.strip() == "lfence" for x in s)
        ws = windows(s)
        # windows with >=1 memory op; the leak needs a contiguous fence-free run
        feats = [window_feats(w) for w in ws]
        longest = max(feats, key=lambda f: (f["n"], f["mem"]))
        agg = dict(longest)
        agg["n_fence"] = n_fence
        agg["n_body"] = sum(1 for x in s if x.strip() != "lfence" and not is_instr(x))
        agg["any_transmit"] = int(any(f["transmit"] for f in feats))
        agg["any_st_ld"] = int(any(f["st_ld"] for f in feats))
        agg["any_jcc_win"] = int(any(f["jcc"] for f in feats))
        agg["example"] = [x for x in max(ws, key=len)]
        agg["group"] = r["group"]
        by[r["vuln_class"]].append(agg)
    keys = ["n_body", "n_fence", "n", "mem", "loads", "stores", "rmw", "transmit", "st_ld"]
    print("medians of the LONGEST lfence-free window; any_* = fraction of programs with it in any window")
    print(f"{'class':11s} N  " + " ".join(f"{k:>8s}" for k in keys) + "  any_transmit any_st_ld any_jcc")
    for c in sorted(by):
        v = by[c]
        med = [statistics.median(x[k] for x in v) for k in keys]
        print(f"{c:11s} {len(v):2d} " + " ".join(f"{m:8.1f}" for m in med)
              + f"  {sum(x['any_transmit'] for x in v)/len(v):11.2f} "
                f"{sum(x['any_st_ld'] for x in v)/len(v):9.2f} {sum(x['any_jcc_win'] for x in v)/len(v):7.2f}")
    for c in sorted(by):
        ex = min(by[c], key=lambda x: x["n"] if x["n"] > 1 else 99)
        print(f"\n[{c}] program with the shortest leak window ({ex['group']}), that window:")
        print("   " + "\n   ".join(ex["example"]))
    return by


# ---------------------------------------------------------------- D
def section_d(by):
    print("\n## D. MDS vs L1TF from the leak-window features (5-fold x5 seeds, LR)")
    try:
        from sklearn.linear_model import LogisticRegression
        from sklearn.model_selection import cross_val_predict, StratifiedKFold
        from sklearn.metrics import balanced_accuracy_score
        from sklearn.preprocessing import StandardScaler
        from sklearn.pipeline import make_pipeline
    except ImportError:
        print("sklearn missing; skipped"); return
    arms = {
        "counts (n,mem,loads,stores,rmw,transmit,st_ld)":
            lambda x: [x[k] for k in ("n", "mem", "loads", "stores", "rmw", "transmit", "st_ld")],
        "program length only (n_body)": lambda x: [x["n_body"]],
        "length-free fractions (per window instr)":
            lambda x: [x[k] / max(1, x["n"]) for k in ("mem", "loads", "stores", "rmw", "transmit", "st_ld")],
    }
    y = [c for c in ("MDS", "L1TF") for _ in by.get(c, [])]
    rows = [x for c in ("MDS", "L1TF") for x in by.get(c, [])]
    print(f"n MDS={y.count('MDS')} L1TF={y.count('L1TF')} (chance 0.5)")
    for name, f in arms.items():
        X = [f(x) for x in rows]
        scores = []
        for seed in range(5):
            cv = StratifiedKFold(5, shuffle=True, random_state=seed)
            pred = cross_val_predict(make_pipeline(StandardScaler(), LogisticRegression(
                class_weight="balanced", max_iter=2000)), X, y, cv=cv)
            scores.append(balanced_accuracy_score(y, pred))
        print(f"  {name:48s} bal.acc {statistics.mean(scores):.3f} ± {statistics.pstdev(scores):.3f}")
    print("NOTE: window length is partly a fence-pass/campaign artefact "
          "(L1TF dirs are mostly per-class-config programs of 16 instrs).")


def main():
    shared = collections.OrderedDict()
    for c in ("mds", "l1tf", "spectre_v4", "spectre_v1"):
        shared[c.upper()] = load(f"revizor_{c}_shared.jsonl")
    section_a(shared)
    section_b(shared)
    by = section_c()
    section_d(by)


if __name__ == "__main__":
    main()
