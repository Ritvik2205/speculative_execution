#!/usr/bin/env python3
"""
relabel_signal.py — backfill the "signal" field on existing RL samples.jsonl files.

For each sample with a realized_asm and gadget_id, regenerate the Spectector victim
source from the realized assembly, re-run the Spectector oracle to extract the
continuous leak_signal (trace_length), and append it to the row with oracle_ran flag.

Rows that cannot be adjudicated (no realized_asm, source regen fails, validator
returns UNRUNNABLE/UNSUPPORTED) are written with signal=null and oracle_ran=false.

Usage:
  python3 gen/relabel_signal.py --samples gen/rl_ms/CLASS_ARCH/samples.jsonl \
      --out gen/rl_ms/CLASS_ARCH/samples_signal.jsonl
"""

from __future__ import annotations

import argparse
import json
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
sys.path.insert(0, str(ROOT))

from oracle.validators.spectector_validator import SpectectorValidator
from oracle.validators.base import LEAK, SAFE


def main(argv=None) -> int:
    ap = argparse.ArgumentParser(
        description="Backfill 'signal' field on existing RL samples.jsonl")
    ap.add_argument("--samples", required=True,
                    help="input samples.jsonl (from rejection_sample_finetune)")
    ap.add_argument("--out", required=True,
                    help="output file with signal and oracle_ran fields added")
    ap.add_argument("--repo-root", default=str(ROOT),
                    help="repository root (for SpectectorValidator and spec loading)")
    ap.add_argument("--arch", default="x86_64", choices=["x86_64", "arm64"],
                    help="ISA (inferred from samples.jsonl gadget_id if possible)")
    args = ap.parse_args(argv)

    samples_path = Path(args.samples)
    if not samples_path.exists():
        print(f"ERROR: {samples_path} does not exist", file=sys.stderr)
        return 1

    out_path = Path(args.out)
    out_path.parent.mkdir(parents=True, exist_ok=True)

    repo_root = Path(args.repo_root).resolve()
    validator = SpectectorValidator(repo_root=str(repo_root))
    out_dir = repo_root / "oracle" / "build"
    out_dir.mkdir(parents=True, exist_ok=True)

    # Deferred import: torch and gen.decode are only needed if we regenerate source.
    # Load them once for all samples to reuse build_gen_body and spec_gadgets.
    try:
        import gen.decode as gen_decode
        spec = gen_decode.load_spec(f"{args.arch}.json")
        spec_gadgets = gen_decode.spec_gadgets
        build_gen_body = gen_decode.build_gen_body
    except Exception as e:
        print(f"ERROR: could not load gen.decode helpers ({e}). "
              f"Is torch/gen available?", file=sys.stderr)
        return 1

    n_adjudicated = 0
    n_unadjudicated = 0

    with open(samples_path) as inf, open(out_path, "w") as outf:
        for line_no, line in enumerate(inf, 1):
            try:
                row = json.loads(line)
            except json.JSONDecodeError as e:
                print(f"WARNING: line {line_no} is not valid JSON: {e}",
                      file=sys.stderr)
                continue

            # If signal is already present, pass through unchanged
            if "signal" in row:
                outf.write(json.dumps(row) + "\n")
                continue

            # If no realized_asm or no gadget_id, mark as unadjudicated
            realized_asm = row.get("realized_asm")
            gadget_id = row.get("gadget_id")
            vuln_class = row.get("class", "UNKNOWN")

            if not realized_asm or not gadget_id:
                row["signal"] = None
                row["oracle_ran"] = False
                outf.write(json.dumps(row) + "\n")
                n_unadjudicated += 1
                continue

            # Try to regenerate the Spectector source from realized_asm
            spectector_src = None
            try:
                # concrete is a list of instruction strings from realized_asm
                concrete = realized_asm
                if len(concrete) < 2:
                    raise ValueError("realized_asm too short (< 2 instrs)")

                # Rebuild the gadget source using the same path as _build_realize_fn
                gen_body = build_gen_body(concrete, vuln_class, args.arch,
                                          is_invisispec=False)
                spec_c = spec_gadgets.render_spec(vuln_class, fenced=False,
                                                  gen_body=gen_body)

                # Write to oracle/build/ with gadget_id hash
                spec_path = out_dir / f"gen_spec_{gadget_id}.c"
                spec_path.write_text(spec_c)
                spectector_src = str(spec_path.relative_to(repo_root))
            except Exception as e:
                print(f"WARNING: line {line_no} (gadget {gadget_id}) source "
                      f"regeneration failed ({e})", file=sys.stderr)
                row["signal"] = None
                row["oracle_ran"] = False
                outf.write(json.dumps(row) + "\n")
                n_unadjudicated += 1
                continue

            # Validate the regenerated source
            if not spectector_src:
                row["signal"] = None
                row["oracle_ran"] = False
                outf.write(json.dumps(row) + "\n")
                n_unadjudicated += 1
                continue

            gadget = {
                "gadget_id": gadget_id,
                "vuln_class": vuln_class,
                "spectector_source": spectector_src,
                "adjudicable": "yes",
            }

            try:
                result = validator.validate(gadget)
                # Only write numeric signal for LEAK and SAFE verdicts
                if result.verdict in (LEAK, SAFE):
                    row["signal"] = float(result.signal)
                    row["oracle_ran"] = True
                    n_adjudicated += 1
                else:
                    # UNRUNNABLE or UNSUPPORTED: oracle couldn't adjudicate
                    row["signal"] = None
                    row["oracle_ran"] = False
                    n_unadjudicated += 1
            except Exception as e:
                print(f"WARNING: line {line_no} (gadget {gadget_id}) validation "
                      f"raised ({e})", file=sys.stderr)
                row["signal"] = None
                row["oracle_ran"] = False
                n_unadjudicated += 1

            outf.write(json.dumps(row) + "\n")

    print(f"[relabel] adjudicated={n_adjudicated} "
          f"unadjudicated={n_unadjudicated} -> {out_path}")
    return 0


if __name__ == "__main__":
    sys.exit(main())
