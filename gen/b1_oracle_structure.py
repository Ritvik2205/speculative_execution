#!/usr/bin/env python3
"""b1_oracle_structure.py — cross-tab oracle verdict against gadget STRUCTURE.

Plan Phase B1 (SPECDISCOVER_GENERATION_PLAN.md). The L3->L4 collapse is the real
accuracy problem: syntactically valid gadgets almost never leak. This asks WHERE
they die by joining, per generated gadget:
  - its oracle verdict  (leak / safe / unrunnable)  -- from Spectector, GROUND TRUTH
  - whether its window carries the class's defining STRUCTURE (canonical ops)
so we can separate "wrong structure" from "right structure, no leak" (dataflow /
speculation-window / probe missing).

Runs the current generator with every syntactic fix in place (arch purity,
indirect-star, arm operand repair, self-relative branches). Structure is computed
locally; the oracle step needs Docker + the Spectector image (Linux box). Without
--validate it does the generate+structure half only (runnable anywhere) and writes
the records so the oracle half can be joined later.

Run (Linux box, Docker up):
    python3 gen/b1_oracle_structure.py --n 40 --validate
Run (structure only, anywhere):
    python3 gen/b1_oracle_structure.py --n 40
"""
from __future__ import annotations

import argparse
import json
import sys
from collections import Counter, defaultdict
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
sys.path.insert(0, str(ROOT))
sys.path.insert(0, str(ROOT / "gen"))
sys.path.insert(0, str(ROOT / "spec"))

from generator import CondTransformerLM               # noqa: E402
from realize import Realizer                           # noqa: E402
from isa_spec import load_spec, load_engine            # noqa: E402
from external_oracle import ExternalOracle             # noqa: E402
from arch_purity import attach_arch_masks              # noqa: E402

SPEC_FOR_ARCH = {"x86_64": "x86_64.json", "arm64": "arm64.json"}
OUT = ROOT / "eval" / "b1_oracle_structure_records.jsonl"

# class -> defining primitive in canonical ops (same table as B2)
PRIM = {
    "SPECTRE_V1":  ["BRANCH_COND", "LOAD", "SHL"],
    "SPECTRE_V2":  ["CALL_IND"],
    "SPECTRE_RSB": ["RET", "CALL"],
    "BHI":         ["CALL_IND", "BRANCH_COND"],
    "L1TF":        ["LOAD", "SHL"],
    "MDS":         ["LOAD"],
    "SPECTRE_V4":  ["STORE", "LOAD"],
}


def has_primitive(conc, eng, cls):
    need = PRIM.get(cls)
    if not need:
        return None
    ops = set(eng.canonical_op(i) for i in conc)
    return all(p in ops for p in need)


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--n", type=int, default=40, help="samples per (class, arch)")
    ap.add_argument("--temperature", type=float, default=0.9)
    ap.add_argument("--gen", default=str(ROOT / "gen" / "generator.pt"))
    ap.add_argument("--archs", default="x86_64,arm64",
                    help="comma list; Spectector is x86-only so --validate is "
                         "meaningful for x86_64 only")
    ap.add_argument("--validate", action="store_true",
                    help="run Spectector for a real verdict (Docker + image needed)")
    args = ap.parse_args()

    model = CondTransformerLM.load(args.gen)
    attach_arch_masks(model, SPEC_FOR_ARCH)
    oracle = ExternalOracle()
    engines = {a: load_engine(f) for a, f in SPEC_FOR_ARCH.items()}
    classes = [c for c in PRIM if c in model.vocab.cls_id]

    validator = None
    if args.validate:
        try:
            from decode import build_gen_body
            from gen.synth import spectector_gadgets as spec_gadgets
            from oracle.validators import SpectectorValidator
            validator = (build_gen_body, spec_gadgets, SpectectorValidator(str(ROOT)))
        except Exception as e:
            print(f"--validate unavailable ({e}); running structure-only")
            args.validate = False

    records = []
    want_archs=[a for a in args.archs.split(",") if a in SPEC_FOR_ARCH]
    for arch in want_archs:
        R = Realizer(load_spec(f"{arch}.json"), seed=0)
        eng = engines[arch]
        for cls in classes:
            for i in range(args.n):
                conc = R.realize_sequence(
                    model.sample(cls, arch, temperature=args.temperature, top_k=20))
                if not conc:
                    continue
                link_ok, _ = oracle.link_ready(conc, arch)
                rec = {
                    "cls": cls, "arch": arch, "i": i,
                    "n_instr": len(conc),
                    "link_ready": link_ok,
                    "has_primitive": has_primitive(conc, eng, cls),
                    "verdict": None, "signal": None,
                    "sequence": conc,
                }
                if args.validate and cls != "BENIGN":
                    build_gen_body, spec_gadgets, sv = validator
                    try:
                        body = build_gen_body(conc, cls, arch, is_invisispec=False)
                        src = spec_gadgets.render_spec(cls, fenced=False, gen_body=body)
                        sp = ROOT / "oracle" / "build" / f"b1_{cls}_{arch}_{i}.c"
                        sp.parent.mkdir(parents=True, exist_ok=True)
                        sp.write_text(src)
                        r = sv.validate({"gadget_id": f"b1_{cls}_{arch}_{i}",
                                         "vuln_class": cls,
                                         "spectector_source": str(sp.relative_to(ROOT)),
                                         "adjudicable": "yes"})
                        rec["verdict"] = r.verdict
                        rec["signal"] = getattr(r, "signal", None)
                    except Exception as e:
                        rec["verdict"] = f"error:{type(e).__name__}"
                records.append(rec)
        print(f"{arch}: generated {sum(1 for r in records if r['arch']==arch)} records")

    OUT.write_text("\n".join(json.dumps(r) for r in records) + "\n")
    print(f"\nwrote {OUT.relative_to(ROOT)} ({len(records)} records)")

    # ---- structure summary (always) ----
    print("\nSTRUCTURE (has defining primitive) x LINK-READY, per class/arch:")
    print(f"{'class':13s} {'arch':7s} {'has-prim':>9s} {'link-ready':>11s}")
    by = defaultdict(lambda: [0, 0, 0])
    for r in records:
        k = (r["cls"], r["arch"]); by[k][0] += 1
        by[k][1] += 1 if r["has_primitive"] else 0
        by[k][2] += 1 if r["link_ready"] else 0
    for (cls, arch), (n, hp, lr) in sorted(by.items()):
        print(f"{cls:13s} {arch:7s} {100*hp/n:8.0f}% {100*lr/n:10.0f}%")

    # ---- the B1 cross-tab (only meaningful with --validate) ----
    if args.validate:
        print("\nVERDICT x STRUCTURE cross-tab (the L3->L4 question):")
        ct = Counter()
        for r in records:
            if r["verdict"] is None:
                continue
            leak = "leak" if r["verdict"] == "leak" else (
                "safe" if r["verdict"] == "safe" else "unrunnable")
            struct = "has-prim" if r["has_primitive"] else "no-prim"
            ct[(leak, struct)] += 1
        for v in ("leak", "safe", "unrunnable"):
            print(f"  {v:11s} has-prim={ct[(v,'has-prim')]:4d}  no-prim={ct[(v,'no-prim')]:4d}")
        print("\nRead: 'safe/unrunnable WITH has-prim' = right structure, no leak "
              "(dataflow/window/probe missing). 'leak' concentration by structure "
              "tells whether the primitive is necessary/sufficient.")
    else:
        print("\n(structure-only run; pass --validate on the Docker box for the "
              "verdict cross-tab)")


if __name__ == "__main__":
    main()
