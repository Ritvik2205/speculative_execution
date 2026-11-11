#!/usr/bin/env python3
"""Pair benchmark: each item is a leaking sequence and a non-leaking sequence that
share everything except the property.

Three sources
  hw        hardware-labelled Revizor variants of one program (leak = violation on
            the i5 in every run, safe = none); every (leaking, mitigated) variant
            combination of a program is a pair
  linux     kernel functions before and after a Spectre-v1 patch; the label is the
            patch, not an oracle
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
LINUX = "eval/data/realworld_patch_linux.jsonl"
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


def linux_pairs(rows: list[dict]) -> list[dict]:
    by = defaultdict(dict)
    for r in rows:
        by[(r["group"], r["file"], r["function"], r["compiler"], r["opt"])][r["side"]] = r
    out = []
    for key in sorted(by):
        s = by[key]
        if "pre" not in s or "post" not in s or s["pre"]["sequence"] == s["post"]["sequence"]:
            continue
        out.append({"pair_id": f"lx_{_h(key)}", "set": "linux", "kind": f"{key[3]}{key[4]}",
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
    ap.add_argument("what", nargs="+", choices=["hw", "linux", "injected"])
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
    if "linux" in a.what:
        ps = linux_pairs(_load(LINUX))
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
    return 0


if __name__ == "__main__":
    sys.exit(main())
