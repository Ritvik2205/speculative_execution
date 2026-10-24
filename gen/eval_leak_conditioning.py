#!/usr/bin/env python3
"""eval_leak_conditioning.py — does the <MIT_*> token actually steer the generator?

Step 5a (this file, cheap, no oracle): sample N gadgets per class with mit=leak
and N with mit=safe, and measure whether the two sample sets DIFFER at all —
fence-token count/presence (the mitigation knob) and opcode-distribution
divergence. Fences are vocabulary tokens, so this needs no realizer and no
oracle; it is the gate before the expensive Spectector run. If mit=leak and
mit=safe produce the same distribution, conditioning failed and training must be
fixed first (more epochs / mit-upweight / init-from) — no point running the
oracle.

Step 5b (oracle leak-rate gap) is a separate, heavier run (Spectector for V1/V4
on the cluster); this file only emits the structural gate.

Expectation if the token works: mit=safe samples carry MORE / better fences than
mit=leak (the training safe arms include fence_all + well-placed twins), and the
two opcode distributions are measurably different. This is NOT a leak claim —
only a "the token changes what the model emits" claim; the oracle (5b) decides
whether the leak arm actually leaks.
"""
from __future__ import annotations
import argparse
import json
import math
import sys
from collections import Counter
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
sys.path.insert(0, str(ROOT / "gen"))
sys.path.insert(0, str(ROOT / "spec"))

import torch  # noqa: E402
from generator import CondTransformerLM  # noqa: E402

FENCE_SUBSTR = ("lfence", "mfence", "sfence", "dsb", "isb", "csdb")
HW_CLASSES = ["SPECTRE_V1", "SPECTRE_V4", "MDS", "L1TF"]


def is_fence(tok: str) -> bool:
    t = tok.lower()
    return any(s in t for s in FENCE_SUBSTR)


def js_divergence(a: Counter, b: Counter) -> float:
    """Jensen-Shannon divergence (base 2) between two token-unigram dists."""
    keys = set(a) | set(b)
    na, nb = sum(a.values()) or 1, sum(b.values()) or 1
    def H(p):
        return -sum(x * math.log2(x) for x in p if x > 0)
    pa = [a[k] / na for k in keys]
    pb = [b[k] / nb for k in keys]
    pm = [(x + y) / 2 for x, y in zip(pa, pb)]
    return H(pm) - 0.5 * H(pa) - 0.5 * H(pb)


def sample_set(model, cls, arch, mit, n, temperature, top_k):
    rows = []
    for _ in range(n):
        toks = model.sample(cls, arch, mit=mit, temperature=temperature, top_k=top_k)
        rows.append(toks)
    return rows


def summarise(rows):
    fences = [sum(1 for t in r if is_fence(t)) for r in rows]
    with_fence = sum(1 for f in fences if f > 0)
    lens = [len(r) for r in rows]
    uni = Counter(t for r in rows for t in r)
    return {
        "n": len(rows),
        "mean_fence": round(sum(fences) / max(len(fences), 1), 3),
        "pct_with_fence": round(with_fence / max(len(rows), 1), 3),
        "mean_len": round(sum(lens) / max(len(lens), 1), 2),
        "_uni": uni,
        "_rows": rows,
    }


def main(argv=None) -> int:
    ap = argparse.ArgumentParser(description=__doc__,
                                 formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument("--model", default=str(ROOT / "gen/generator_leakcond.pt"))
    ap.add_argument("--arch", default="x86_64")
    ap.add_argument("--n", type=int, default=200)
    ap.add_argument("--temperature", type=float, default=0.9)
    ap.add_argument("--top-k", type=int, default=20)
    ap.add_argument("--seed", type=int, default=0)
    ap.add_argument("--out-dir", default=str(ROOT / "gen/leakcond_eval"))
    args = ap.parse_args(argv)
    torch.manual_seed(args.seed)

    model = CondTransformerLM.load(args.model)
    v = model.vocab
    if not getattr(v, "mit_id", None):
        print("ERROR: model has no <MIT_*> tokens — not a leak-cond checkpoint.", file=sys.stderr)
        return 2
    classes = [c for c in HW_CLASSES if c in v.cls_id]
    print(f"model={args.model} classes={classes} mit={list(v.mit_id)} "
          f"n={args.n} temp={args.temperature} top_k={args.top_k}")

    out = Path(args.out_dir); out.mkdir(parents=True, exist_ok=True)
    report, rows_dump = {}, []
    for cls in classes:
        leak = summarise(sample_set(model, cls, args.arch, "leak", args.n, args.temperature, args.top_k))
        safe = summarise(sample_set(model, cls, args.arch, "safe", args.n, args.temperature, args.top_k))
        jsd = round(js_divergence(leak["_uni"], safe["_uni"]), 4)
        # identical-sample overlap: fraction of leak samples whose exact token
        # sequence also appears in the safe set (high => token did little)
        safe_set = {tuple(r) for r in safe["_rows"]}
        overlap = round(sum(1 for r in leak["_rows"] if tuple(r) in safe_set) / max(args.n, 1), 3)
        report[cls] = {
            "leak": {k: leak[k] for k in ("mean_fence", "pct_with_fence", "mean_len")},
            "safe": {k: safe[k] for k in ("mean_fence", "pct_with_fence", "mean_len")},
            "fence_gap_safe_minus_leak": round(safe["mean_fence"] - leak["mean_fence"], 3),
            "opcode_jsd": jsd,
            "exact_overlap_leak_in_safe": overlap,
        }
        for mit, s in (("leak", leak), ("safe", safe)):
            for r in s["_rows"]:
                rows_dump.append({"class": cls, "mit": mit, "tokens": r})

    (out / "leakcond_eval.json").write_text(json.dumps(report, indent=2))
    (out / "leakcond_samples.jsonl").write_text(
        "\n".join(json.dumps(r) for r in rows_dump) + "\n")

    # ---- verdict ----
    print("\n== structural gate: did the <MIT_*> token move the output? ==")
    print(f"{'class':12s} {'fence_leak':>10s} {'fence_safe':>10s} {'gap':>6s} "
          f"{'JSD':>7s} {'overlap':>8s}")
    moved = 0
    for cls, d in report.items():
        print(f"{cls:12s} {d['leak']['mean_fence']:10.3f} {d['safe']['mean_fence']:10.3f} "
              f"{d['fence_gap_safe_minus_leak']:6.3f} {d['opcode_jsd']:7.4f} "
              f"{d['exact_overlap_leak_in_safe']:8.3f}")
        # "moved" = distributions differ (JSD above a small floor) AND safe is
        # not less-fenced than leak. A real signal is gap>0 (safe more fenced).
        if d["opcode_jsd"] > 0.01 and d["fence_gap_safe_minus_leak"] >= 0:
            moved += 1
    print(f"\nclasses where the token moved output in the expected direction: "
          f"{moved}/{len(report)}")
    print("(this is a structural gate, NOT a leak measurement. Oracle-grounded "
          "leak-rate gap for V1/V4 is step 5b.)")
    print(f"\nwrote {out}/leakcond_eval.json, leakcond_samples.jsonl")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
