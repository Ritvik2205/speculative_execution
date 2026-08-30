#!/usr/bin/env python3
"""augment_size_multiscale.py — grow x86/arm training windows to the RISC-V size
range, so the model learns the large-graph regime WITHOUT ever seeing RISC-V.

The diagnosis (SPECDISCOVER_RISCV_GENERALISATION.md): v54 trains on ~24-28
instruction windows but RISC-V functions are 40-159+; the model fails on graphs far
larger than any it trained on (H3). The windowing fix shrinks the test to the train
size; this is the complementary, deeper fix — grow the TRAIN to the test size — and
it is what a retrain would use.

Mechanism. Each attack window IS the gadget; a real function embeds that gadget in
surrounding benign code. So for a fraction of records we build enlarged variants by
placing the base window at a random position inside real, same-arch BENIGN filler
(v54/build_benign_filler.py), padding to a target size sampled to span the RISC-V
range. The gadget's instructions are preserved verbatim and contiguous, so its
subgraph is intact — just embedded in a larger graph with benign neighbours, which
is exactly the RISC-V test scenario. Label logic: any window containing the base
gadget keeps the base label; BENIGN base + benign filler stays BENIGN.

Guarantees, all asserted at the end:
  - originals are kept unchanged (multi-scale = originals + enlarged)
  - NO RISC-V anywhere (base and filler are x86_64/arm64 only)
  - the base gadget survives verbatim as a contiguous subsequence of each variant
  - label proportions preserved
  - no composite duplicates a v54_test sequence
  - total size capped under the model's 256-node graph limit

Output: v54/data/v54_train_multiscale.jsonl. v54_train.jsonl is left untouched.

Run: python3 v54/augment_size_multiscale.py --apply [--variants 2] [--frac 1.0]
"""
from __future__ import annotations

import argparse
import hashlib
import json
import random
import sys
from collections import Counter
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
TRAIN = ROOT / "v54" / "data" / "v54_train.jsonl"
TEST = ROOT / "v54" / "data" / "v54_test.jsonl"
FILLER = {a: ROOT / "v54" / "data" / f"benign_filler_{a}.jsonl"
          for a in ("x86_64", "arm64")}
OUT = ROOT / "v54" / "data" / "v54_train_multiscale.jsonl"
NODE_CAP = 200                      # leave headroom under the 256-node graph pad
TARGETS = [48, 72, 108, 156]       # span the RISC-V size range (real median 159)


def load(p):
    return [json.loads(l) for l in open(p) if l.strip()]


def ic(seq):
    return [l for l in seq if l.strip() and not l.strip().startswith('.')
            and not l.strip().endswith(':')]


def h(seq):
    return hashlib.sha256("\n".join(seq).encode()).hexdigest()


def enlarge(base_seq, fillers, target, rng):
    """Embed base_seq (kept verbatim, contiguous) inside benign filler up to
    `target` real instructions. Returns the composite sequence."""
    base_n = len(ic(base_seq))
    need = max(0, target - base_n)
    pre_n = rng.randint(0, need)          # random gadget position
    post_n = need - pre_n

    def take(n):
        out = []
        while len(ic(out)) < n and fillers:
            f = rng.choice(fillers)
            out += f
        # trim to ~n real instructions
        trimmed, count = [], 0
        for line in out:
            trimmed.append(line)
            if line in ic([line]):
                count += 1
            if count >= n:
                break
        return trimmed

    return take(pre_n) + list(base_seq) + take(post_n)


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--apply", action="store_true")
    ap.add_argument("--variants", type=int, default=2,
                    help="enlarged variants per record (originals always kept)")
    ap.add_argument("--frac", type=float, default=1.0,
                    help="fraction of records to also enlarge")
    ap.add_argument("--seed", type=int, default=0)
    args = ap.parse_args()

    for a, f in FILLER.items():
        if not f.exists():
            print(f"missing {f} — run v54/build_benign_filler.py --apply"); sys.exit(2)

    rng = random.Random(args.seed)
    train = load(TRAIN)
    fillers = {a: [r["sequence"] for r in load(f)] for a, f in FILLER.items()}
    test_h = {h(r["sequence"]) for r in load(TEST)} if TEST.exists() else set()

    archs = Counter(r.get("arch") for r in train)
    assert set(archs) <= {"x86_64", "arm64", "arm32"}, f"unexpected arch: {archs}"
    print(f"train: {len(train)} records, archs={dict(archs)}")
    print(f"filler: " + ", ".join(f"{a}={len(v)}" for a, v in fillers.items()))

    out = list(train)                 # originals kept unchanged
    seen = {h(r["sequence"]) for r in train}
    made, skipped_dup, skipped_cap, skipped_nofiller = 0, 0, 0, 0

    for r in train:
        if rng.random() > args.frac:
            continue
        arch = r.get("arch")
        pool = fillers.get(arch) or fillers.get("arm64" if arch == "arm32" else arch)
        if not pool:
            skipped_nofiller += 1
            continue
        base_n = len(ic(r["sequence"]))
        targets = [t for t in TARGETS if t > base_n and t <= NODE_CAP]
        rng.shuffle(targets)
        for target in targets[:args.variants]:
            comp = enlarge(r["sequence"], pool, target, rng)
            if len(ic(comp)) > NODE_CAP:
                skipped_cap += 1
                continue
            hc = h(comp)
            if hc in seen or hc in test_h:
                skipped_dup += 1
                continue
            seen.add(hc)
            made += 1
            out.append({**r, "sequence": comp, "label": r["label"], "arch": arch,
                        "group": r.get("group", ""),
                        "augmentation": (r.get("augmentation") or "") + "+multiscale",
                        "multiscale_target": target,
                        "multiscale_base_n": base_n})

    print(f"\nenlarged variants made: {made} "
          f"(dup-skipped {skipped_dup}, cap-skipped {skipped_cap}, "
          f"no-filler {skipped_nofiller})")
    print(f"total output: {len(out)} records")

    # ---- verification ----
    def sizes(recs): return sorted(len(ic(r["sequence"])) for r in recs)
    def stat(s): return (s[len(s)//2], s[int(0.9*len(s))], max(s))
    b, a = sizes(train), sizes(out)
    print(f"\nsize (median / p90 / max):")
    print(f"  before: {stat(b)}")
    print(f"  after : {stat(a)}   (RISC-V real is 159 / 275 / 328)")

    lb, la = Counter(r["label"] for r in train), Counter(r["label"] for r in out)
    print("\nlabel proportions preserved:")
    for c in sorted(lb):
        print(f"  {c:26s} {lb[c]/len(train)*100:5.1f}% -> {la[c]/len(out)*100:5.1f}%")

    # gadget-preservation + no-riscv + no-leak checks on the enlarged records
    enl = [r for r in out if "+multiscale" in (r.get("augmentation") or "")]
    def contig(base, comp):
        b, c = ic(base), ic(comp)
        for i in range(len(c) - len(b) + 1):
            if c[i:i+len(b)] == b:
                return True
        return False
    base_by = {}
    for r in train:
        base_by.setdefault((r["label"], r.get("group", "")), []).append(r["sequence"])
    intact = 0
    for r in enl:
        cands = base_by.get((r["label"], r.get("group", "")), [])
        if any(contig(bs, r["sequence"]) for bs in cands):
            intact += 1
    print(f"\ngadget preserved verbatim & contiguous: {intact}/{len(enl)} enlarged")
    assert all(r.get("arch") in {"x86_64", "arm64", "arm32"} for r in out), "RISC-V leaked in!"
    orig_h = {h(r["sequence"]) for r in train}
    new_leak = sum(1 for r in enl if h(r["sequence"]) in test_h)
    pre_leak = sum(1 for r in train if h(r["sequence"]) in test_h)
    print(f"enlarged records duplicating a v54_test sequence: {new_leak} (must be 0)")
    assert new_leak == 0, "augmentation created a train/test overlap"
    if pre_leak:
        print(f"  NOTE: {pre_leak} PRE-EXISTING original train record(s) already "
              f"overlap v54_test (not introduced here; a dataset issue to fix "
              f"upstream in build_dataset)")

    if args.apply:
        with OUT.open("w") as f:
            for r in out:
                f.write(json.dumps(r) + "\n")
        print(f"\nwrote {OUT}")
        print("v54_train.jsonl untouched. Train with --train <this file> on the GPU box.")
    else:
        print("\ndry run — pass --apply to write")


if __name__ == "__main__":
    main()
