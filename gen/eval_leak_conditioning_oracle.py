#!/usr/bin/env python3
"""eval_leak_conditioning_oracle.py — step 5b: does mit=leak actually LEAK more?

The structural gate (5a) showed the <MIT_*> token moves output toward
fence-sparse under mit=leak. 5b is the real proof: sample mit=leak vs mit=safe
for the Spectector-adjudicable classes (SPECTRE_V1, SPECTRE_V4), realize each
into the exact same unfenced victim template the RL loop uses, and adjudicate
with the real Spectector oracle. Report leak_rate(mit=leak) - leak_rate(mit=safe)
with Wilson intervals.

Every leak verdict here is an EXTERNAL-oracle verdict (Spectector), not the
classifier and not a structural proxy -- the project's standing rule. Spectector
models conditional-branch (PHT) speculation, so V1 is fully adjudicable and V4
partially; MDS/L1TF have no symbolic oracle and are out of scope for this file
(they stay structural, or go to the i5 Revizor offline).

The gadget path (realize_sequence -> build_gen_body -> render_spec(fenced=False)
-> .c -> validate) is reused verbatim from gen/rl_from_oracle._build_realize_fn,
so a mit=safe body that carries fences is adjudicated exactly as the RL loop
would adjudicate it -- the fence lives in the generated body, the victim
template adds none.

Cluster only (needs the Spectector Apptainer .sif). See the sbatch.
"""
from __future__ import annotations
import argparse
import json
import math
import sys
from collections import Counter
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
for p in (ROOT, ROOT / "gen", ROOT / "spec", ROOT / "v54"):
    sys.path.insert(0, str(p))

import torch  # noqa: E402
from generator import CondTransformerLM  # noqa: E402
import gen.decode as gen_decode  # noqa: E402  (sets up its own sys.path)
from gen.rl_from_oracle import _build_realize_fn, _GEN_VOCAB_ALIAS  # noqa: E402
from oracle.validators.spectector_validator import SpectectorValidator  # noqa: E402
from oracle.validators.base import LEAK, SAFE  # noqa: E402

DEFAULT_CLASSES = ["SPECTRE_V1", "SPECTRE_V4"]  # Spectector-adjudicable


def wilson(k: int, n: int, z: float = 1.96):
    """Wilson score interval for k/n. Returns (phat, lo, hi)."""
    if n == 0:
        return (float("nan"), float("nan"), float("nan"))
    p = k / n
    d = 1 + z * z / n
    c = (p + z * z / (2 * n)) / d
    h = z * math.sqrt(p * (1 - p) / n + z * z / (4 * n * n)) / d
    return (p, max(0.0, c - h), min(1.0, c + h))


def eval_arm(model, realize_fn, validator, cls, arch, mit, n, temp, top_k, rows_out):
    """Sample n gadgets with the given mit, realize + oracle-adjudicate each."""
    tally = Counter()
    for i in range(n):
        toks = model.sample(cls, arch, mit=mit, temperature=temp, top_k=top_k)
        gadget = realize_fn(toks, cls, arch, 0, i)
        if gadget is None:
            tally["unrealizable"] += 1
            rows_out.append({"class": cls, "mit": mit, "i": i, "verdict": "unrealizable"})
            continue
        res = validator.validate(gadget)
        tally[res.verdict] += 1
        rows_out.append({"class": cls, "mit": mit, "i": i, "verdict": res.verdict,
                         "gadget_id": gadget.get("gadget_id")})
    return tally


def main(argv=None) -> int:
    ap = argparse.ArgumentParser(description=__doc__,
                                 formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument("--model", default=str(ROOT / "gen/generator_leakcond.pt"))
    ap.add_argument("--classes", nargs="+", default=DEFAULT_CLASSES)
    ap.add_argument("--arch", default="x86_64")
    ap.add_argument("--n", type=int, default=60, help="samples per (class, mit)")
    ap.add_argument("--temperature", type=float, default=0.9)
    ap.add_argument("--top-k", type=int, default=20)
    ap.add_argument("--seed", type=int, default=0)
    ap.add_argument("--out-dir", default=str(ROOT / "gen/leakcond_eval"))
    args = ap.parse_args(argv)
    torch.manual_seed(args.seed)

    model = CondTransformerLM.load(args.model)
    if not getattr(model.vocab, "mit_id", None):
        print("ERROR: model has no <MIT_*> tokens — not a leak-cond checkpoint.", file=sys.stderr)
        return 2
    spec = gen_decode.load_spec(f"{args.arch}.json")
    realizer = gen_decode.Realizer(spec, seed=args.seed)
    validator = SpectectorValidator(repo_root=str(ROOT))
    out = Path(args.out_dir); out.mkdir(parents=True, exist_ok=True)

    report, rows = {}, []
    for cls in args.classes:
        vcls = _GEN_VOCAB_ALIAS.get(cls, cls)
        if vcls not in model.vocab.cls_id:
            print(f"skip {cls}: not in generator vocab"); continue
        realize_fn = _build_realize_fn(cls, args.arch, realizer,
                                       gen_decode.spec_gadgets, gen_decode.build_gen_body,
                                       out / "build", ROOT)
        print(f"\n=== {cls} (n={args.n}/arm) ===", flush=True)
        arms = {}
        for mit in ("leak", "safe"):
            t = eval_arm(model, realize_fn, validator, vcls, args.arch, mit,
                         args.n, args.temperature, args.top_k, rows)
            leak = t.get(LEAK, 0)
            safe = t.get(SAFE, 0)
            adj = leak + safe
            realized = args.n - t.get("unrealizable", 0)
            p_adj, lo_adj, hi_adj = wilson(leak, adj)
            arms[mit] = {
                "tally": dict(t),
                "realized": realized, "adjudicable": adj,
                "leak": leak, "safe": safe,
                "leak_rate_adjudicable": round(p_adj, 4) if adj else None,
                "ci_adjudicable": [round(lo_adj, 4), round(hi_adj, 4)] if adj else None,
                "leak_rate_of_realized": round(leak / realized, 4) if realized else None,
            }
            print(f"  mit={mit}: realized={realized} adjudicable={adj} "
                  f"LEAK={leak} SAFE={safe}  leak_rate(adj)={arms[mit]['leak_rate_adjudicable']} "
                  f"tally={dict(t)}", flush=True)
        # gap on the adjudicable leak-rate (the headline)
        gap = None
        if arms["leak"]["leak_rate_adjudicable"] is not None and \
           arms["safe"]["leak_rate_adjudicable"] is not None:
            gap = round(arms["leak"]["leak_rate_adjudicable"]
                        - arms["safe"]["leak_rate_adjudicable"], 4)
        report[cls] = {"arms": arms, "leak_minus_safe_adjudicable": gap}
        print(f"  --> leak_rate(mit=leak) - leak_rate(mit=safe) = {gap}", flush=True)

    (out / "leakcond_oracle.json").write_text(json.dumps(report, indent=2))
    (out / "leakcond_oracle_rows.jsonl").write_text("\n".join(json.dumps(r) for r in rows) + "\n")

    print("\n== 5b oracle verdict (Spectector) ==")
    print(f"{'class':12s} {'leak:adj':>9s} {'leak%':>7s} {'safe:adj':>9s} {'safe%':>7s} {'gap':>7s}")
    for cls, d in report.items():
        a = d["arms"]
        print(f"{cls:12s} {a['leak']['adjudicable']:9d} "
              f"{str(a['leak']['leak_rate_adjudicable']):>7s} "
              f"{a['safe']['adjudicable']:9d} "
              f"{str(a['safe']['leak_rate_adjudicable']):>7s} "
              f"{str(d['leak_minus_safe_adjudicable']):>7s}")
    print("\nPositive gap with non-overlapping Wilson CIs = mit=leak produces "
          "oracle-confirmed leaks at a higher rate than mit=safe: the token "
          "steers toward UNMITIGATED, oracle-grounded. Low adjudicable counts "
          "mean Spectector couldn't model many gadgets (SAFE/UNSUPPORTED) -- "
          "report them, don't hide them.")
    print(f"\nwrote {out}/leakcond_oracle.json + _rows.jsonl")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
