#!/usr/bin/env python3
"""minimize_leaks.py — delta-debug generated leaks down to a 1-minimal body.

The minimality stage for *generated* leaks (the real-violation half is Revizor's
instruction-removal pass; see oracle/revizor/scripts/run_multiclass_campaign.sh
--minimize). Given the confirmed-leak samples the RL loop logged
(gen/rl_lencond_samples.jsonl, verdict == "leak"), this removes body
instructions with Zeller's ddmin, using Spectector as the test: a removal is
kept only if the reduced gadget STILL leaks. The result is a 1-minimal body
(no single further instruction can be dropped without losing the leak), which
is the generated-side input to Table~\\ref{tab:min} in the paper.

Oracle requirement: this calls SpectectorValidator, so it runs where Spectector
runs (the cluster, or this Mac via Docker) -- NOT on the arm64 Mac under qemu,
where the x86 analysis is unreliable. ddmin itself (the `ddmin` function) is a
pure function of a boolean test and is unit-tested offline with a fake oracle
(tests/gen/test_minimize_leaks.py).

Run (cluster, after sourcing the specexec env + SPECEXEC_SPECTECTOR_SIF set):
    python3 gen/minimize_leaks.py \\
        --samples gen/rl_lencond_samples.jsonl \\
        --class SPECTRE_V1 --class SPECTRE_V4 --per-class 40 \\
        --out _min/generated_min.jsonl --md _min/generated_min.md
"""
from __future__ import annotations

import argparse
import json
import statistics
import sys
from pathlib import Path
from typing import Callable, List

ROOT = Path(__file__).resolve().parent.parent
sys.path.insert(0, str(ROOT))
sys.path.insert(0, str(ROOT / "gen"))


# ---------------------------------------------------------------------------
# ddmin: Zeller & Hildebrandt's delta-debugging to 1-minimality.
# Pure function of `test`. `test(subset) -> True` means the subset still leaks.
# We minimise the body while keeping test(body) == True.
# ---------------------------------------------------------------------------
def ddmin(body: List[str], test: Callable[[List[str]], bool]) -> List[str]:
    """Return a 1-minimal sublist of `body` for which `test` is still True.

    Assumes test(body) is True on entry (the caller confirms the full gadget
    leaks first). Classic ddmin: try to remove ever-finer complements; a
    removal is accepted iff the remainder still passes `test`.
    """
    assert test(body), "ddmin requires the full input to pass the test"
    n = 2
    current = list(body)
    while len(current) >= 2:
        chunk = max(1, len(current) // n)
        subsets = [current[i:i + chunk] for i in range(0, len(current), chunk)]
        reduced = False
        # try each complement (remove one chunk, keep the rest)
        for i in range(len(subsets)):
            complement = [x for j, s in enumerate(subsets) if j != i for x in s]
            if complement and test(complement):
                current = complement
                n = max(n - 1, 2)
                reduced = True
                break
        if reduced:
            continue
        if n >= len(current):
            break
        n = min(len(current), 2 * n)
    return current


# ---------------------------------------------------------------------------
# Spectector test: does this body (spliced into the class victim) still leak?
# ---------------------------------------------------------------------------
def make_spectector_test(cls: str, arch: str = "x86_64",
                         tag: str = "min") -> Callable[[List[str]], bool]:
    """Build a `test(body) -> bool` that returns True iff Spectector confirms a
    leak for `body` spliced into the `cls` victim template. Imports the heavy
    oracle stack lazily so the pure ddmin above stays offline-testable."""
    from decode import build_gen_body                                   # noqa
    from gen.synth import spectector_gadgets as spec_gadgets            # noqa
    from oracle.validators import SpectectorValidator                   # noqa

    validator = SpectectorValidator(str(ROOT))
    build_dir = ROOT / "oracle" / "build"
    build_dir.mkdir(parents=True, exist_ok=True)
    counter = {"i": 0}

    def test(body: List[str]) -> bool:
        if len(body) < 1:
            return False
        counter["i"] += 1
        gen_body = build_gen_body(body, cls, arch, is_invisispec=False)
        spec_c = spec_gadgets.render_spec(cls, fenced=False, gen_body=gen_body)
        path = build_dir / f"min_{tag}_{cls}_{counter['i']}.c"
        path.write_text(spec_c)
        res = validator.validate({
            "gadget_id": f"min_{tag}_{cls}_{counter['i']}",
            "vuln_class": cls,
            "spectector_source": str(path.relative_to(ROOT)),
            "adjudicable": "yes",
        })
        return res.verdict == "leak"

    return test


def _load_leaks(samples_path: Path, cls: str, limit: int) -> List[dict]:
    out = []
    for line in samples_path.read_text().splitlines():
        if not line.strip():
            continue
        d = json.loads(line)
        if d.get("verdict") == "leak" and d.get("class") == cls \
                and isinstance(d.get("realized_asm"), list):
            out.append(d)
            if len(out) >= limit:
                break
    return out


def main(argv=None) -> int:
    ap = argparse.ArgumentParser(description=__doc__,
                                 formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument("--samples", default=str(ROOT / "gen" / "rl_lencond_samples.jsonl"))
    ap.add_argument("--class", dest="classes", action="append", default=None,
                    help="class to minimise (repeatable); default V1 + V4")
    ap.add_argument("--arch", default="x86_64")
    ap.add_argument("--per-class", type=int, default=40,
                    help="how many confirmed leaks per class to minimise")
    ap.add_argument("--out", default=str(ROOT / "_min" / "generated_min.jsonl"))
    ap.add_argument("--md", default=str(ROOT / "_min" / "generated_min.md"))
    args = ap.parse_args(argv)

    classes = args.classes or ["SPECTRE_V1", "SPECTRE_V4"]
    samples_path = Path(args.samples)
    out_path = Path(args.out)
    out_path.parent.mkdir(parents=True, exist_ok=True)

    per_class_stats = {}
    records = []

    def _flush():
        # write md + jsonl after EACH class (and each gadget) so a job killed
        # or walltimed mid-run still leaves usable partial results. ddmin is
        # oracle-bound and slow; the old write-only-at-end cost a whole 12h run
        # its output when it did not reach the final class (observed 2026-10-17).
        with out_path.open("w") as f:
            for r in records:
                f.write(json.dumps(r) + "\n")
        md = ["# Generated-leak minimality (ddmin + Spectector)", "",
              f"- samples: `{samples_path.name}`  arch: `{args.arch}`  per-class cap: {args.per_class}",
              "", "| class | n | orig median | 1-minimal median | smallest |",
              "|---|---|---|---|---|"]
        for cls, s in per_class_stats.items():
            md.append(f"| {cls} | {s['n']} | {s['orig_median']:.0f} | "
                      f"{s['minimal_median']:.0f} | {s['minimal_min']} |")
        Path(args.md).write_text("\n".join(md) + "\n")

    for cls in classes:
        leaks = _load_leaks(samples_path, cls, args.per_class)
        if not leaks:
            print(f"[min] {cls}: no confirmed leaks in {samples_path.name}")
            continue
        test = make_spectector_test(cls, args.arch)
        orig_lens, min_lens, kept = [], [], 0
        print(f"[min] {cls}: minimising {len(leaks)} leaks", flush=True)
        for d in leaks:
            body = d["realized_asm"]
            if not test(body):
                # re-splice no longer leaks (harness drift); skip, do not count
                continue
            minimal = ddmin(body, test)
            kept += 1
            orig_lens.append(len(body))
            min_lens.append(len(minimal))
            records.append({
                "class": cls, "gadget_id": d.get("gadget_id"),
                "orig_len": len(body), "minimal_len": len(minimal),
                "minimal_body": minimal,
            })
            print(f"    {d.get('gadget_id')}: {len(body)} -> {len(minimal)}", flush=True)
            # running stats + incremental flush so partial survives a kill
            per_class_stats[cls] = {
                "n": kept,
                "orig_median": statistics.median(orig_lens),
                "minimal_median": statistics.median(min_lens),
                "minimal_min": min(min_lens),
            }
            _flush()

    _flush()
    md_txt = Path(args.md).read_text()
    print(md_txt)
    print(f"\n[min] wrote {len(records)} minimal gadgets -> {out_path}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
