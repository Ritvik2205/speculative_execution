#!/usr/bin/env python3
"""build_leakcond_corpus.py — assemble the leak-conditioned generator corpus (spec B).

Produces a training JSONL whose records carry a `mit` field (leak/safe/unknown)
so `train_generator.py --leak-cond` can learn to generate leaking vs mitigated
gadgets of a class (see gen/LEAK_CONDITIONING_SPEC.md).

Sources and their mit label (honesty rule: only oracle/HW-confirmed records get
leak/safe; everything unverified is unknown):

  * HW fence-variants (821)  leaking arm (3/3) -> mit=leak,  label=vuln_class
                             mitigated arm (0/3)-> mit=safe,  label=vuln_class
                             (class PRESERVED on the mitigated twin -- that is
                             the contrast that lets mit=leak vs mit=safe diverge
                             for a fixed class; NOT relabelled BENIGN).
  * HW gadget pool (725)     all HW-confirmed leaking -> mit=leak, label=class.
  * v54 train               attack classes -> mit=unknown ; BENIGN -> mit=safe.

LEAKAGE GUARD (critical): the variant leaking arms are *transforms* of the pool
originals (0 byte-identical overlap), so sequence-dedup alone will NOT stop a
held-out base's raw pool original from leaking into train. We therefore split by
**base violation-id** and drop/withhold a base's records from EVERY source --
variants AND pool -- not just the variant rows. Group-holdout, stratified by
vuln_class.

Pure-python; runs anywhere (no torch). On the cluster, stage the 821-record
variants from origin/hw-label-variants first (the in-tree cluster copy is a
stale 806) -- see gen/train_leakcond_generator.sbatch.
"""
from __future__ import annotations
import argparse
import json
import random
import re
from collections import Counter, defaultdict
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
_BASE = re.compile(r"violation-\d{6}-\d{6}")


def load(p: Path) -> list[dict]:
    return [json.loads(l) for l in open(p) if l.strip()]


def base_of(rec: dict) -> str | None:
    m = _BASE.search(rec.get("src_path") or rec.get("group") or "")
    return m.group(0) if m else None


def seqkey(seq) -> tuple:
    return tuple(seq)


def main(argv=None) -> int:
    ap = argparse.ArgumentParser(description=__doc__,
                                 formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument("--variants", default=str(ROOT / "eval/data/revizor_hwlabel_variants.jsonl"))
    ap.add_argument("--pool", default=str(ROOT / "gen/data/hw_generator_pool.jsonl"))
    ap.add_argument("--v54", default=str(ROOT / "v54/data/v54_train.jsonl"))
    ap.add_argument("--out-train", default=str(ROOT / "gen/data/leakcond_corpus_train.jsonl"))
    ap.add_argument("--out-test", default=str(ROOT / "gen/data/leakcond_corpus_heldout.jsonl"))
    ap.add_argument("--holdout-frac", type=float, default=0.2)
    ap.add_argument("--seed", type=int, default=42)
    ap.add_argument("--no-v54", action="store_true",
                    help="omit the legacy v54 corpus (HW-only leak/safe corpus)")
    a = ap.parse_args(argv)
    rng = random.Random(a.seed)

    variants = load(Path(a.variants))
    pool = load(Path(a.pool))
    v54 = [] if a.no_v54 else load(Path(a.v54))

    # ---- group-holdout by base violation-id, stratified by vuln_class ----
    bases_by_class: dict[str, set] = defaultdict(set)
    for r in variants:
        b = base_of(r)
        if b:
            bases_by_class[r["vuln_class"]].add(b)
    heldout: set[str] = set()
    for cls, bs in bases_by_class.items():
        bl = sorted(bs)
        rng.shuffle(bl)
        n_hold = max(1, round(len(bl) * a.holdout_frac))
        heldout.update(bl[:n_hold])
    print(f"bases: {sum(len(v) for v in bases_by_class.values())} total, "
          f"{len(heldout)} held out ({a.holdout_frac:.0%}), stratified by class")

    train, test = [], []
    seen_seq: set = set()
    stats = Counter()
    dropped_dup = 0
    dropped_heldout_pool = 0

    def emit(rec: dict, split: str):
        nonlocal dropped_dup
        k = seqkey(rec["sequence"])
        if k in seen_seq:
            dropped_dup += 1
            return
        seen_seq.add(k)
        (train if split == "train" else test).append(rec)
        stats[(split, rec["mit"], rec["source"])] += 1

    # 1) HW variants — leaking/mitigated, class preserved, split by base
    for r in variants:
        b = base_of(r)
        split = "test" if (b in heldout) else "train"
        mit = "leak" if r["label"] != "BENIGN" else "safe"
        emit({"label": r["vuln_class"], "arch": r.get("arch", "x86_64"),
              "sequence": r["sequence"], "mit": mit, "base": b,
              "variant": r.get("variant"), "source": "hw_variant"}, split)

    # 2) HW pool — all leaking; a pool original whose base is HELD OUT must NOT
    #    enter train (it is the held-out pair's raw gadget). Drop it entirely
    #    (we never train or eval on raw pool for a held-out base).
    for r in pool:
        b = base_of(r)
        if b in heldout:
            dropped_heldout_pool += 1
            continue
        emit({"label": r["label"], "arch": r.get("arch", "x86_64"),
              "sequence": r["sequence"], "mit": "leak", "base": b,
              "variant": None, "source": "hw_pool"}, "train")

    # 3) v54 — attack=unknown, BENIGN=safe; all train (disjoint from Revizor)
    for r in v54:
        if r.get("label", "UNKNOWN") == "UNKNOWN":
            continue
        mit = "safe" if r["label"] == "BENIGN" else "unknown"
        emit({"label": r["label"], "arch": r.get("arch", "x86_64"),
              "sequence": r["sequence"], "mit": mit, "base": None,
              "variant": None, "source": "v54"}, "train")

    Path(a.out_train).parent.mkdir(parents=True, exist_ok=True)
    with open(a.out_train, "w") as f:
        for r in train:
            f.write(json.dumps(r) + "\n")
    with open(a.out_test, "w") as f:
        for r in test:
            f.write(json.dumps(r) + "\n")

    # ---- report ----
    print(f"\ntrain={len(train)}  heldout={len(test)}  "
          f"(dropped {dropped_dup} seq-dups, {dropped_heldout_pool} held-out-base pool originals)")
    print("by (split, mit, source):")
    for k in sorted(stats):
        print(f"  {k[0]:5s} {k[1]:8s} {k[2]:11s} {stats[k]}")
    print("\ntrain mit totals:", dict(Counter(r["mit"] for r in train)))
    print("heldout mit totals:", dict(Counter(r["mit"] for r in test)))
    # leak/safe class contrast available in TRAIN (the whole point)
    tl = Counter((r["label"], r["mit"]) for r in train if r["source"] == "hw_variant")
    print("train hw_variant (label, mit):", dict(tl))

    # ---- integrity assertions (fail loud) ----
    train_bases = {r["base"] for r in train if r["base"]}
    test_bases = {r["base"] for r in test if r["base"]}
    assert not (train_bases & test_bases), \
        f"LEAKAGE: {len(train_bases & test_bases)} bases in BOTH train and heldout"
    train_seqs = {seqkey(r["sequence"]) for r in train}
    test_seqs = {seqkey(r["sequence"]) for r in test}
    assert not (train_seqs & test_seqs), \
        f"LEAKAGE: {len(train_seqs & test_seqs)} sequences in BOTH splits"
    # no held-out base appears in train from ANY source (pool included)
    assert not (train_bases & heldout), "LEAKAGE: held-out base present in train"
    print("\nintegrity OK: no base and no sequence straddles train/heldout.")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
