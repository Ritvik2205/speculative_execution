#!/usr/bin/env python3
"""isa_fingerprint.py — which GINE input channels identify the ISA?

A classifier trained on x86_64+arm64 can only transfer to riscv64 if what it
keys on is the attack, not the ISA. This measures, per input channel the GINE
actually consumes, how well the ISA can be predicted from that channel ALONE:

  graph        node count, edges-per-node for each of the 9 edge types
  categories   opcode-category histogram (the 19-way one-hot, averaged)
  memtype      memory-access-type histogram
  specflags    mean of the 14 speculative flags
  regs         mean dest/src register counts per node
  global       the 5 global features
  inline       the 58 inline hand features

Protocol (so class identity can't masquerade as ISA identity):
  * only attack classes present on >= 2 ISAs are used, and each ISA is
    downsampled to the same count per class (class-balanced within ISA);
  * a RandomForest predicts ISA with StratifiedGroupKFold on source family
    (eval/group_stats.family) so near-duplicates can't leak across folds;
  * reported as balanced accuracy; chance = 1 / n_ISAs.
The same is done for predicting CLASS from the channel (the signal we want),
so each channel gets an ISA-vs-class ratio.

Also prints per-ISA channel means for the most ISA-discriminative features,
which is what to fix in the spec / features.

Run:  python3 eval/isa_fingerprint.py [--out eval/isa_fingerprint.json]
"""
from __future__ import annotations

import argparse
import json
import sys
from collections import Counter, defaultdict
from pathlib import Path

import numpy as np

ROOT = Path(__file__).resolve().parent.parent
sys.path.insert(0, str(ROOT / "v54"))
sys.path.insert(0, str(ROOT / "spec"))
sys.path.insert(0, str(ROOT / "eval"))

from pdg_builder import EDGE_TYPES, OPCODE_CATEGORIES  # noqa: E402
from isa_spec import load_engine  # noqa: E402
from spec_pdg_builder import SpecBackedPDGBuilder  # noqa: E402
from strip_boilerplate import strip_boilerplate  # noqa: E402
from inline_features import compute_inline_features, get_feature_names  # noqa: E402
from train_gine_v38 import compute_global_features  # noqa: E402
from group_stats import family  # noqa: E402

SPEC_FOR_ARCH = {"x86_64": "x86_64.json", "arm64": "arm64.json", "riscv64": "riscv.json"}
EDGE_NAMES = {v: k for k, v in EDGE_TYPES.items()}
CAT_NAMES = {v: k for k, v in OPCODE_CATEGORIES.items()}


def load(path):
    return [json.loads(l) for l in open(path) if l.strip()]


def n_instr(seq):
    return sum(1 for l in seq if l.strip())


def channels(rec, builders):
    seq = rec["sequence"]
    raw = seq
    seq = strip_boilerplate(seq)
    pdg = builders[rec["arch"]].build(seq)
    n = max(len(pdg.nodes), 1)
    ne = len(EDGE_TYPES)
    e = np.zeros(ne)
    for ed in pdg.edges:
        e[ed.edge_type] += 1
    cats = np.zeros(len(OPCODE_CATEGORIES))
    mem = np.zeros(5)
    flags = None
    dreg = sreg = 0.0
    for nd in pdg.nodes:
        cats[nd.opcode_category] += 1
        mem[min(nd.mem_access_type, 4)] += 1
        flags = nd.spec_flags.copy() if flags is None else flags + nd.spec_flags
        dreg += len(nd.dest_regs)
        sreg += len(nd.src_regs)
    flags = np.zeros(14) if flags is None else flags
    return {
        "graph": np.concatenate([[np.log1p(len(pdg.nodes))], e / n]),
        "categories": cats / n,
        "memtype": mem / n,
        "specflags": np.asarray(flags, float) / n,
        "regs": np.array([dreg / n, sreg / n]),
        "global": compute_global_features(raw),
        "inline": compute_inline_features(raw),
    }


def names_for(ch):
    if ch == "graph":
        return ["log_nodes"] + [f"edge/{EDGE_NAMES[i]}" for i in range(len(EDGE_TYPES))]
    if ch == "categories":
        return [f"cat/{CAT_NAMES[i]}" for i in range(len(OPCODE_CATEGORIES))]
    if ch == "memtype":
        return [f"mem/{i}" for i in range(5)]
    if ch == "specflags":
        return [f"flag/{i}" for i in range(14)]
    if ch == "regs":
        return ["dest_regs/node", "src_regs/node"]
    if ch == "global":
        return ["nop_frac", "indirect_frac", "ret_frac", "verw_frac", "movntdqa_frac"]
    return [f"inline/{n}" for n in get_feature_names()]


def cv_balanced_acc(X, y, groups, seed=0):
    from sklearn.ensemble import RandomForestClassifier
    from sklearn.metrics import balanced_accuracy_score
    from sklearn.model_selection import StratifiedGroupKFold
    k = min(5, min(Counter(y).values()))
    if k < 2 or len(set(groups)) < k:
        return float("nan")
    pred = np.empty(len(y), dtype=object)
    for tr, te in StratifiedGroupKFold(n_splits=k, shuffle=True, random_state=seed).split(X, y, groups):
        m = RandomForestClassifier(n_estimators=200, max_depth=8, random_state=seed, n_jobs=-1)
        m.fit(X[tr], y[tr])
        pred[te] = m.predict(X[te])
    return float(balanced_accuracy_score(y, pred))


def main(argv=None):
    ap = argparse.ArgumentParser()
    ap.add_argument("--train", default=str(ROOT / "v54/data/v54_train.jsonl"))
    ap.add_argument("--riscv", default=str(ROOT / "spec/data/riscv_loio_corpus.jsonl"))
    ap.add_argument("--per-class-cap", type=int, default=60)
    ap.add_argument("--stub-max", type=int, default=10)
    ap.add_argument("--out", default=None)
    ap.add_argument("--seed", type=int, default=0)
    args = ap.parse_args(argv)
    rng = np.random.RandomState(args.seed)

    recs = [r for r in load(args.train) if r["arch"] in ("x86_64", "arm64")]
    recs += [r for r in load(args.riscv) if n_instr(r["sequence"]) > args.stub_max]
    by = defaultdict(list)
    for r in recs:
        by[(r["label"], r["arch"])].append(r)
    classes = sorted({c for c, _ in by})
    shared = [c for c in classes if c != "BENIGN"
              and sum(1 for a in SPEC_FOR_ARCH if len(by[(c, a)]) >= 2) >= 2]
    print("class x arch counts:")
    for c in classes:
        print(f"  {c:26s} " + "  ".join(f"{a}={len(by[(c, a)]):5d}" for a in SPEC_FOR_ARCH)
              + ("   <- shared attack class" if c in shared else ""))

    builders = {a: SpecBackedPDGBuilder(load_engine(f)) for a, f in SPEC_FOR_ARCH.items()}
    cache = {}

    def feat(r):
        k = id(r)
        if k not in cache:
            cache[k] = channels(r, builders)
        return cache[k]

    out = {"comparisons": {}}
    # Two class-matched comparisons: the model's own training pair, and the
    # held-out ISA against the training pool.
    for name, side_a, side_b in (("x86_64 vs arm64", ["x86_64"], ["arm64"]),
                                 ("riscv64 vs x86_64+arm64", ["riscv64"], ["x86_64", "arm64"])):
        cls = [c for c in classes if c != "BENIGN"
               and sum(len(by[(c, a)]) for a in side_a) >= 2
               and sum(len(by[(c, a)]) for a in side_b) >= 2]
        sample, side = [], []
        for c in cls:
            pa = [r for a in side_a for r in by[(c, a)]]
            pb_ = [r for a in side_b for r in by[(c, a)]]
            k = min(args.per_class_cap, len(pa), len(pb_))
            for pool, tag in ((pa, "A"), (pb_, "B")):
                for i in rng.choice(len(pool), k, replace=False):
                    sample.append(pool[i]); side.append(tag)
        feats = [feat(r) for r in sample]
        y_isa = np.array(side)
        label = np.array([r["label"] for r in sample])
        groups = np.array([family(r.get("group") or r.get("source_file", "?")) for r in sample])
        res = {"n": len(sample), "classes": cls, "channels": {}}
        print(f"\n=== {name}: {len(sample)} records ({len(sample)//2} per side), "
              f"classes {cls}")
        print(f"{'channel':12s} {'dims':>4s}  ISA bal-acc (chance 0.50)  class bal-acc (chance {1/len(cls):.2f})")
        for ch in ["graph", "categories", "memtype", "specflags", "regs", "global", "inline", "ALL"]:
            X = (np.stack([np.concatenate([f[c] for c in f]) for f in feats]) if ch == "ALL"
                 else np.stack([f[ch] for f in feats]))
            X = np.nan_to_num(X.astype(float))
            a_isa = cv_balanced_acc(X, y_isa, groups, args.seed)
            a_cls = cv_balanced_acc(X, label, groups, args.seed) if len(cls) > 1 else float("nan")
            res["channels"][ch] = {"dims": int(X.shape[1]), "isa_bal_acc": a_isa, "class_bal_acc": a_cls}
            print(f"{ch:12s} {X.shape[1]:4d}  {a_isa:11.3f}                {a_cls:11.3f}")
        rows = []
        for ch in ["graph", "categories", "memtype", "specflags", "regs", "global", "inline"]:
            X = np.stack([f[ch] for f in feats]).astype(float)
            for j, nm in enumerate(names_for(ch)):
                col = X[:, j]
                ma, mb = float(col[y_isa == "A"].mean()), float(col[y_isa == "B"].mean())
                sd = float(col.std()) or 1e-9
                rows.append((abs(ma - mb) / sd, nm, ma, mb))
        rows.sort(key=lambda r: -r[0])
        res["top_isa_features"] = [{"feature": nm, "std_diff": d, "A": ma, "B": mb}
                                   for d, nm, ma, mb in rows[:20]]
        print(f"top ISA-separating features (A={'+'.join(side_a)}, B={'+'.join(side_b)}):")
        for d, nm, ma, mb in rows[:20]:
            print(f"  {nm:36s} |diff|/sd={d:5.2f}   A={ma:8.3f}   B={mb:8.3f}")
        out["comparisons"][name] = res

    if args.out:
        Path(args.out).write_text(json.dumps(out, indent=1))
        print(f"\n-> {args.out}")


if __name__ == "__main__":
    main()
