#!/usr/bin/env python3
"""
relabel_signal.py — backfill the "signal" field on existing RL samples.jsonl files.

For each sample with a realized_asm and gadget_id, re-run the Spectector oracle
to extract the continuous leak_signal (trace_length) and append it to the row.
Rows without realized_asm pass through unchanged (assigned signal=0.0 if SAFE).

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


def main(argv=None) -> int:
    ap = argparse.ArgumentParser(
        description="Backfill 'signal' field on existing RL samples.jsonl")
    ap.add_argument("--samples", required=True,
                    help="input samples.jsonl (from rejection_sample_finetune)")
    ap.add_argument("--out", required=True,
                    help="output file with signal field added")
    ap.add_argument("--repo-root", default=str(ROOT),
                    help="repository root (for SpectectorValidator)")
    args = ap.parse_args(argv)

    samples_path = Path(args.samples)
    if not samples_path.exists():
        print(f"ERROR: {samples_path} does not exist", file=sys.stderr)
        return 1

    out_path = Path(args.out)
    out_path.parent.mkdir(parents=True, exist_ok=True)

    validator = SpectectorValidator(repo_root=args.repo_root)
    repo_root = Path(args.repo_root)

    n_relabeled = 0
    n_skipped = 0

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

            # If no realized_asm or no gadget_id, assign signal=0.0 and pass through
            if not row.get("realized_asm") or not row.get("gadget_id"):
                row["signal"] = 0.0
                outf.write(json.dumps(row) + "\n")
                n_skipped += 1
                continue

            # Try to reconstruct the spectector_source path and validate
            gadget_id = row["gadget_id"]
            spectector_src = f"oracle/build/gen_spec_{gadget_id}.c"
            gadget = {
                "gadget_id": gadget_id,
                "vuln_class": row.get("class", "UNKNOWN"),
                "spectector_source": spectector_src,
                "adjudicable": row.get("adjudicable", "no"),
            }

            try:
                result = validator.validate(gadget)
                row["signal"] = float(result.signal)
                n_relabeled += 1
            except Exception as e:
                print(f"WARNING: line {line_no} (gadget {gadget_id}) validation "
                      f"failed ({e}); assigning signal=0.0", file=sys.stderr)
                row["signal"] = 0.0
                n_skipped += 1

            outf.write(json.dumps(row) + "\n")

    print(f"[relabel] processed {n_relabeled} relabeled, {n_skipped} skipped -> {out_path}")
    return 0


if __name__ == "__main__":
    sys.exit(main())
