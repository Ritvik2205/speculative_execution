#!/usr/bin/env python3
"""
decode.py — sample gadgets from the trained generator, realize to concrete
assembly, and check PDG-parseability (Phase 2 output demo).

Run:  python3 gen/decode.py --class SPECTRE_V1 --arch x86_64 --n 5
"""

from __future__ import annotations

import argparse
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
sys.path.insert(0, str(ROOT / "v54"))
sys.path.insert(0, str(ROOT / "spec"))
sys.path.insert(0, str(ROOT / "gen"))

from isa_spec import load_spec, load_engine       # noqa: E402
from spec_pdg_builder import SpecBackedPDGBuilder  # noqa: E402
from generator import CondTransformerLM            # noqa: E402
from realize import Realizer                        # noqa: E402


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--class", dest="cls", default="SPECTRE_V1")
    ap.add_argument("--arch", default="x86_64", choices=["x86_64", "arm64"])
    ap.add_argument("--n", type=int, default=5)
    ap.add_argument("--temperature", type=float, default=0.9)
    ap.add_argument("--gen", default=str(ROOT / "gen" / "generator.pt"))
    args = ap.parse_args()

    model = CondTransformerLM.load(args.gen)
    spec = load_spec(f"{args.arch}.json")
    realizer = Realizer(spec, seed=0)
    builder = SpecBackedPDGBuilder(load_engine(f"{args.arch}.json"), speculative_window=20)

    print(f"class={args.cls}  arch={args.arch}  n={args.n}\n")
    parseable = 0
    for i in range(args.n):
        norm = model.sample(args.cls, args.arch, temperature=args.temperature, top_k=20)
        concrete = realizer.realize_sequence(norm)
        pdg = builder.build(concrete)
        ok = len(pdg.nodes) >= 2
        parseable += ok
        print(f"--- sample {i+1}  ({len(concrete)} instrs, {len(pdg.nodes)} nodes, "
              f"{len(pdg.edges)} edges, parseable={ok}) ---")
        for ins in concrete:
            print("   " + ins)
        print()
    print(f"PDG-parseable: {parseable}/{args.n}")


if __name__ == "__main__":
    main()
