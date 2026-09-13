#!/usr/bin/env python3
"""Build the wiring experiment from ORACLE-CONFIRMED family gadgets.

vuln (self-reload of stored global) -> oracle leak -> SPECTRE_V4
safe (direct arg load, no reload)   -> oracle safe -> BENIGN

Augments each confirmed base record (label-preserving: rename_registers,
insert_nops, swap_locally), grouped by structure so augmentations never straddle
the train/test split. Structure-level holdout.

Outputs (gen/v4_family/out/exp/):
  focused_train.jsonl / focused_test.jsonl        — family-only, oracle labels
  integ_train_oracle.jsonl                        — v54_train + family (oracle)
  integ_train_provenance.jsonl                    — v54_train + family (ALL->V4)
  integ_test.jsonl                                — family holdout, oracle-truth

Focused shows the structural discriminator is learnable at all. Integrated shows
oracle labels remove the safe-SSB false positives that provenance labels create.
"""
import json, os, sys, random, argparse
ROOT = os.path.dirname(os.path.dirname(os.path.dirname(os.path.abspath(__file__))))
sys.path.insert(0, os.path.join(ROOT, "scripts"))
from augment_asm_windows import rename_registers, insert_nops, swap_locally

RECORDS = os.path.join(ROOT, "gen", "v4_family", "out", "v4_family_records.jsonl")
V54_TRAIN = os.path.join(ROOT, "v54", "data", "v54_train.jsonl")
OUTDIR = os.path.join(ROOT, "gen", "v4_family", "out", "exp")
os.makedirs(OUTDIR, exist_ok=True)

def augment(rec, n_aug, seed0):
    """label-preserving variants of one base record."""
    out = [dict(rec, augmentation="none")]
    seq = rec["sequence"]
    marker, body = seq[0], seq[1:]
    for k in range(n_aug):
        random.seed(seed0 + k)
        s = body[:]
        s = rename_registers(s)
        if k % 2 == 0:
            s = insert_nops(s, prob=0.12, guard=2)
        if k % 3 == 0:
            s = swap_locally(s, trials=2)
        out.append(dict(rec, sequence=[marker] + s,
                        augmentation=f"aug{k}_rename+nop+swap"))
    return out

def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--holdout-structures", type=int, nargs="+", default=[1],
                    help="structure_ids sent to the test split")
    ap.add_argument("--n-aug", type=int, default=12)
    ap.add_argument("--confirmed-only", action="store_true", default=True)
    args = ap.parse_args()

    base = [json.loads(l) for l in open(RECORDS)]
    if args.confirmed_only:
        base = [r for r in base if not r.get("oracle_pending", True)]
    if not base:
        print("no confirmed family records yet — run the oracle first", file=sys.stderr)
        sys.exit(2)

    # structure_id parsed from group "v4fam_struct<sid>_<variant>"
    def sid_of(r):
        return int(r["group"].split("struct")[1].split("_")[0])

    train_fam, test_fam = [], []
    for r in base:
        (test_fam if sid_of(r) in args.holdout_structures else train_fam).append(r)

    def expand(recs, seed0):
        out = []
        for i, r in enumerate(recs):
            out += augment(r, args.n_aug, seed0 + i * 100)
        return out

    ftr = expand(train_fam, 1000)
    fte = expand(test_fam, 9000)  # augment test too, for a stable estimate

    def dump(path, recs):
        with open(path, "w") as f:
            for r in recs:
                f.write(json.dumps(r) + "\n")

    # focused (family-only, oracle labels)
    dump(os.path.join(OUTDIR, "focused_train.jsonl"), ftr)
    dump(os.path.join(OUTDIR, "focused_test.jsonl"), fte)

    # integrated
    v54 = [json.loads(l) for l in open(V54_TRAIN)]
    dump(os.path.join(OUTDIR, "integ_train_oracle.jsonl"), v54 + ftr)
    prov = [dict(r, label="SPECTRE_V4") for r in ftr]  # status quo: all SSB -> V4
    dump(os.path.join(OUTDIR, "integ_train_provenance.jsonl"), v54 + prov)
    dump(os.path.join(OUTDIR, "integ_test.jsonl"), fte)  # oracle-truth labels

    def cnt(recs):
        from collections import Counter
        return dict(Counter(r["label"] for r in recs))
    print(f"train structures: {sorted({sid_of(r) for r in train_fam})}  "
          f"test(holdout): {sorted({sid_of(r) for r in test_fam})}")
    print(f"focused_train {len(ftr)} {cnt(ftr)}")
    print(f"focused_test  {len(fte)} {cnt(fte)}")
    print(f"integ_train_oracle {len(v54)+len(ftr)} (v54 {len(v54)} + fam {len(ftr)})")
    print(f"integ_test {len(fte)} {cnt(fte)}")
    print(f"\noutputs in {OUTDIR}")

if __name__ == "__main__":
    main()
