#!/usr/bin/env python3
"""length_diversity_sweep.py -- does adding a length / execution-graph-size axis
to generation broaden within-class diversity?

The supervisor's priority (12 Oct call): "generate attacks of different lengths /
execution-graph sizes -> broader diversity; prioritise that over minimising
length." The generator prompt today is only (class, arch); it is not conditioned
on length. Without retraining, the knobs we have are the sampling temperature and
the model's own length spread, so this script POOLS over several temperatures,
BUCKETS the realized sequences by size, and measures diversity per bucket with
the SAME notions the rest of the repo uses, so the numbers line up with
gen/rl_diversity.md and gen/compare_generators.py:

  - unique-rate: exact dedup on the normalized token sequence.
  - mean pairwise Ruzicka (multiset-Jaccard) SIMILARITY over the unique set
    (gen/analyze_rl_diversity.py). Lower similarity = more diverse.

Two size axes are reported, because the supervisor named both:
  - instruction count of the realized sequence ("length"), and
  - PDG node count ("execution graph size").

The headline the script computes for itself: restricting to a single length
bucket vs. spanning all buckets -- how many MORE distinct (deduped) gadgets, and
how much lower the mean similarity, the full range buys. Optionally it validates
a capped sample per bucket through Spectector (x86 V1/V4 only) to show the leak
rate does not collapse as length grows (diversity must not cost yield).

A bucket the model under-populates (e.g. short Spectre~V1 gadgets -- V1 has a
natural length floor) cannot be forced from this model by truncation without
breaking the gadget; reaching it is the motivation for a length-conditioning
token, the one retraining-based follow-up this experiment sets up.

Run (local; needs torch + the generator checkpoint):
    python3 gen/length_diversity_sweep.py \
        --class SPECTRE_V1 --class SPECTRE_V4 --arch x86_64 \
        --n 200 --buckets 8,16 --temps 0.9,1.1
    # add --validate --validate-cap 8   to also spot-check leak rate per bucket

Outputs: gen/length_diversity_samples.jsonl  and  gen/length_diversity.md
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
sys.path.insert(0, str(ROOT))

from isa_spec import load_spec, load_engine          # noqa: E402
from spec_pdg_builder import SpecBackedPDGBuilder     # noqa: E402
from generator import CondTransformerLM               # noqa: E402
from realize import Realizer                           # noqa: E402
from arch_purity import attach_arch_masks              # noqa: E402
from compare_generators import aggregate_sequences     # noqa: E402  (unique-rate + mean_sim)


def bucket_of(n_instr: int, bounds):
    """bounds=[8,16] -> 'S (<=8)', 'M (9-16)', 'L (>16)'."""
    labels = []
    prev = 0
    for b in bounds:
        labels.append((prev, b))
        prev = b
    labels.append((prev, None))
    for lo, hi in labels:
        if hi is None:
            return f"L (>{lo})"
        if n_instr <= hi:
            return (f"S (<={hi})" if lo == 0 else f"M ({lo+1}-{hi})")
    return f"L (>{bounds[-1]})"


def validate_x86(cls, concrete, idx):
    """Spectector verdict for an x86 V1/V4 gadget; returns leak|safe|unrunnable
    or None if not applicable. Mirrors gen/decode.py's validation splice."""
    from decode import build_gen_body, _GEN_VOCAB_ALIAS  # noqa: F401
    from gen.synth import spectector_gadgets as spec_gadgets
    from oracle.validators import SpectectorValidator
    gen_body = build_gen_body(concrete, cls, "x86_64", is_invisispec=False)
    spec_c = spec_gadgets.render_spec(cls, fenced=False, gen_body=gen_body)
    out = ROOT / "oracle" / "build" / f"gen_ldiv_{cls}_{idx}.c"
    out.parent.mkdir(parents=True, exist_ok=True)
    out.write_text(spec_c)
    r = SpectectorValidator(str(ROOT)).validate({
        "gadget_id": f"ldiv_{cls}_{idx}", "vuln_class": cls,
        "spectector_source": str(out.relative_to(ROOT)), "adjudicable": "yes",
    })
    return r.verdict


def main(argv=None) -> int:
    ap = argparse.ArgumentParser(description=__doc__,
                                 formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument("--class", dest="classes", action="append",
                    help="repeatable; default SPECTRE_V1 + SPECTRE_V4")
    ap.add_argument("--arch", default="x86_64", choices=["x86_64", "arm64"])
    ap.add_argument("--n", type=int, default=200, help="pool size per class")
    ap.add_argument("--temps", default="0.9,1.1",
                    help="comma list of sampling temperatures to pool over")
    ap.add_argument("--buckets", default="8,16",
                    help="instruction-count boundaries, e.g. 8,16 -> S/M/L")
    ap.add_argument("--gen", default=None,
                    help="checkpoint; default generator_expanded.pt if present, "
                         "else generator.pt")
    ap.add_argument("--validate", action="store_true",
                    help="Spectector-validate a capped sample per bucket (x86 V1/V4)")
    ap.add_argument("--validate-cap", type=int, default=8,
                    help="max gadgets to validate per (class,bucket)")
    ap.add_argument("--samples-out", default=str(ROOT / "gen/length_diversity_samples.jsonl"))
    ap.add_argument("--out", default=str(ROOT / "gen/length_diversity.md"))
    ap.add_argument("--seed", type=int, default=0)
    a = ap.parse_args(argv)

    classes = a.classes or ["SPECTRE_V1", "SPECTRE_V4"]
    temps = [float(t) for t in a.temps.split(",") if t.strip()]
    bounds = [int(b) for b in a.buckets.split(",") if b.strip()]

    gen = a.gen
    if gen is None:
        exp = ROOT / "gen/generator_expanded.pt"
        gen = str(exp if exp.exists() else ROOT / "gen/generator.pt")
    print(f"generator={Path(gen).name}  arch={a.arch}  classes={classes}  "
          f"temps={temps}  buckets={bounds}  n/class={a.n}")

    model = CondTransformerLM.load(gen)
    attach_arch_masks(model, {"x86_64": "x86_64.json", "arm64": "arm64.json"},
                      assembler_check=True)
    spec = load_spec(f"{a.arch}.json")
    realizer = Realizer(spec, seed=a.seed)
    builder = SpecBackedPDGBuilder(load_engine(f"{a.arch}.json"), speculative_window=20)

    # alias for the checkpoint's full BHI vocab name (see gen/decode.py)
    alias = {"BHI": "BRANCH_HISTORY_INJECTION"}

    rows = []
    for cls in classes:
        per_temp = max(1, a.n // len(temps))
        for temp in temps:
            for i in range(per_temp):
                norm = model.sample(alias.get(cls, cls), a.arch,
                                    temperature=temp, top_k=20)
                concrete = realizer.realize_sequence(norm)
                pdg = builder.build(concrete)
                row = {
                    "vuln_class": cls, "arch": a.arch, "temp": temp,
                    "seq": norm, "n_instr": len(concrete),
                    "n_nodes": len(pdg.nodes), "n_edges": len(pdg.edges),
                    "parseable": len(pdg.nodes) >= 2,
                    "bucket": bucket_of(len(concrete), bounds),
                }
                rows.append(row)
    # samples are dumped AFTER validation below, so the per-gadget spectector
    # verdict is persisted alongside each row (not lost).

    # optional yield check per (class, bucket), capped
    yields = {}
    if a.validate and a.arch == "x86_64":
        import collections
        seen = collections.Counter()
        vcount = collections.Counter()
        vleak = collections.Counter()
        for idx, r in enumerate(rows):
            if r["vuln_class"] not in ("SPECTRE_V1", "SPECTRE_V4"):
                continue
            key = (r["vuln_class"], r["bucket"])
            if seen[key] >= a.validate_cap or not r["parseable"]:
                continue
            seen[key] += 1
            try:
                v = validate_x86(r["vuln_class"], r["seq"], idx)
            except Exception as e:  # noqa: BLE001
                v = f"error:{type(e).__name__}"
            r["spectector"] = v
            if v in ("leak", "safe"):
                vcount[key] += 1
                if v == "leak":
                    vleak[key] += 1
        for key in vcount:
            yields[key] = (vleak[key], vcount[key])

    # persist every row (now carrying any spectector verdict) exactly once
    with open(a.samples_out, "w") as fh:
        for r in rows:
            fh.write(json.dumps(r) + "\n")

    # ---- report ----
    def agg(subset):
        return aggregate_sequences([r["seq"] for r in subset])

    L = ["# Length / execution-graph-size diversity sweep", "",
         f"generator `{Path(gen).name}`, arch `{a.arch}`, temps {temps}, "
         f"buckets by instruction count {bounds}. Diversity notions match "
         "`gen/compare_generators.py` (unique-rate; mean pairwise Ruzicka "
         "similarity over the unique set -- lower = more diverse).", ""]

    bucket_order = []
    for r in rows:
        if r["bucket"] not in bucket_order:
            bucket_order.append(r["bucket"])
    bucket_order.sort(key=lambda b: (0 if b.startswith("S") else 1 if b.startswith("M") else 2))

    for cls in classes:
        crows = [r for r in rows if r["vuln_class"] == cls]
        full = agg(crows)
        L += [f"## {cls}", "",
              "| bucket | n | unique | unique-rate | mean sim (lower=diverse) | "
              "mean instr | mean PDG nodes |", "|---|---:|---:|---:|---:|---:|---:|"]
        for b in bucket_order:
            br = [r for r in crows if r["bucket"] == b]
            if not br:
                continue
            ag = agg(br)
            mn = sum(r["n_instr"] for r in br) / len(br)
            nn = sum(r["n_nodes"] for r in br) / len(br)
            ms = f"{ag['mean_sim']:.3f}" if ag["mean_sim"] is not None else "---"
            yd = ""
            if (cls, b) in yields:
                lk, tot = yields[(cls, b)]
                yd = f"  (leak {lk}/{tot})"
            L.append(f"| {b}{yd} | {ag['total']} | {ag['unique']} | "
                     f"{ag['unique_rate']:.3f} | {ms} | {mn:.1f} | {nn:.1f} |")
        fms = f"{full['mean_sim']:.3f}" if full["mean_sim"] is not None else "---"
        L.append(f"| **all** | {full['total']} | {full['unique']} | "
                 f"{full['unique_rate']:.3f} | {fms} | "
                 f"{sum(r['n_instr'] for r in crows)/max(1,len(crows)):.1f} | "
                 f"{sum(r['n_nodes'] for r in crows)/max(1,len(crows)):.1f} |")

        # coverage uplift: best single bucket vs all buckets
        best_single = max(
            (agg([r for r in crows if r["bucket"] == b])["unique"] for b in bucket_order
             if any(r["bucket"] == b for r in crows)), default=0)
        uplift = full["unique"] - best_single
        L += ["",
              f"Spanning all length buckets yields **{full['unique']}** distinct "
              f"gadgets vs **{best_single}** from the single richest bucket "
              f"(+{uplift}); the length axis adds structural coverage no single "
              "length reaches.", ""]

    Path(a.out).write_text("\n".join(L) + "\n")
    print("\n".join(L))
    print(f"\nwrote {a.out} and {a.samples_out} ({len(rows)} samples)")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
