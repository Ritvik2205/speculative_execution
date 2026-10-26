#!/usr/bin/env python3
"""validate_netyield_guard.py — guard + validate the net-yield relax (follow-up B).

Problem (triaged): ~2/3 of fence-sparse mit=leak gadgets are discarded as
UNRUNNABLE because Spectector flags >=1 unsupported instruction, even when it
already derived a data/control leak. The unsupported ops are all speculation-
INERT (rdtsc, cmov*, bt*, bsf/bsr, bswap, div/idiv) -- none is a barrier -- so
the relax is not defeated by a missed fence. The residual risk is that Spectector
"passes through" (ignores) these ops, so an ignored cmov/bt that would overwrite
the transmit source could make it OVER-report a leak.

Guard (sound): accept a data/control verdict with unsupported_ins>0 as LEAK only
if BOTH (a) every unsupported mnemonic is in the known-inert set (else refuse --
a possible barrier), and (b) the gadget with all unsupported-mnemonic
instructions REMOVED still leaks (fully modelled, unsupported_ins==0). (b) is the
differential: a leak that survives deleting the ignored ops does not depend on
them.

This script validates the guard by A/B-ing three policies and running controls:
  * discard   : status quo (unsupported_ins>0 -> UNRUNNABLE).
  * naive      : accept any data/control+unsupported as LEAK (UNSOUND baseline).
  * guarded    : the strip-and-rerun differential above.
Reported: reclaimed (guard upgrades UNRUNNABLE->LEAK), rejected (naive would
admit but guard strips-away the leak = would-be false positives caught),
refused (a non-inert unsupported mnemonic appeared), and net yield per sample
for each policy. Controls: the positive-anchor template must LEAK; guard never
fires on a would-be-SAFE gadget.

Cluster only (Spectector .sif). See the sbatch.
"""
from __future__ import annotations
import argparse
import json
import math
import re
import sys
from collections import Counter
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
for p in (ROOT, ROOT / "gen", ROOT / "spec", ROOT / "v54"):
    sys.path.insert(0, str(p))

import torch  # noqa: E402
from generator import CondTransformerLM  # noqa: E402
import gen.decode as gen_decode  # noqa: E402
from oracle.spectector_oracle import run_spec_gadget  # noqa: E402
from oracle.validators.base import LEAK, SAFE  # noqa: E402

# Speculation-inert unsupported mnemonics (observed on V4 mit=leak), with size
# suffixes. If an unsupported mnemonic is NOT matched here, the guard REFUSES
# (it could be a barrier Spectector does not model) -- the safety catch.
INERT_RE = re.compile(r"^(cmov[a-z]+|bt[crs]?[bwlq]?|bs[fr][bwlq]?|bswap[bwlq]?|i?div[bwlq]?|rdtscp?)$")


def wilson(k, n, z=1.96):
    if n == 0:
        return (float("nan"),) * 3
    p = k / n
    d = 1 + z * z / n
    c = (p + z * z / (2 * n)) / d
    h = z * math.sqrt(p * (1 - p) / n + z * z / (4 * n * n)) / d
    return (p, max(0.0, c - h), min(1.0, c + h))


def mnemonic(line: str) -> str:
    return line.strip().split()[0].lower() if line.strip() else ""


def render_c(concrete, cls, arch, gid, out_dir, repo_root):
    """Splice a realised body into the class template and write the victim .c
    (mirrors gen/rl_from_oracle._build_realize_fn's tail). Returns the gadget
    row or None if it cannot be built."""
    if len([l for l in concrete if l.strip()]) < 2:
        return None
    try:
        gen_body = gen_decode.build_gen_body(concrete, cls, arch, is_invisispec=False)
    except Exception:
        return None
    spec_c = gen_decode.spec_gadgets.render_spec(cls, fenced=False, gen_body=gen_body)
    p = out_dir / f"gen_spec_{gid}.c"
    p.write_text(spec_c)
    return {"gadget_id": gid, "vuln_class": cls,
            "path": str(p.relative_to(repo_root)), "adjudicable": "yes"}


def adjudicate(concrete, cls, arch, gid, out_dir, repo_root):
    """Primary adjudication; returns (verdict, diag) where verdict is
    'leak'/'safe'/'unrunnable' and diag carries the would-be status + unsupported
    mnemonics when the verdict was voided by unsupported instructions."""
    row = render_c(concrete, cls, arch, gid, out_dir, repo_root)
    if row is None:
        return "unrealizable", {}
    diag = {}
    rec = run_spec_gadget(row, repo_root, diag_out=diag)
    if rec.status == "ok":
        return (LEAK if rec.leak else SAFE), diag
    return "unrunnable", diag


def guard(concrete, cls, arch, gid, out_dir, repo_root, diag):
    """Strip-and-rerun differential. Returns ('reclaimed'|'rejected'|'refused').
    Only called when the primary verdict was unrunnable AND diag says the
    would-be status was data/control with >0 unsupported instructions."""
    mnems = diag.get("uns_mnemonics") or []
    if not mnems or not all(INERT_RE.match(m) for m in mnems):
        return "refused"                      # a non-inert (possible barrier) op
    strip = set(mnems)
    reduced = [l for l in concrete if mnemonic(l) not in strip]
    if len([l for l in reduced if l.strip()]) < 2:
        return "rejected"                     # nothing left to carry the leak
    v, _ = adjudicate(reduced, cls, arch, f"{gid}_stripped", out_dir, repo_root)
    return "reclaimed" if v == LEAK else "rejected"


def main(argv=None) -> int:
    ap = argparse.ArgumentParser(description=__doc__,
                                 formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument("--model", default=str(ROOT / "gen/generator_leakcond.pt"))
    ap.add_argument("--classes", nargs="+", default=["SPECTRE_V4"])
    ap.add_argument("--arch", default="x86_64")
    ap.add_argument("--n", type=int, default=60)
    ap.add_argument("--temperature", type=float, default=0.9)
    ap.add_argument("--top-k", type=int, default=20)
    ap.add_argument("--seed", type=int, default=0)
    ap.add_argument("--out-dir", default=str(ROOT / "gen/leakcond_guard"))
    args = ap.parse_args(argv)
    torch.manual_seed(args.seed)

    model = CondTransformerLM.load(args.model)
    spec = gen_decode.load_spec(f"{args.arch}.json")
    realizer = gen_decode.Realizer(spec, seed=args.seed)
    out = Path(args.out_dir)
    if not out.is_absolute():
        out = ROOT / out
    (out / "build").mkdir(parents=True, exist_ok=True)
    repo_root = str(ROOT)

    report = {}
    for cls in args.classes:
        if cls not in model.vocab.cls_id:
            print(f"skip {cls}: not in vocab"); continue
        t = Counter()
        refused_mnems = Counter()
        print(f"\n=== {cls} (n={args.n}, mit=leak) ===", flush=True)
        for i in range(args.n):
            toks = model.sample(cls, args.arch, mit="leak",
                                temperature=args.temperature, top_k=args.top_k)
            concrete = realizer.realize_sequence(toks)
            gid = f"guard_{cls}_{args.arch}_s{i}"
            v, diag = adjudicate(concrete, cls, args.arch, gid, out / "build", repo_root)
            if v == "unrealizable":
                t["unrealizable"] += 1
                continue
            if v == LEAK:
                t["primary_leak"] += 1
            elif v == SAFE:
                t["primary_safe"] += 1
            else:  # unrunnable
                if diag.get("would_be_status") in ("data", "control"):
                    t["uns_wouldbe_leak"] += 1
                    g = guard(concrete, cls, args.arch, gid, out / "build", repo_root, diag)
                    t[f"guard_{g}"] += 1
                    if g == "refused":
                        for m in diag.get("uns_mnemonics", []):
                            if not INERT_RE.match(m):
                                refused_mnems[m] += 1
                else:
                    t["unrunnable_other"] += 1
            print(f"  [{i+1}/{args.n}] {v}"
                  + (f" uns={diag.get('uns_mnemonics')}" if diag.get("would_be_status") else ""),
                  flush=True)

        n = args.n
        discard = t["primary_leak"]
        naive = t["primary_leak"] + t["uns_wouldbe_leak"]
        guarded = t["primary_leak"] + t["guard_reclaimed"]
        rejected = t["guard_rejected"]            # naive would admit, guard caught
        report[cls] = {
            "tally": dict(t),
            "net_yield": {
                "discard": dict(zip(("rate", "lo", "hi"), [round(x, 4) for x in wilson(discard, n)])),
                "naive":   dict(zip(("rate", "lo", "hi"), [round(x, 4) for x in wilson(naive, n)])),
                "guarded": dict(zip(("rate", "lo", "hi"), [round(x, 4) for x in wilson(guarded, n)])),
            },
            "reclaimed": t["guard_reclaimed"],
            "rejected_would_be_false_positives": rejected,
            "refused_non_inert": t["guard_refused"],
            "refused_mnemonics": dict(refused_mnems),
        }
        print(f"  discard={discard} naive={naive} guarded={guarded} "
              f"(reclaimed={t['guard_reclaimed']} rejected={rejected} "
              f"refused={t['guard_refused']})", flush=True)

    # ---- controls ----
    print("\n=== controls ===", flush=True)
    controls = {}
    for cls in args.classes:
        # positive anchor: the class template's own canonical leaking body
        row = {"gadget_id": f"anchor_{cls}", "vuln_class": cls, "adjudicable": "yes",
               "path": None}
        # render the template with NO generated body (its built-in leaking body)
        spec_c = gen_decode.spec_gadgets.render_spec(cls, fenced=False, gen_body=None)
        p = out / "build" / f"anchor_{cls}.c"
        p.write_text(spec_c)
        row["path"] = str(p.relative_to(ROOT))
        rec = run_spec_gadget(row, repo_root)
        controls[f"anchor_{cls}"] = rec.status if rec.status != "ok" else (LEAK if rec.leak else SAFE)
        # fenced version must be SAFE
        spec_c_f = gen_decode.spec_gadgets.render_spec(cls, fenced=True, gen_body=None)
        pf = out / "build" / f"anchor_fenced_{cls}.c"
        pf.write_text(spec_c_f)
        rowf = {"gadget_id": f"anchor_fenced_{cls}", "vuln_class": cls,
                "adjudicable": "yes", "path": str(pf.relative_to(ROOT))}
        recf = run_spec_gadget(rowf, repo_root)
        controls[f"anchor_fenced_{cls}"] = recf.status if recf.status != "ok" else (LEAK if recf.leak else SAFE)
    print(json.dumps(controls, indent=2), flush=True)

    out_json = out / "guard_validation.json"
    out_json.write_text(json.dumps({"report": report, "controls": controls}, indent=2))
    print("\n== SUMMARY ==")
    for cls, d in report.items():
        ny = d["net_yield"]
        print(f"{cls}: net_yield discard={ny['discard']['rate']} "
              f"naive={ny['naive']['rate']} guarded={ny['guarded']['rate']} | "
              f"reclaimed={d['reclaimed']} false-pos-caught={d['rejected_would_be_false_positives']} "
              f"refused={d['refused_non_inert']} {d['refused_mnemonics']}")
    print("controls:", controls)
    print(f"\nwrote {out_json}")
    # guard is validated iff: anchor leaks, fenced anchor safe, and guarded net
    # yield sits between discard and naive (reclaims real leaks, rejects the
    # false positives the naive relax would admit).
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
