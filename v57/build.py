#!/usr/bin/env python3
"""Step 6 dataset: leak/safe + mechanism, benign on every ISA that has attacks,
length-matched, group-capped, split by near-duplicate cluster.

  python3 v57/build.py            # writes v57/data/, exits 1 if a check fails

Outputs (same records, `label` rewritten per task so the existing trainer runs
unchanged; the 9-way label is kept in `class9`):
  v57_leak_{train,test}.jsonl   label in {LEAK, SAFE}
  v57_mech_{train,test}.jsonl   attacks only, label = mechanism
  v57_build_report.md           counts, what was dropped and why, check results
Held-out evaluation sets (hardware held-out, real-world benign, external
suites) are NOT read here and stay untouched.
"""
from __future__ import annotations

import argparse
import json
import random
import sys
from collections import Counter, defaultdict
from pathlib import Path
from typing import List

ROOT = Path(__file__).resolve().parents[1]
if str(ROOT) not in sys.path:
    sys.path.insert(0, str(ROOT))

from v57 import checks, neardup, task  # noqa: E402

BIN = 5                       # length-bin width (instructions)
ISAS = ("x86_64", "arm64")    # ISAs that have attacks AND a benign pool
# NOT a benign source: eval/data/revizor_*_benign.jsonl. Those are synthetic
# fenced twins (label never came from hardware) and include twins of the
# held-out hardware programs. Hardware-verified SAFE programs for training
# arrive with eval/data/revizor_hwlabel_trainpool.jsonl (i5 step 4a).
HELDOUT = ([f"eval/data/revizor_{c}_heldout.jsonl" for c in ("spectre_v1", "spectre_v4", "mds", "l1tf")]
           + ["eval/data/revizor_hwlabel_variants.jsonl", "eval/data/revizor_hwlabel_cf_heldout.jsonl",
              "eval/data/revizor_hwlabel_nofence_heldout.jsonl"])

ATTACK_SOURCES = ["v54/data/v54_train.jsonl", "v54/data/v54_test.jsonl"] + [
    f"eval/data/revizor_{c}_trainpool.jsonl" for c in ("spectre_v1", "spectre_v4", "mds", "l1tf")]
BENIGN_SOURCES = {
    "x86_64": ["v54/data/benign_x86_64_gcc.jsonl", "v54/data/benign_x86_64_gcc_O0_hoff.jsonl",
               "v54/data/benign_filler_x86_64.jsonl"],
    "arm64": ["v54/data/v54_train.jsonl", "v54/data/v54_test.jsonl",
              "v54/data/benign_filler_arm64.jsonl"],
}


def load(path) -> List[dict]:
    return [json.loads(l) for l in open(ROOT / path) if l.strip()]


def n_instr(r) -> int:
    return checks.n_instr(r)


def cap_groups(records: List[dict], k: int, rng: random.Random) -> List[dict]:
    """At most k records per (arch, group), chosen at random; never duplicates."""
    by = defaultdict(list)
    for r in records:
        by[(r.get("arch"), r.get("group"))].append(r)
    out = []
    for key in sorted(by, key=str):
        rs = by[key]
        rng.shuffle(rs)
        out += rs[:k]
    return out


def length_match(attacks: List[dict], benign: List[dict], rng: random.Random,
                 ratio: float = 1.0) -> List[dict]:
    """Benign records of ONE ISA drawn so their length histogram (bins of BIN
    instructions) is `ratio` times the attacks'. A bin short of whole records
    is filled with contiguous windows of longer benign functions, at a length
    drawn from the attacks in that bin. Nothing is truncated to fit and no
    benign record is used twice; what cannot be filled is counted in
    `length_match.last_unfilled`."""
    want = Counter(n_instr(a) // BIN for a in attacks)
    lens = defaultdict(list)
    for a in attacks:
        lens[n_instr(a) // BIN].append(n_instr(a))
    pool = defaultdict(list)
    for b in benign:
        pool[n_instr(b) // BIN].append(b)
    for v in pool.values():
        rng.shuffle(v)
    used, out, unfilled = set(), [], 0
    longer = sorted(benign, key=n_instr, reverse=True)
    for b in sorted(want):
        need = round(want[b] * ratio)
        take = [r for r in pool[b] if id(r) not in used][:need]
        for r in take:
            used.add(id(r))
        out += take
        need -= len(take)
        while need > 0:
            L = rng.choice(lens[b])
            src = next((r for r in longer if id(r) not in used and n_instr(r) > (b + 1) * BIN), None)
            if src is None:
                unfilled += need
                break
            used.add(id(src))
            seq = [s for s in src["sequence"] if neardup.opcodes([s])]
            st = rng.randrange(0, len(seq) - L + 1)
            out.append(dict(src, sequence=seq[st:st + L], windowed_from=len(seq)))
            need -= 1
    length_match.last_unfilled = unfilled
    return out


length_match.last_unfilled = 0


def stratum(r) -> tuple:
    hw = "hw" if str(r.get("source", "")).startswith("revizor_hw") else "syn"
    return (r.get("arch"), task.mechanism(r["label"]) or "SAFE", hw)


def split_by_cluster(records: List[dict], cluster: List[int], test_share: float,
                     rng: random.Random) -> List[str]:
    """'train' / 'test' per record; a cluster is never divided. Clusters go to
    test in random order while the cluster's dominant stratum is still below
    its test share and the cluster does not overshoot any stratum (so a size
    ordering cannot decide what the test set is made of)."""
    members = defaultdict(list)
    for i, c in enumerate(cluster):
        members[c].append(i)
    total = Counter(stratum(r) for r in records)
    in_test = Counter()
    order = sorted(members)
    rng.shuffle(order)
    side = ["train"] * len(records)
    for c in order:
        strata = Counter(stratum(records[i]) for i in members[c])
        dom = strata.most_common(1)[0][0]
        fits = all(in_test[s] + n <= test_share * total[s] + 0.5 * n for s, n in strata.items())
        if in_test[dom] < test_share * total[dom] and fits:
            for i in members[c]:
                side[i] = "test"
            in_test.update(strata)
    return side


def write(path: Path, rows: List[dict]):
    path.parent.mkdir(parents=True, exist_ok=True)
    with open(path, "w") as f:
        for r in rows:
            f.write(json.dumps(r) + "\n")


def main(argv=None):
    ap = argparse.ArgumentParser(description=__doc__.split("\n")[0])
    ap.add_argument("--out", default=str(ROOT / "v57" / "data"))
    ap.add_argument("--group-cap", type=int, default=6)
    ap.add_argument("--test-share", type=float, default=0.2)
    ap.add_argument("--benign-ratio", type=float, default=1.0)
    ap.add_argument("--seed", type=int, default=0)
    ap.add_argument("--dup-threshold", type=float, default=0.8)
    a = ap.parse_args(argv)
    rng = random.Random(a.seed)
    notes = []

    raw = [dict(r, src=p) for p in ATTACK_SOURCES for r in load(p)]
    attacks = [r for r in raw if r.get("label") in task.MECHANISM and task.mechanism(r["label"])]
    dropped = Counter(r.get("arch") for r in attacks if r.get("arch") not in ISAS)
    attacks = [r for r in attacks if r.get("arch") in ISAS and n_instr(r) >= 3]
    notes.append(f"attacks read: {len(attacks)}; dropped for an ISA with no benign pool: {dict(dropped)}")
    before = len(attacks)
    attacks = cap_groups(attacks, a.group_cap, rng)
    notes.append(f"group cap {a.group_cap}: {before} -> {len(attacks)} attack records")

    benign = []
    for isa in ISAS:
        pool = [dict(r, src=p) for p in BENIGN_SOURCES[isa] for r in load(p)
                if r.get("label") == "BENIGN" and r.get("arch") == isa and n_instr(r) >= 3]
        # no group cap on benign: a benign group is a whole package, not a set
        # of augmented twins; it still moves through the split as one unit
        # thin near-duplicate functions first: tiny look-alike functions chain
        # every package into one cluster, which could then never be held out
        n_pool = len(pool)
        rng.shuffle(pool)
        pool = neardup.thin(pool, a.dup_threshold)
        notes.append(f"benign {isa}: {n_pool} -> {len(pool)} after near-duplicate thinning")
        att = [r for r in attacks if r["arch"] == isa]
        got = length_match(att, pool, rng, a.benign_ratio)
        notes.append(f"benign {isa}: pool {len(pool)}, wanted {round(len(att) * a.benign_ratio)}, "
                     f"got {len(got)} ({sum(1 for r in got if r.get('windowed_from'))} windowed), "
                     f"unfilled {length_match.last_unfilled}")
        benign += got

    recs = attacks + benign
    cl = neardup.clusters(recs, a.dup_threshold)
    side = split_by_cluster(recs, cl, a.test_share, rng)
    for r, c, s in zip(recs, cl, side):
        r.update(class9=r["label"], cluster=c, leak=task.leak_label(r["label"]),
                 mechanism=task.mechanism(r["label"]), split=s)
    split = {s: [r for r in recs if r["split"] == s] for s in ("train", "test")}
    heldout = [r for p in HELDOUT if (ROOT / p).exists() for r in load(p)]
    errs = checks.run(split, dup_threshold=a.dup_threshold, heldout=heldout)
    notes.append(f"held-out records checked against: {len(heldout)}")

    out = Path(a.out)
    for s, rows in split.items():
        write(out / f"v57_leak_{s}.jsonl", [dict(r, label=r["leak"]) for r in rows])
        write(out / f"v57_mech_{s}.jsonl", [dict(r, label=r["mechanism"]) for r in rows if r["mechanism"]])

    def table(key):
        c = {s: Counter(key(r) for r in rows) for s, rows in split.items()}
        ks = sorted(set(c["train"]) | set(c["test"]), key=str)
        return "\n".join(["| | train | test |", "|---|---|---|"]
                         + [f"| {k} | {c['train'][k]} | {c['test'][k]} |" for k in ks])
    iso = checks.shortcut_accuracy(split["train"], split["test"], lambda r: r.get("arch"))
    lno = checks.shortcut_accuracy(split["train"], split["test"], checks.length_bin)
    md = ["# v57 dataset build", "", f"seed {a.seed}, group cap {a.group_cap}, test share "
          f"{a.test_share}, near-duplicate threshold {a.dup_threshold}.", ""]
    md += [f"- {n}" for n in notes]
    md += ["", f"- clusters: {len(set(cl))} over {len(recs)} records",
           f"- near-duplicate overlap train->test: {neardup.leak_rate(split['train'], split['test'], a.dup_threshold):.4f}",
           f"- shortcut balanced accuracy on leak/safe: ISA alone {iso:.3f}, length alone {lno:.3f}",
           "", "## Leak label by ISA", "", table(lambda r: (r["arch"], r["leak"])),
           "", "## Mechanism by ISA", "", table(lambda r: stratum(dict(r, label=r["class9"]))),
           "", "## Source", "", table(lambda r: (r["leak"], Path(r["src"]).name)),
           "", "## Checks", ""]
    md += [f"- FAIL {e}" for e in errs] or ["- all passed"]
    (out / "v57_build_report.md").write_text("\n".join(md) + "\n")
    print("\n".join(md))
    return 1 if errs else 0


if __name__ == "__main__":
    sys.exit(main())
