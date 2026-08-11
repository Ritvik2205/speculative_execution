#!/usr/bin/env python3
"""
generate_batch.py — sample a large batch of candidate gadgets from the trained
Phase 2 generator across every (class, arch), realize to concrete assembly,
and write them out with a manifest (the "more samples of attacks" deliverable).

Not a replacement for gen/synth/'s template-based synthesizer (which the oracle
batch scripts already use); this is the neural generator's own output, kept
separate so it can be inspected/cross-validated on its own terms.

Run:  python3 gen/generate_batch.py --n 50 --out gen/synth/neural_out
"""
from __future__ import annotations

import argparse
import json
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
    ap.add_argument("--n", type=int, default=50, help="samples per (class, arch)")
    ap.add_argument("--temperature", type=float, default=0.9)
    ap.add_argument("--gen", default=str(ROOT / "gen" / "generator.pt"))
    ap.add_argument("--out", default=str(ROOT / "gen" / "synth" / "neural_out"))
    args = ap.parse_args()

    model = CondTransformerLM.load(args.gen)
    # Derive from the trained model's own vocab rather than hardcoding label
    # spellings (the label set doesn't exactly match gen/synth/params.py's
    # CLASSES -- e.g. "BRANCH_HISTORY_INJECTION" not "BHI").
    CLASSES = sorted(model.vocab.cls_id.keys())
    ARCHES = sorted(model.vocab.arch_id.keys())
    out_dir = Path(args.out)
    out_dir.mkdir(parents=True, exist_ok=True)

    rows = []
    for arch in ARCHES:
        spec = load_spec(f"{arch}.json")
        realizer = Realizer(spec, seed=0)
        builder = SpecBackedPDGBuilder(load_engine(f"{arch}.json"), speculative_window=20)
        for cls in CLASSES:
            n_parseable = 0
            for i in range(args.n):
                norm = model.sample(cls, arch, temperature=args.temperature, top_k=20)
                concrete = realizer.realize_sequence(norm)
                pdg = builder.build(concrete)
                ok = len(pdg.nodes) >= 2
                n_parseable += int(ok)
                gid = f"{cls}_{arch}_{i}"
                path = out_dir / f"{gid}.s"
                path.write_text("\n".join(concrete) + "\n")
                rows.append({"gadget_id": gid, "vuln_class": cls, "arch": arch,
                             "path": str(path), "n_instrs": len(concrete),
                             "n_pdg_nodes": len(pdg.nodes), "n_pdg_edges": len(pdg.edges),
                             "pdg_parseable": ok})
            print(f"{cls:28s} {arch:8s}  parseable={n_parseable}/{args.n}")

    manifest = out_dir / "manifest.jsonl"
    with open(manifest, "w") as f:
        for r in rows:
            f.write(json.dumps(r, sort_keys=True) + "\n")
    n_ok = sum(r["pdg_parseable"] for r in rows)
    print(f"\nwrote {len(rows)} gadgets -> {out_dir}  (manifest: {manifest})")
    print(f"PDG-parseable overall: {n_ok}/{len(rows)} ({100*n_ok/len(rows):.1f}%)")


if __name__ == "__main__":
    main()
