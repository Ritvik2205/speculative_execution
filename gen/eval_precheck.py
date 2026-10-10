#!/usr/bin/env python3
"""eval_precheck.py — does the pre-oracle gate (gen/precheck.py) actually pay?

The claim under test, stated before measuring: a cheap non-learned gate should
remove at least 80% of the candidates the oracle cannot rule on, while losing
at most 2% of the candidates that do leak. Both numbers are measured here
against the committed RL sample sidecars, whose `verdict` field is the real
Spectector outcome.

Metric definitions (all over samples that carry an oracle verdict):
  unrunnable_removed = rejected / all UNRUNNABLE  -- the benefit
  leak_lost          = rejected / all LEAK        -- the cost that matters
  safe_lost          = rejected / all SAFE        -- a safe verdict is also a
                       real answer, so discarding one is also a loss
  calls_saved        = rejected / all samples     -- oracle calls not spent
  retained_adjudicable = (LEAK+SAFE retained) / all retained -- the hit rate of
                       what we do send to the oracle, against the base rate

Leak/shortcut hygiene:
  - Every rule is NON-LEARNED and fixed before measurement. Stage B's
    allow-list comes from Spectector's own source table
    (`oracle/extract_spectector_table.py`), never fitted to these verdicts.
  - Identical realized sequences are DEDUPLICATED; a sequence logged with
    conflicting verdicts is dropped and counted.
  - RL round is a confounder (the leak rate climbs with the round), so the
    headline table is also broken down per round.
  - Wilson 95% intervals accompany every rate, so a 0/15 cell is not read as
    a hard zero.
  - IMPORTANT CEILING: these sidecars are POST-realizer. `Realizer.
    realize_sequence` already drops individual instructions that do not
    assemble, so stage A (assembles) is nearly saturated here by construction
    and its measured contribution is a lower bound on its value for raw
    generator output.

Run: python3 gen/eval_precheck.py            -> gen/precheck_eval.md
"""
from __future__ import annotations

import argparse
import collections
import json
import math
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
sys.path.insert(0, str(ROOT / "gen"))

from precheck import PreCheck, _load_samples, TABLE_JSON  # noqa: E402

VERDICTS = ("leak", "safe", "unrunnable")
# Gating rules: name -> set of stages allowed to reject.
RULES = {
    "A: assembles": ("assembles",),
    "B: oracle front end": ("oracle_supported",),
    "C: emulates": ("emulated",),
    "A+B": ("assembles", "oracle_supported"),
    "A+B+C (full gate)": ("assembles", "oracle_supported", "emulated"),
}
TARGET_UNRUNNABLE_REMOVED = 0.80
TARGET_LEAK_LOST = 0.02


def wilson(k: int, n: int, z: float = 1.96) -> tuple[float, float]:
    """Wilson score interval; defined (and informative) at k=0 and k=n."""
    if n == 0:
        return (float("nan"), float("nan"))
    p = k / n
    d = 1 + z * z / n
    c = p + z * z / (2 * n)
    half = z * math.sqrt(p * (1 - p) / n + z * z / (4 * n * n))
    return ((c - half) / d, (c + half) / d)


def fmt(k: int, n: int) -> str:
    if n == 0:
        return "n/a"
    lo, hi = wilson(k, n)
    return f"{k/n:.3f} [{lo:.3f},{hi:.3f}] {k}/{n}"


def rejected_by(res: dict, stages: tuple[str, ...]) -> bool:
    """Would this candidate be rejected if only `stages` could reject?"""
    if "assembles" in stages and res["assembles"] is False:
        return True
    if "oracle_supported" in stages and res["oracle_supported"] is False:
        return True
    if "emulated" in stages and res["emulated"] not in ("ok", "skipped"):
        return True
    return False


def main(argv=None) -> int:
    ap = argparse.ArgumentParser(description=__doc__,
                                 formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument("--samples", nargs="+",
                    default=["gen/rl_mc/*/samples.jsonl", "gen/rl_ms/*/samples.jsonl"])
    ap.add_argument("--arch", default="x86_64")
    ap.add_argument("--out", default=str(ROOT / "gen" / "precheck_eval.md"))
    ap.add_argument("--limit", type=int, default=0)
    a = ap.parse_args(argv)

    raw = []
    for pat in a.samples:
        raw += _load_samples(pat)
    raw = [r for r in raw if r["verdict"] in VERDICTS]

    # dedupe by realized sequence; drop conflicting verdicts
    by = collections.defaultdict(list)
    for r in raw:
        by[tuple(r["seq"])].append(r)
    rows, conflicts = [], 0
    for seq, rs in by.items():
        if len({x["verdict"] for x in rs}) > 1:
            conflicts += 1
            continue
        rows.append(rs[0])
    if a.limit:
        rows = rows[: a.limit]

    pc = PreCheck()
    if pc.front_end is None:
        print(f"FATAL: {TABLE_JSON} missing (run oracle/extract_spectector_table.py)",
              file=sys.stderr)
        return 1
    emu_on = pc.emulator is not None

    for n, r in enumerate(rows):
        r["res"] = pc.check(r["seq"], a.arch, require_emulation=False)
        if n % 200 == 0:
            print(f"  checked {n}/{len(rows)}", file=sys.stderr, flush=True)

    n_by_verdict = collections.Counter(r["verdict"] for r in rows)
    L = ["# Pre-oracle gate: does it pay?", "",
         f"Samples: {len(raw)} rows with a Spectector verdict -> {len(rows)} unique "
         f"realized sequences after dedupe ({conflicts} dropped for conflicting verdicts). "
         f"LEAK {n_by_verdict['leak']} / SAFE {n_by_verdict['safe']} / "
         f"UNRUNNABLE {n_by_verdict['unrunnable']}.", "",
         f"Stated target, fixed before measuring: remove "
         f"$\\geq$ {TARGET_UNRUNNABLE_REMOVED:.0%} of UNRUNNABLE while losing "
         f"$\\leq$ {TARGET_LEAK_LOST:.0%} of LEAK.", "",
         f"Emulation stage: {'ENABLED' if emu_on else 'DISABLED (unicorn missing)'}. "
         "Rates carry Wilson 95% intervals.", "",
         "**Ceiling to keep in mind:** these sidecars are post-realizer, and the "
         "realizer already drops instructions that do not assemble, so stage A is "
         "near-saturated here by construction. Its measured contribution is a lower "
         "bound on its value for raw generator output.", "",
         "| rule | unrunnable removed | leak lost | safe lost | calls saved | retained adjudicable |",
         "|---|---|---|---|---|---|"]

    base_adj = n_by_verdict["leak"] + n_by_verdict["safe"]
    for name, stages in RULES.items():
        if "emulated" in stages and not emu_on:
            continue
        rej = {v: 0 for v in VERDICTS}
        for r in rows:
            if rejected_by(r["res"], stages):
                rej[r["verdict"]] += 1
        n_rej = sum(rej.values())
        kept_adj = base_adj - rej["leak"] - rej["safe"]
        n_kept = len(rows) - n_rej
        L.append(
            f"| {name} | {fmt(rej['unrunnable'], n_by_verdict['unrunnable'])} "
            f"| {fmt(rej['leak'], n_by_verdict['leak'])} "
            f"| {fmt(rej['safe'], n_by_verdict['safe'])} "
            f"| {fmt(n_rej, len(rows))} "
            f"| {kept_adj/n_kept:.3f} ({kept_adj}/{n_kept}) |" if n_kept else "| n/a |")

    L += ["", f"Base rate without any gate: {base_adj/len(rows):.3f} "
          f"({base_adj}/{len(rows)}) of oracle calls return a verdict.", ""]

    # verdict against the target, for the full gate
    full = RULES["A+B+C (full gate)"] if emu_on else RULES["A+B"]
    rej = {v: 0 for v in VERDICTS}
    for r in rows:
        if rejected_by(r["res"], full):
            rej[r["verdict"]] += 1
    ur = rej["unrunnable"] / max(1, n_by_verdict["unrunnable"])
    ll = rej["leak"] / max(1, n_by_verdict["leak"])
    met = ur >= TARGET_UNRUNNABLE_REMOVED and ll <= TARGET_LEAK_LOST
    L += [f"**Target {'MET' if met else 'NOT MET'}:** the full gate removes "
          f"{ur:.1%} of UNRUNNABLE (target $\\geq$ {TARGET_UNRUNNABLE_REMOVED:.0%}) "
          f"and loses {ll:.1%} of LEAK (target $\\leq$ {TARGET_LEAK_LOST:.0%}).", ""]

    # per-class and per-round breakdown of the full gate
    for key, title in (("cls", "class"), ("round", "RL round")):
        L += [f"## Full gate by {title}", "",
              f"| {title} | n | unrunnable removed | leak lost |", "|---|---|---|---|"]
        groups = collections.defaultdict(list)
        for r in rows:
            groups[r.get(key)].append(r)
        for g in sorted(groups, key=lambda x: (x is None, x)):
            gr = groups[g]
            nu = sum(1 for r in gr if r["verdict"] == "unrunnable")
            nl = sum(1 for r in gr if r["verdict"] == "leak")
            ru = sum(1 for r in gr if r["verdict"] == "unrunnable" and rejected_by(r["res"], full))
            rl = sum(1 for r in gr if r["verdict"] == "leak" and rejected_by(r["res"], full))
            L.append(f"| {g} | {len(gr)} | {fmt(ru, nu)} | {fmt(rl, nl)} |")
        L.append("")

    # why candidates were rejected / emulation outcome distribution
    L += ["## Stage outcomes by verdict", "",
          "| verdict | assembles=False | unsupported on live path | emulation outcome |",
          "|---|---|---|---|"]
    for v in VERDICTS:
        gr = [r for r in rows if r["verdict"] == v]
        na = sum(1 for r in gr if r["res"]["assembles"] is False)
        nb = sum(1 for r in gr if r["res"]["oracle_supported"] is False)
        emu = collections.Counter(r["res"]["emulated"] for r in gr)
        emu_s = ", ".join(f"{k} {n}" for k, n in emu.most_common())
        L.append(f"| {v} | {na}/{len(gr)} | {nb}/{len(gr)} | {emu_s} |")

    # which mnemonics drive stage B, and what the emulator faults on
    bad = collections.Counter()
    for r in rows:
        for i in r["res"]["unsupported_instrs"]:
            bad[i.split()[0].lower()] += 1
    L += ["", "## What stage B rejects (mnemonic on the reachable path, all verdicts)", "",
          "| mnemonic | count |", "|---|---|"]
    for m, n in bad.most_common(12):
        L.append(f"| `{m}` | {n} |")
    L += ["", "These are instructions Spectector's x86 table genuinely lacks. "
          "`bt`/`bts`/`btr`/`btc` are present in its source but commented out, and "
          "`rdtsc`, `verw` and `movntdqa` are absent entirely -- which is also why "
          "the symbolic oracle cannot adjudicate the MDS and L1TF families at all.", ""]

    Path(a.out).write_text("\n".join(L) + "\n")
    print("\n".join(L))
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
