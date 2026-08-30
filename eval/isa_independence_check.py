#!/usr/bin/env python3
"""isa_independence_check.py — is a corpus genuinely written for its ISA, or is it
a transliteration of another ISA's corpus?

Why this exists. Our RISC-V corpus was produced from the x86/ARM corpus by a ~40
rule mnemonic substitution table (`scripts/translate_riscv_inline_asm.py`), so it
is not independent evidence. Before generating RISC-V gadgets at volume we need a
test that can TELL THE DIFFERENCE — otherwise "independently implemented in
idiomatic RISC-V" is an honour system.

The test. Instruction *sequencing* is what a mnemonic-substitution table cannot
change: it rewrites opcodes one at a time and leaves the order alone. So compare
canonical-op **bigram** distributions across ISAs, using the spec's ISA-neutral
vocabulary so the comparison is meaningful at all.

The yardstick is the point. A raw divergence number means nothing on its own, so
every comparison is reported against **x86_64 vs arm64** — two corpora that were
genuinely built independently. A candidate ISA that sits much CLOSER to its source
than x86 and arm sit to each other is a transliteration.

CALIBRATION RESULT — read before trusting the pooled number. Run against our own
RISC-V corpus, which is a *known* transliteration, the pooled comparison returns
0.97x the yardstick and detects nothing. Class mix differs across corpora and
moves the bigram distribution enough to hide provenance. What does detect it is
the per-class comparison plus a sign test on its direction: RISC-V is closer to
arm64 than arm64 is to x86_64 in 6 of 6 shared classes (p = 0.016), and arm64 is
exactly the ISA the corpus was transliterated from. So the pooled row is context;
the per-class table and the sign test are the gate.

Metric: Jensen-Shannon divergence (log base 2, so bounded [0, 1]), symmetric and
finite in the presence of zeros, unlike KL.

Confound controlled: corpora have different class mixes, and class mix moves the
bigram distribution on its own. So every comparison is also run PER CLASS, over
classes present in both corpora.

Uncertainty: divergences are bootstrapped over source families (not records),
reusing eval/group_stats.py — the RISC-V corpus has 496 records but only 22
independent families.

Run: python3 eval/isa_independence_check.py [--top-ops 20] [--n-boot 2000]
"""
from __future__ import annotations

import argparse
import sys
from collections import Counter, defaultdict
from pathlib import Path

import numpy as np

ROOT = Path(__file__).resolve().parent.parent
sys.path.insert(0, str(ROOT / "spec"))
sys.path.insert(0, str(ROOT / "eval"))
sys.path.insert(0, str(ROOT / "v54"))

from isa_spec import load_engine                     # noqa: E402
from eval_riscv_real import build_riscv_records      # noqa: E402
import train_mlm as T                                # noqa: E402
from group_stats import family                       # noqa: E402

SPEC_FOR_ARCH = {"x86_64": "x86_64.json", "arm64": "arm64.json",
                 "arm32": "arm64.json", "riscv64": "riscv.json"}
STUB_MAX = 10


def _is_instr(line: str) -> bool:
    s = line.strip()
    return bool(s) and not s.startswith(".") and not s.endswith(":")


def bigrams_of(rec, engine):
    ops = [engine.canonical_op(l) for l in rec["sequence"] if _is_instr(l)]
    return list(zip(ops, ops[1:]))


def js_divergence(p: dict, q: dict) -> float:
    """Jensen-Shannon divergence, log2, over two count dicts. Bounded [0, 1]."""
    keys = set(p) | set(q)
    if not keys:
        return float("nan")
    tp, tq = sum(p.values()), sum(q.values())
    if tp == 0 or tq == 0:
        return float("nan")
    P = np.array([p.get(k, 0) / tp for k in keys])
    Q = np.array([q.get(k, 0) / tq for k in keys])
    M = 0.5 * (P + Q)

    def _kl(a, b):
        mask = a > 0
        return float(np.sum(a[mask] * np.log2(a[mask] / b[mask])))

    return 0.5 * _kl(P, M) + 0.5 * _kl(Q, M)


def counts_by_family(recs, engine):
    """-> {family: Counter(bigram)}. The family is the resampling unit."""
    out = defaultdict(Counter)
    for r in recs:
        fam = family(r.get("group") or r.get("source_file") or "unknown")
        out[fam].update(bigrams_of(r, engine))
    return dict(out)


def pooled(fams, keys=None):
    c = Counter()
    for f in fams:
        c.update(f)
    return c


def bootstrap_js(fams_a, fams_b, n_boot=2000, seed=0):
    """JS divergence with a CI bootstrapped over FAMILIES, not records."""
    A, B = list(fams_a.values()), list(fams_b.values())
    point = js_divergence(pooled(A), pooled(B))
    if len(A) < 2 or len(B) < 2:
        return point, float("nan"), float("nan")
    rng = np.random.RandomState(seed)
    vals = []
    for _ in range(n_boot):
        ia = rng.randint(0, len(A), len(A))
        ib = rng.randint(0, len(B), len(B))
        vals.append(js_divergence(pooled([A[i] for i in ia]),
                                  pooled([B[i] for i in ib])))
    vals = np.array([v for v in vals if not np.isnan(v)])
    return point, float(np.percentile(vals, 2.5)), float(np.percentile(vals, 97.5))


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--n-boot", type=int, default=2000)
    ap.add_argument("--stub-max", type=int, default=STUB_MAX)
    ap.add_argument("--riscv-jsonl", default=None,
                    help="use this JSONL as the riscv64 corpus instead of "
                         "riscv_corpus/. Point it at the real harvested PoCs "
                         "(spec/data/riscv_real_validation.jsonl) to run the "
                         "gate's POSITIVE CONTROL: genuinely RISC-V-native code "
                         "should NOT show the transliteration signature.")
    args = ap.parse_args()

    engines = {a: load_engine(f) for a, f in SPEC_FOR_ARCH.items()}
    train = T.load(T.TRAIN)
    corpora = {
        "x86_64": [r for r in train if r.get("arch") == "x86_64"],
        "arm64": [r for r in train if r.get("arch") == "arm64"],
    }
    if args.riscv_jsonl:
        import json as _json
        rv = [_json.loads(l) for l in open(args.riscv_jsonl) if l.strip()]
        print(f"riscv64 corpus OVERRIDDEN with {args.riscv_jsonl} "
              f"({len(rv)} records)")
    else:
        rv = build_riscv_records()
    rv = [r for r in rv
          if len([l for l in r["sequence"] if _is_instr(l)]) > args.stub_max]
    corpora["riscv64"] = rv

    print("corpora (RISC-V stubs excluded):")
    for a, recs in corpora.items():
        fams = {family(r.get("group") or r.get("source_file") or "?") for r in recs}
        print(f"  {a:8s} {len(recs):5d} records, {len(fams):4d} families")

    fam_counts = {a: counts_by_family(recs, engines[a]) for a, recs in corpora.items()}

    print("\n" + "=" * 74)
    print("OVERALL — canonical-op bigram JS divergence (0 = identical, 1 = disjoint)")
    print("=" * 74)
    pairs = [("x86_64", "arm64"), ("x86_64", "riscv64"), ("arm64", "riscv64")]
    res = {}
    for a, b in pairs:
        pt, lo, hi = bootstrap_js(fam_counts[a], fam_counts[b], args.n_boot)
        res[(a, b)] = pt
        tag = "  <-- YARDSTICK (independently built corpora)" if (a, b) == ("x86_64", "arm64") else ""
        print(f"  {a:8s} vs {b:8s}  JS = {pt:.4f}  95%CI [{lo:.4f}, {hi:.4f}]{tag}")

    yard = res[("x86_64", "arm64")]
    print(f"\n  Interpretation. If RISC-V were independently written, its distance to")
    print(f"  x86 and to arm should be COMPARABLE TO OR GREATER THAN the {yard:.4f}")
    print(f"  between x86 and arm. Materially smaller means it inherited their")
    print(f"  instruction ordering — the signature of transliteration.")
    for a, b in pairs[1:]:
        r = res[(a, b)] / yard if yard else float("nan")
        verdict = ("TRANSLITERATION-LIKE (much closer than independent corpora)"
                   if r < 0.6 else
                   "not detected at this pooling" if r >= 0.9 else "ambiguous")
        print(f"    {b} vs {a}: {r:.2f}x the yardstick  -> {verdict}")
    print("\n  NOT SUFFICIENT ON ITS OWN. Calibrated against our RISC-V corpus —")
    print("  which is a known transliteration — this pooled comparison returns")
    print("  0.97x and detects nothing. Class mix differs across corpora and")
    print("  moves the bigram distribution enough to mask provenance. Read the")
    print("  per-class table and the sign test below; the pooled row is context.")

    print("\n" + "=" * 74)
    print("PER CLASS — controls for class mix, which moves bigrams on its own")
    print("=" * 74)
    by_cls = {a: defaultdict(list) for a in corpora}
    for a, recs in corpora.items():
        for r in recs:
            by_cls[a][r["label"]].append(r)
    shared = sorted(set(by_cls["x86_64"]) & set(by_cls["arm64"]) & set(by_cls["riscv64"]))
    print(f"{'class':26s} {'x86-arm':>9s} {'x86-rv':>9s} {'arm-rv':>9s}   ratio(rv/yard)")
    for c in shared:
        fc = {a: counts_by_family(by_cls[a][c], engines[a]) for a in corpora}
        if any(len(v) == 0 for v in fc.values()):
            continue
        y = js_divergence(pooled(fc["x86_64"].values()), pooled(fc["arm64"].values()))
        xr = js_divergence(pooled(fc["x86_64"].values()), pooled(fc["riscv64"].values()))
        ar = js_divergence(pooled(fc["arm64"].values()), pooled(fc["riscv64"].values()))
        ratio = (min(xr, ar) / y) if y else float("nan")
        n_rv = len(by_cls["riscv64"][c])
        flag = "  LOW n" if n_rv < 10 else ""
        print(f"  {c:24s} {y:9.4f} {xr:9.4f} {ar:9.4f}   {ratio:8.2f}x{flag}")

    # Sign test over classes. The per-class ratios are individually shaky (RISC-V
    # has 22 families total, fewer per class), but the DIRECTION being consistent
    # across independent classes is itself evidence. Under a null of independence,
    # the candidate should be closer to arm than x86-is-to-arm about half the time.
    closer, total, detail = 0, 0, []
    for c in shared:
        fc = {a: counts_by_family(by_cls[a][c], engines[a]) for a in corpora}
        if any(len(v) == 0 for v in fc.values()):
            continue
        y = js_divergence(pooled(fc["x86_64"].values()), pooled(fc["arm64"].values()))
        ar = js_divergence(pooled(fc["arm64"].values()), pooled(fc["riscv64"].values()))
        total += 1
        if ar < y:
            closer += 1
        detail.append((c, ar, y))
    if total:
        from math import comb
        p_val = sum(comb(total, k) for k in range(closer, total + 1)) / (2 ** total)
        print("\n" + "=" * 74)
        print("SIGN TEST — is the candidate systematically closer to one source ISA?")
        print("=" * 74)
        print(f"  classes where arm-vs-riscv < x86-vs-arm: {closer}/{total}")
        print(f"  one-sided sign test p = {p_val:.4f}")
        if p_val < 0.05:
            print("  -> SYSTEMATICALLY closer to arm64 than two independent corpora are")
            print("     to each other. The RISC-V corpus was compiled from arm64-named")
            print("     sources (enhanced_variants/l1tf_arm64_gen_*), so arm64 is the")
            print("     expected transliteration source, and this is its signature.")
            print("     NOTE the overall (class-pooled) number MISSES this — class mix")
            print("     masks it. The per-class control is what surfaces it.")
        else:
            # A sign test over k classes cannot go below 0.5**k. With fewer than
            # 5 shared classes it CANNOT reach p<0.05 even if every class points
            # the same way, so "no signature detected" is not evidence of
            # independence — it is absence of power. Say so, loudly, or a small
            # corpus buys a free pass by being small.
            floor = 0.5 ** total
            if floor >= 0.05:
                print(f"  -> UNDERPOWERED: with {total} shared classes the "
                      f"smallest reachable p is {floor:.3f}, so this test could "
                      f"NOT have fired whatever the data said.")
                print("     Report as 'no signature detected, test underpowered',")
                print(f"     never as 'independent'. Needs >=5 shared classes.")
            else:
                print("  -> no systematic asymmetry detected; the test had the "
                      "power to fire and did not")

    print("\nUSE FOR GENERATED SAMPLES: run this with the generated RISC-V corpus in")
    print("place of riscv64. A ratio well below 1.0 means the generator reproduced")
    print("the training ISAs' instruction ordering rather than writing idiomatic")
    print("RISC-V — i.e. hand-transliteration in slower motion.")


if __name__ == "__main__":
    main()
