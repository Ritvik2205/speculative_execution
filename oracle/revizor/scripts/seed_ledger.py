#!/usr/bin/env python3
"""oracle/revizor/scripts/seed_ledger.py — used-`program_generator_seed`
ledger for the multiclass Revizor campaign.

Why this exists: re-running a `program_generator_seed` regenerates
byte-identical programs. The prior V4/SSB campaign hardcoded
`1000000 2222222 3333333 4444444 5555555` (see
`oracle/revizor/scripts/run_v4_ssb_campaign.sh`) and reused them on a
follow-up run that was meant to add MDS/L1TF/SPECTRE_V1 -- it grew nothing
past the original 16 unique V4 gadgets because it never picked fresh seeds.

This module is the guard: `oracle/revizor/scripts/used_seeds.txt` is the
ledger (seeded with the five seeds above), and `run_multiclass_campaign.sh`
calls this file's CLI to (1) refuse any seed already in the ledger,
(2) generate fresh seeds guaranteed not to collide with it, and
(3) append every seed it actually runs so the next campaign can't repeat it.

Pure functions (`read_ledger`, `check_seeds`, `generate_fresh_seeds`,
`append_seeds`) are unit-tested directly in `tests/oracle/test_seed_ledger.py`;
`main` is a thin CLI wrapper around them.
"""
from __future__ import annotations

import argparse
import random
import sys
from pathlib import Path
from typing import Iterable, List, Optional, Set

DEFAULT_LEDGER = Path(__file__).resolve().parent / "used_seeds.txt"
DEFAULT_MIN_SEED = 1
DEFAULT_MAX_SEED = 2**31 - 1


def read_ledger(path) -> Set[int]:
    """Parse the ledger file into a set of used seeds. Blank lines and
    `#`-prefixed (or trailing `#`) comments are ignored. A missing file
    means no seeds have been used yet -- returns an empty set, not an
    error, so a first-ever campaign doesn't need to pre-create the file."""
    path = Path(path)
    if not path.exists():
        return set()
    seeds: Set[int] = set()
    for line in path.read_text().splitlines():
        line = line.split("#", 1)[0].strip()
        if not line:
            continue
        seeds.add(int(line))
    return seeds


def check_seeds(seeds: Iterable[int], ledger: Set[int]) -> List[int]:
    """Return the subset of `seeds` already present in `ledger`, in the
    order given (empty list == every seed is fresh)."""
    return [s for s in seeds if s in ledger]


def generate_fresh_seeds(
    n: int,
    ledger: Set[int],
    rng: Optional[random.Random] = None,
    min_seed: int = DEFAULT_MIN_SEED,
    max_seed: int = DEFAULT_MAX_SEED,
) -> List[int]:
    """Generate `n` seeds guaranteed to be both absent from `ledger` and
    mutually unique. Does NOT touch the ledger file -- the caller decides
    when a generated seed has actually been used and calls `append_seeds`
    (or the `append` CLI subcommand) at that point."""
    rng = rng if rng is not None else random.Random()
    used = set(ledger)
    fresh: List[int] = []
    max_attempts = max(10_000, n * 1000)
    attempts = 0
    while len(fresh) < n:
        attempts += 1
        if attempts > max_attempts:
            raise RuntimeError(
                f"could not generate {n} fresh seed(s) in range "
                f"[{min_seed}, {max_seed}] after {attempts} attempts "
                f"(ledger already has {len(ledger)} used seed(s)); "
                f"widen the range or request fewer seeds"
            )
        candidate = rng.randint(min_seed, max_seed)
        if candidate in used:
            continue
        used.add(candidate)
        fresh.append(candidate)
    return fresh


def append_seeds(path, seeds: Iterable[int]) -> None:
    """Append `seeds` (one per line) to the ledger file, creating it (and
    any parent directories) if needed. Does not dedup against the file's
    existing contents -- callers that need the refuse-if-used guarantee
    should call `check_seeds`/the `check` or `append` CLI subcommand
    first, which do."""
    path = Path(path)
    path.parent.mkdir(parents=True, exist_ok=True)
    with open(path, "a") as f:
        for s in seeds:
            f.write(f"{s}\n")


def main(argv: Optional[List[str]] = None) -> int:
    ap = argparse.ArgumentParser(description=__doc__)
    ap.add_argument("--ledger", default=str(DEFAULT_LEDGER),
                     help=f"path to the used-seed ledger (default: {DEFAULT_LEDGER})")
    sub = ap.add_subparsers(dest="cmd", required=True)

    p_check = sub.add_parser("check", help="exit 1 if any given seed is already in the ledger")
    p_check.add_argument("seeds", nargs="+", type=int)

    p_gen = sub.add_parser("generate", help="print N fresh seeds not in the ledger, one per line")
    p_gen.add_argument("--n", type=int, required=True)
    p_gen.add_argument("--min", type=int, default=DEFAULT_MIN_SEED)
    p_gen.add_argument("--max", type=int, default=DEFAULT_MAX_SEED)

    p_app = sub.add_parser("append", help="append the given seeds to the ledger (refuses if any is already used)")
    p_app.add_argument("seeds", nargs="+", type=int)

    args = ap.parse_args(argv)
    ledger = read_ledger(args.ledger)

    if args.cmd == "check":
        used = check_seeds(args.seeds, ledger)
        if used:
            print(f"REFUSED: seed(s) already in ledger {args.ledger}: {used}", file=sys.stderr)
            return 1
        print("OK: all seeds fresh")
        return 0

    if args.cmd == "generate":
        try:
            fresh = generate_fresh_seeds(args.n, ledger, min_seed=args.min, max_seed=args.max)
        except RuntimeError as exc:
            print(f"FATAL: {exc}", file=sys.stderr)
            return 1
        for s in fresh:
            print(s)
        return 0

    if args.cmd == "append":
        used = check_seeds(args.seeds, ledger)
        if used:
            print(f"REFUSED: seed(s) already in ledger {args.ledger}, not appending: {used}",
                  file=sys.stderr)
            return 1
        append_seeds(args.ledger, args.seeds)
        print(f"appended {len(args.seeds)} seed(s) to {args.ledger}")
        return 0

    return 1  # unreachable: argparse `required=True` on the subparsers


if __name__ == "__main__":
    sys.exit(main(sys.argv[1:]))
