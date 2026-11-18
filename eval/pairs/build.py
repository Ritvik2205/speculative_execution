#!/usr/bin/env python3
"""Pair benchmark: each item is a leaking sequence and a non-leaking sequence that
share everything except the property.

Three sources
  hw        hardware-labelled Revizor variants of one program (leak = violation on
            the i5 in every run, safe = none); every (leaking, mitigated) variant
            combination of a program is a pair
  linux     kernel functions before and after a Spectre-v1 patch; the label is the
            patch, not an oracle. Built for x86_64 (set `linux`) and arm64
            (set `linux_arm64`)
  injected  a minimal leaking core placed in a benign body, against
              inject   the same body without it
              reorder  the same body with the core's instructions reversed
              fence    the same body with a barrier inside the core
            every side labelled by Spectector on the tainted victim; the leaking
            side must also be safe on the control (attacker-dependent)

    python3 -m eval.pairs.build hw linux            # no oracle needed
    python3 -m eval.pairs.build injected --n 300    # needs the Spectector image
"""
from __future__ import annotations

import argparse
import hashlib
import json
import random
import re
import sys
from collections import Counter, defaultdict
from pathlib import Path

ROOT = Path(__file__).resolve().parents[2]
OUT = ROOT / "eval" / "pairs" / "data"
HW_SETS = {"variants": "eval/data/revizor_hwlabel_variants.jsonl",
           "counterfactual": "eval/data/revizor_hwlabel_cf_heldout.jsonl",
           "nofence": "eval/data/revizor_hwlabel_nofence_heldout.jsonl"}
LINUX = ("eval/data/realworld_patch_linux.jsonl",          # x86_64 build
         "eval/data/realworld_patch_linux_arm64.jsonl")    # the same fix commits built for arm64
_BASE = re.compile(r"violation-\d{6}-\d{6}")


def _h(*parts) -> str:
    return hashlib.sha1(json.dumps(parts).encode()).hexdigest()[:12]


def hw_base(r: dict) -> str:
    m = _BASE.search(r.get("src_path") or r.get("group") or "")
    return f"{r['vuln_class']}::{m.group(0) if m else r.get('group')}"


def hw_pairs(rows: list[dict], set_name: str) -> list[dict]:
    by = defaultdict(lambda: ([], []))
    for r in rows:
        by[hw_base(r)][r["label"] == "BENIGN"].append(r)
    out = []
    for base in sorted(by):
        leaks, safes = by[base]
        for a in leaks:
            for b in safes:
                if a["sequence"] == b["sequence"]:
                    continue
                out.append({"pair_id": f"hw_{_h(set_name, a['sequence'], b['sequence'])}",
                            "set": set_name, "kind": f"{a['variant']}|{b['variant']}",
                            "base": base, "cls": a["vuln_class"], "label_source": "hardware",
                            "leak": a["sequence"], "safe": b["sequence"]})
    return out


POOL2 = "eval/data/revizor_hwlabel_trainpool.jsonl"


def pool2_set(variant: str) -> str:
    if variant.startswith("cf_nofence"):
        return "nofence_pool2"
    return "counterfactual_pool2" if variant.startswith("cf_") else "variants_pool2"


def pool2_pairs(rows: list[dict], first_pool: list[dict] = ()) -> list[dict]:
    """Pairs from the second set of hardware-labelled programs (the labels of i5 step 4a), built
    like the first pool and kept in sets of their own. These programs are training data of the
    trained scorers, so only rules and models that never saw them are scored here. A program
    that the first pool already has is an error: the two pools must stay disjoint."""
    by = defaultdict(list)
    for r in rows:
        by[pool2_set(r["variant"])].append(r)
    out = [p for name in sorted(by) for p in hw_pairs(by[name], name)]
    both = {p["base"] for p in out} & {p["base"] for p in first_pool}
    if both:
        raise ValueError(f"{len(both)} programs are in both pools, e.g. {sorted(both)[0]}")
    return out


def linux_pairs(rows: list[dict]) -> list[dict]:
    by = defaultdict(dict)
    for r in rows:
        by[(r["group"], r["file"], r["function"], r["compiler"], r["opt"],
            r.get("arch", "x86_64"))][r["side"]] = r
    out = []
    for key in sorted(by):
        s = by[key]
        if "pre" not in s or "post" not in s or s["pre"]["sequence"] == s["post"]["sequence"]:
            continue
        x86 = key[5] == "x86_64"          # x86 ids predate the arch field: keep them stable
        out.append({"pair_id": f"lx_{_h(key[:5] if x86 else key)}",
                    "set": "linux" if x86 else f"linux_{key[5]}", "kind": f"{key[3]}{key[4]}",
                    "base": f"{key[0]}::{key[2]}", "cls": "SPECTRE_V1", "label_source": "patch",
                    "leak": s["pre"]["sequence"], "safe": s["post"]["sequence"]})
    return out


# --- injected --------------------------------------------------------------

def inject(host: list[str], core: list[str], at: int) -> list[str]:
    return list(host[:at]) + list(core) + list(host[at:])


def reordered(core: list[str]) -> list[str]:
    return list(reversed(core))


def fenced(core: list[str]) -> list[str]:
    return [core[0], "lfence"] + list(core[1:])


def jobs(hosts: list[list[str]], cores: list[list[str]], n: int, rng: random.Random) -> list[dict]:
    out = []
    for i in range(n):
        host, core = rng.choice(hosts), rng.choice(cores)
        out.append({"id": f"j{i}", "host": list(host), "core": list(core),
                    "at": rng.randint(0, len(host))})
    return out


def injected_pairs(job: dict, verdict) -> list[dict]:
    """verdict(body, victim) -> 'leak' | 'safe' | other. Returns the pairs the
    oracle confirms: leaking side leaks and is attacker-dependent, other side safe."""
    host, core, at = job["host"], job["core"], job["at"]
    leak = inject(host, core, at)
    if verdict(leak, "tainted") != "leak" or verdict(leak, "tainted_ctl") != "safe":
        return []
    sides = {"inject": host}
    if len(core) > 1:
        sides["reorder"] = inject(host, reordered(core), at)
        sides["fence"] = inject(host, fenced(core), at)
    out = []
    for kind, safe in sides.items():
        if safe == leak or verdict(safe, "tainted") != "safe":
            continue
        out.append({"pair_id": f"inj_{_h(kind, leak, safe)}", "set": "injected", "kind": kind,
                    "base": f"host::{_h(host)}", "core": core, "cls": "SPECTRE_V1",
                    "label_source": "spectector_tainted", "leak": leak, "safe": safe})
    return out


# --- injected, version 2 ------------------------------------------------------
# Two kinds on which length, opcode counts and barrier count are equal on both sides:
#   barrier  one `lfence` on each side; the core sits before it on the leaking side and after
#            it on the safe side (positions balanced, see barrier_sides)
#   decoy    the core against the same core with one address register renamed, so the value
#            the first load brings in no longer reaches a later address
# plus `reorder` (as in version 1) on the test part only, as a kind never trained on.
# Hosts and cores are each divided into train / val / test and a pair uses one part only.

_PROTECTED = {"r15", "rsp", "rip"}          # tainted pointer of the victim, stack, instruction pointer
_GPR64 = ["rax", "rbx", "rcx", "rdx", "rsi", "rdi", "rbp", "r8", "r9", "r10", "r11", "r12", "r13", "r14"]
_MEM = re.compile(r"\(([^()]*)\)")


def _spec_paths():
    for q in (ROOT, ROOT / "gen", ROOT / "spec", ROOT / "v54"):
        if str(q) not in sys.path:
            sys.path.insert(0, str(q))


def place(host: list[str], core: list[str], fence_idx: int, core_start: int) -> list[str]:
    """Host in its own order, with `lfence` at absolute index fence_idx and the core at
    core_start .. core_start + len(core)."""
    n, k = len(host), len(core)
    taken = set(range(core_start, core_start + k))
    if fence_idx in taken or not (0 <= core_start and core_start + k <= n + k + 1 and 0 <= fence_idx <= n + k):
        raise ValueError("fence and core do not fit")
    out, h, c = [], iter(host), iter(core)
    for i in range(n + k + 1):
        out.append("lfence" if i == fence_idx else next(c) if i in taken else next(h))
    return out


def barrier_sides(host: list[str], core: list[str], rng: random.Random) -> tuple[list[str], list[str]]:
    """(leaking, safe): the same lines on both sides; the core is before the fence on the leaking
    side and after it on the safe side. Half the pairs have the leaking side's core earlier than
    the safe side's and its fence earlier too; the other half have both later. So neither "the
    core comes earlier" nor "the fence comes later" tells the sides apart: only the order of
    core and fence within a side does."""
    n, k = len(host), len(core)
    top = n + k                                   # last index of a sequence of n + k + 1 lines
    early = rng.random() < 0.5
    for _ in range(10_000):
        a, fl = rng.randint(0, top - k), rng.randint(0, top)       # leaking side: core start, fence
        b, fs = rng.randint(0, top - k + 1), rng.randint(0, top)   # safe side
        if not (a + k <= fl and fs < b and b + k <= top + 1):
            continue
        if (early and a < b and fl < fs) or (not early and a > b and fl > fs):
            return place(host, core, fl, a), place(host, core, fs, b)
    raise ValueError("host too short for this core")


def registers_of(seq: list[str]) -> set:
    _spec_paths()
    from spec import ir_defuse
    return {r for d, u in ir_defuse.defuse_for_sequence(seq, "x86_64") for r in (d | u)}


def decoy(core: list[str], rng: random.Random, prefer=None):
    """The core with one register renamed inside a memory operand, where that register was
    defined by an earlier core instruction. Mnemonics and length are unchanged. None if the
    core has no such link. With `prefer` (the 64-bit registers the sequence already names), the new
    register must come from it, else None: a fresh name on the safe side only would give the sides
    away (stage 1: test decoy safe sides had more distinct registers in 13 of 60 pairs, leaking
    sides in 0)."""
    _spec_paths()
    from spec import ir_defuse, taint_slice
    du = ir_defuse.defuse_for_sequence(core, "x86_64")
    defined, cands = set(), []
    for j, (ins, (d, _)) in enumerate(zip(core, du)):
        addr = taint_slice.address_regs_of(ins)
        for r in sorted((defined & addr) - _PROTECTED):
            if any(re.search(rf"%{r}\b", m) for m in _MEM.findall(ins)):
                cands.append((j, r, addr))
        defined |= set(d)
    if not cands:
        return None
    j, r, addr = rng.choice(cands)
    pool = [q for q in _GPR64 if q not in defined and q not in addr]
    if not pool:
        return None
    if prefer is not None:
        pool = [x for x in pool if x in prefer]
        if not pool:
            return None
    q = rng.choice(pool)
    out = list(core)
    out[j] = _MEM.sub(lambda m: "(" + re.sub(rf"%{r}\b", f"%{q}", m.group(1)) + ")", core[j])
    return out


_REGNAME = re.compile(r"%([a-z][a-z0-9]*)")


def register_names(seq: list[str]) -> set:
    """Register names as written (`%r10d` and `%r10` are different names), as a token model sees them."""
    return {m for line in seq for m in _REGNAME.findall(line.lower())}


def part_of(name: str) -> str:
    x = int(hashlib.sha1(("part:" + name).encode()).hexdigest()[:8], 16) / 2 ** 32
    return "train" if x < 0.6 else "val" if x < 0.8 else "test"


def jobs_v2(hosts: dict, cores: dict, counts: dict, seed: int, host_meta, core_meta) -> list[dict]:
    """Attempt i of a part is the same whatever the counts, so a run can be extended later."""
    out = []
    for part in ("train", "val", "test"):
        rng = random.Random(f"{seed}:{part}")
        for i in range(counts.get(part, 0)):
            host, core = rng.choice(hosts[part]), rng.choice(cores[part])
            out.append({"id": f"{part}{i}", "part": part, "host": list(host), "core": list(core),
                        "at": rng.randint(0, len(host)), "seed": rng.randrange(2 ** 31),
                        "host_cluster": host_meta(host), "template": core_meta(core)})
    return out


def injected_pairs_v2(job: dict, verdict) -> list[dict]:
    """Pairs the oracle confirms on every side. A leaking side must leak on the tainted victim
    and be safe on its control (the leak depends on the attacker). For `barrier`, the safe side
    must also leak once its fence is taken out, so the fence is what makes it safe."""
    host, core, at, part = job["host"], job["core"], job["at"], job["part"]
    out = []

    def rec(kind, leak, safe):
        out.append({"pair_id": f"inj2_{_h(kind, leak, safe)}", "set": "injected2", "kind": kind,
                    "part": part, "base": f"host::{_h(host)}", "host_cluster": job["host_cluster"],
                    "template": job["template"], "core": core, "cls": "SPECTRE_V1",
                    "label_source": "spectector_tainted", "leak": leak, "safe": safe})

    def leaks(body):
        return verdict(body, "tainted") == "leak" and verdict(body, "tainted_ctl") == "safe"

    leak0 = inject(host, core, at)
    if leaks(leak0):
        names = register_names(leak0)
        d = decoy(core, random.Random(f"{job['seed']}:decoy"), names)
        if d is not None:
            safe = inject(host, d, at)
            # the renamed register must still be named elsewhere, so both sides name the same set
            if register_names(safe) == names and verdict(safe, "tainted") == "safe":
                rec("decoy", leak0, safe)
        if part == "test" and len(core) > 1:
            safe = inject(host, reordered(core), at)
            if safe != leak0 and verdict(safe, "tainted") == "safe":
                rec("reorder", leak0, safe)
    lb, sb = barrier_sides(host, core, random.Random(f"{job['seed']}:barrier"))
    if leaks(lb) and verdict(sb, "tainted") == "safe" \
            and verdict([x for x in sb if x != "lfence"], "tainted") == "leak":
        rec("barrier", lb, sb)
    return out


def _load(p):
    return [json.loads(l) for l in open(ROOT / p) if l.strip()]


def _hosts(controls: str) -> list[list[str]]:
    """Benign bodies the tainted victim already called safe, one per distinct body."""
    seen, out = set(), []
    for r in _load(controls):
        if r["cond"].startswith("benign") and r["verdict"] == "safe" and len(r["body"]) >= 8:
            k = tuple(r["body"])
            if k not in seen:
                seen.add(k)
                out.append(r["body"])
    return out


def _cores(path: str) -> list[list[str]]:
    seen, out = set(), []
    for r in _load(path):
        k = tuple(r["core"])
        if r.get("core_control") == "safe" and k not in seen:
            seen.add(k)
            out.append(r["core"])
    return out


def summary(pairs: list[dict]) -> str:
    lines = ["| set | kind | pairs | programs | median len leak | median len safe |", "|---|---|---|---|---|---|"]
    by = defaultdict(list)
    for p in pairs:
        by[(p["set"], p["kind"])].append(p)
    med = lambda xs: sorted(xs)[len(xs) // 2]
    for (s, k), ps in sorted(by.items()):
        lines.append(f"| {s} | {k} | {len(ps)} | {len({p['base'] for p in ps})} | "
                     f"{med([len(p['leak']) for p in ps])} | {med([len(p['safe']) for p in ps])} |")
    return "\n".join(lines)


def main(argv=None):
    ap = argparse.ArgumentParser(description=__doc__.split("\n")[0])
    ap.add_argument("what", nargs="+", choices=["hw", "hw2", "linux", "injected", "injected2"])
    ap.add_argument("--n-train", type=int, default=0, help="injected2: attempts from train hosts and cores")
    ap.add_argument("--n-val", type=int, default=0)
    ap.add_argument("--n-test", type=int, default=0)
    ap.add_argument("--out-dir", default=str(OUT / "v2"), help="injected2 output (kept out of the "
                    "pairs_*.jsonl files that the reports read)")
    ap.add_argument("--n", type=int, default=300, help="injection attempts")
    ap.add_argument("--seed", type=int, default=0)
    ap.add_argument("--workers", type=int, default=8)
    ap.add_argument("--controls", default="gen/step2_runs/t1_controls.jsonl")
    ap.add_argument("--cores", default="gen/step2_runs/t1_cores.jsonl")
    a = ap.parse_args(argv)
    OUT.mkdir(parents=True, exist_ok=True)
    if "hw" in a.what:
        ps = [p for name, path in HW_SETS.items() for p in hw_pairs(_load(path), name)]
        (OUT / "pairs_hw.jsonl").write_text("".join(json.dumps(p) + "\n" for p in ps))
        print(summary(ps))
    if "hw2" in a.what:      # own folder: the reports read every pairs_*.jsonl directly under OUT
        first = _load(OUT / "pairs_hw.jsonl")
        ps = pool2_pairs(_load(POOL2), first)
        (OUT / "pool2").mkdir(exist_ok=True)
        (OUT / "pool2" / "pairs_hw_pool2.jsonl").write_text("".join(json.dumps(p) + "\n" for p in ps))
        print(summary(ps))
    if "linux" in a.what:
        ps = linux_pairs([r for f in LINUX if (ROOT / f).exists() for r in _load(f)])
        (OUT / "pairs_linux.jsonl").write_text("".join(json.dumps(p) + "\n" for p in ps))
        print(summary(ps))
    if "injected" in a.what:
        for q in (ROOT, ROOT / "gen", ROOT / "spec", ROOT / "v54"):
            if str(q) not in sys.path:
                sys.path.insert(0, str(q))
        from concurrent.futures import ThreadPoolExecutor
        import minimality_gate as mg
        js = jobs(_hosts(a.controls), _cores(a.cores), a.n, random.Random(a.seed))
        tally = Counter()

        def go(job):
            ps = injected_pairs(job, lambda body, victim: mg.gate_verdict(
                body, "SPECTRE_V1", tag="pj", victim=victim))
            tally[",".join(sorted(p["kind"] for p in ps)) or "none"] += 1
            return ps
        with ThreadPoolExecutor(a.workers) as ex:
            ps = [p for group in ex.map(go, js) for p in group]
        ps = list({p["pair_id"]: p for p in ps}.values())
        (OUT / "pairs_injected.jsonl").write_text("".join(json.dumps(p) + "\n" for p in ps))
        print(f"{len(js)} attempts -> {dict(tally)}")
        print(summary(ps))
    if "injected2" in a.what:
        _spec_paths()
        from concurrent.futures import ThreadPoolExecutor
        import minimality_gate as mg
        from v57 import neardup
        hosts = _hosts(a.controls)
        cl = neardup.clusters([{"arch": "x86_64", "sequence": h, "group": None} for h in hosts], 0.8)
        rep = {}
        for h, c in zip(hosts, cl):                    # a cluster is named by its first host, not its index
            rep.setdefault(c, "H" + _h(h))
        hname = {tuple(h): rep[c] for h, c in zip(hosts, cl)}
        tname = {tuple(r["core"]): "T" + r["template"] for r in _load(a.cores)}
        cores = _cores(a.cores)
        hp, cp = defaultdict(list), defaultdict(list)
        for h in hosts:
            hp[part_of(hname[tuple(h)])].append(h)
        for c in cores:
            cp[part_of(tname[tuple(c)])].append(c)
        js = jobs_v2(hp, cp, {"train": a.n_train, "val": a.n_val, "test": a.n_test}, a.seed,
                     lambda h: hname[tuple(h)], lambda c: tname[tuple(c)])
        out_dir = Path(a.out_dir)
        out_dir.mkdir(parents=True, exist_ok=True)
        done_file = out_dir / f"attempts_seed{a.seed}.jsonl"       # one line per finished attempt: reruns resume
        done = {json.loads(l)["id"] for l in done_file.read_text().splitlines()} if done_file.exists() else set()
        todo = [j for j in js if j["id"] not in done]
        print(f"{len(js)} attempts ({len(done & {j['id'] for j in js})} already done); hosts per part "
              f"{ {k: len(v) for k, v in hp.items()} }, cores per part { {k: len(v) for k, v in cp.items()} }")
        import threading
        lock = threading.Lock()

        def go2(job):
            calls = [0]

            def verdict(body, victim):
                calls[0] += 1
                return mg.gate_verdict(body, "SPECTRE_V1", tag="p2", victim=victim)
            ps = injected_pairs_v2(job, verdict)
            with lock:
                with (out_dir / f"pairs_injected2_{job['part']}.jsonl").open("a") as f:
                    for p in ps:
                        f.write(json.dumps(p) + "\n")
                with done_file.open("a") as f:
                    f.write(json.dumps({"id": job["id"], "part": job["part"], "calls": calls[0],
                                        "kinds": sorted(p["kind"] for p in ps)}) + "\n")
        with ThreadPoolExecutor(a.workers) as ex:
            list(ex.map(go2, todo))
        att = [json.loads(l) for l in done_file.read_text().splitlines()]
        print("attempts by outcome:", dict(Counter((x["part"], ",".join(x["kinds"]) or "none") for x in att)))
        print("oracle calls:", sum(x["calls"] for x in att))
        ps = [p for part in ("train", "val", "test") for f in [out_dir / f"pairs_injected2_{part}.jsonl"]
              if f.exists() for p in map(json.loads, f.read_text().splitlines())]
        print(summary([{**p, "kind": p["part"] + " " + p["kind"]} for p in {p["pair_id"]: p for p in ps}.values()]))
    return 0


if __name__ == "__main__":
    sys.exit(main())
