"""V2 adjudicability under Spectector-Combined (`-v 2`).

Re-renders already-generated SPECTRE_V2 gadgets (the `gen_spec_rl_SPECTRE_V2_*.c`
files the oracle-RL loop wrote under oracle/build/) into the combined-oracle
victim (gen/synth/spectector_gadgets.render_spec_combined): the generated body
becomes the never-called landing pad `leaky`, reached only by a mispredicted
indirect call. Each body runs twice -- unfenced, and fenced at the landing
pad's entry -- so every leak verdict comes with its own mitigation control.

Two hand-written anchors run first in every shard (the default transmit body,
unfenced and fenced); they must come back LEAK and SAFE, else the shard's
numbers are not trusted (reported as `anchors_ok`).

    # one shard (Slurm array task) of the run:
    python3 oracle/run_v2_combined.py run --shard 0 --nshards 10 --workers 4
    # once all shards finish:
    python3 oracle/run_v2_combined.py summarize

Needs SPECEXEC_CONTAINER_RUNTIME=apptainer and SPECEXEC_SPECTECTOR_COMBINED_SIF
on the cluster (see oracle/v2_combined.sbatch).
"""
from __future__ import annotations

import argparse
import json
import re
import sys
from collections import Counter
from concurrent.futures import ThreadPoolExecutor
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
sys.path.insert(0, str(ROOT))

from gen.synth.spectector_gadgets import render_spec_combined  # noqa: E402
from oracle.validators.base import LEAK, SAFE, UNRUNNABLE  # noqa: E402
from oracle.validators.spectector_validator import SpectectorValidator  # noqa: E402

DEFAULT_SOURCES = "oracle/build/gen_spec_rl_SPECTRE_V2_*.c"
OUT_DIR = ROOT / "oracle" / "build" / "v2_combined"
RESULTS_DIR = ROOT / "eval" / "v2_combined"

# The upstream V2 victim is `void gadget(size_t i){ <gen_body> }` -- the body
# is everything between the opening brace and the final ` }`.
_BODY_RE = re.compile(r"void gadget\(size_t i\)\{ (.*) \}\s*$", re.DOTALL)


def extract_gen_body(c_src: str) -> str | None:
    m = _BODY_RE.search(c_src)
    return m.group(1) if m else None


def load_bodies(pattern: str) -> list[tuple[str, str]]:
    """(source_id, gen_body) for every parsable source, sorted by id so shards
    are deterministic across invocations."""
    out = []
    for p in sorted(ROOT.glob(pattern)):
        body = extract_gen_body(p.read_text())
        if body is not None:
            out.append((p.stem.removeprefix("gen_spec_"), body))
    return out


def _validate(validator, gid, src_text):
    path = OUT_DIR / f"{gid}.c"
    path.write_text(src_text)
    r = validator.validate({"gadget_id": gid, "vuln_class": "SPECTRE_V2",
                            "spectector_source": str(path.relative_to(ROOT)),
                            "adjudicable": "yes"})
    return r.verdict


def run_one(validator, source_id, body):
    """Unfenced + fenced verdicts for one body."""
    return {
        "source_id": source_id,
        "unfenced": _validate(validator, f"v2c_{source_id}_u",
                              render_spec_combined("SPECTRE_V2", False, body)),
        "fenced": _validate(validator, f"v2c_{source_id}_f",
                            render_spec_combined("SPECTRE_V2", True, body)),
    }


def cmd_run(args):
    results_dir = Path(args.results_dir)
    OUT_DIR.mkdir(parents=True, exist_ok=True)
    results_dir.mkdir(parents=True, exist_ok=True)
    validator = SpectectorValidator(str(ROOT), versions="2", window=args.window,
                                    steps=args.steps, timeout=args.timeout)
    bodies = load_bodies(args.sources)
    mine = bodies[args.shard::args.nshards]
    if args.limit:
        mine = mine[:args.limit]
    print(f"shard {args.shard}/{args.nshards}: {len(mine)} of {len(bodies)} bodies, "
          f"window={args.window} steps={args.steps} timeout={args.timeout}s", flush=True)

    anchor = run_one(validator, f"anchor_s{args.shard}", None)
    anchors_ok = anchor["unfenced"] == LEAK and anchor["fenced"] == SAFE
    print(f"anchors: unfenced={anchor['unfenced']} fenced={anchor['fenced']} "
          f"ok={anchors_ok}", flush=True)

    out = results_dir / f"shard_{args.shard:03d}.jsonl"
    with open(out, "w") as f, ThreadPoolExecutor(args.workers) as pool:
        f.write(json.dumps({"anchor": anchor, "anchors_ok": anchors_ok,
                            "window": args.window, "steps": args.steps,
                            "timeout": args.timeout}) + "\n")
        futs = [pool.submit(run_one, validator, sid, body) for sid, body in mine]
        for i, fut in enumerate(futs, 1):
            row = fut.result()
            f.write(json.dumps(row) + "\n")
            f.flush()
            print(f"[{i}/{len(mine)}] {row['source_id']}: "
                  f"u={row['unfenced']} f={row['fenced']}", flush=True)
    print(f"wrote {out}")
    return 0


def summarize(rows: list[dict]) -> dict:
    """Adjudicability = unfenced verdict is LEAK or SAFE (not UNRUNNABLE).
    The fenced twin is the control: a body that leaks unfenced should be SAFE
    once the landing pad is fenced; a fenced LEAK is an oracle anomaly."""
    n = len(rows)
    u = Counter(r["unfenced"] for r in rows)
    adjud = u[LEAK] + u[SAFE]
    leaks = [r for r in rows if r["unfenced"] == LEAK]
    fenced_on_leaks = Counter(r["fenced"] for r in leaks)
    return {
        "n": n,
        "unfenced": dict(u),
        "adjudicable": adjud,
        "adjudicable_rate": adjud / n if n else 0.0,
        "leak": u[LEAK],
        "leak_rate_of_adjudicable": u[LEAK] / adjud if adjud else 0.0,
        "fenced_on_leaks": dict(fenced_on_leaks),
        "mitigated_rate": fenced_on_leaks[SAFE] / len(leaks) if leaks else 0.0,
        "fenced_leak_anomalies": sum(r["fenced"] == LEAK for r in rows),
    }


def cmd_summarize(args):
    results_dir = Path(args.results_dir)
    rows, headers = [], []
    for p in sorted(results_dir.glob("shard_*.jsonl")):
        lines = [json.loads(x) for x in p.read_text().splitlines() if x.strip()]
        headers.append((p.name, lines[0]))
        rows.extend(lines[1:])
    if not headers:
        print(f"no shards under {results_dir}", file=sys.stderr)
        return 1
    s = summarize(rows)
    bad = [name for name, h in headers if not h["anchors_ok"]]
    h0 = headers[0][1]
    md = [
        "# SPECTRE_V2 adjudicability under Spectector-Combined (`-v 2`)",
        "",
        "Generated by `oracle/run_v2_combined.py summarize`.",
        f"Budget: `-w {h0['window']} --steps {h0['steps']}`, {h0['timeout']} s per run.",
        f"Shards: {len(headers)}; anchors ok in all: **{not bad}**"
        + (f" (failed: {', '.join(bad)})" if bad else ""),
        "",
        "| metric | value |",
        "|---|---|",
        f"| generated V2 bodies | {s['n']} |",
        f"| adjudicable (unfenced LEAK or SAFE) | {s['adjudicable']} ({s['adjudicable_rate']:.1%}) |",
        f"| LEAK, of adjudicable | {s['leak']} ({s['leak_rate_of_adjudicable']:.1%}) |",
        f"| leaks made SAFE by landing-pad fence | {s['fenced_on_leaks'].get(SAFE, 0)} ({s['mitigated_rate']:.1%}) |",
        f"| fenced-LEAK anomalies | {s['fenced_leak_anomalies']} |",
        "",
        f"Unfenced verdicts: {s['unfenced']}  ",
        f"Fenced verdicts on unfenced leaks: {s['fenced_on_leaks']}",
        "",
    ]
    (results_dir / "summary.json").write_text(json.dumps(
        {"summary": s, "anchors_failed": bad, "budget": h0}, indent=2))
    (results_dir / "summary.md").write_text("\n".join(md))
    print("\n".join(md))
    return 0


def main(argv=None):
    ap = argparse.ArgumentParser(description=__doc__.split("\n\n")[0])
    sub = ap.add_subparsers(dest="cmd", required=True)
    r = sub.add_parser("run")
    r.add_argument("--sources", default=DEFAULT_SOURCES,
                   help="glob (relative to the repo) of upstream-victim V2 .c files")
    r.add_argument("--shard", type=int, default=0)
    r.add_argument("--nshards", type=int, default=1)
    r.add_argument("--workers", type=int, default=4)
    r.add_argument("--limit", type=int, default=0, help="cap bodies per shard (smoke runs)")
    # -w 50, not the fork's 200: on the default victim -w 50 adjudicates both
    # twins in ~4 s, while -w 200 never finishes the unfenced one in 900 s.
    r.add_argument("--window", type=int, default=50)
    r.add_argument("--steps", type=int, default=1000000)
    r.add_argument("--timeout", type=int, default=300)
    sm = sub.add_parser("summarize")
    for p_ in (r, sm):
        p_.add_argument("--results-dir", default=str(RESULTS_DIR))
    args = ap.parse_args(argv)
    return cmd_run(args) if args.cmd == "run" else cmd_summarize(args)


if __name__ == "__main__":
    sys.exit(main())
