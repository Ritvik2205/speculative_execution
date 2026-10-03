#!/usr/bin/env python3
"""audit_hw_split.py -- leakage + shortcut audit for the joint real-HW pool.

Writes eval/cluster_out/hw_split_audit.md. Exit status 1 if any LEAK (or broken
CONSTRUCTION invariant) is found, else 0.

HOW TO READ THE REPORT
  LEAK      held-out information reaches training: shared groups, identical
            sequences, a shared Revizor generator seed, or a near-copy.
            Any LEAK is a hard failure (exit 1): numbers from this split are
            inflated and must not reach a table.
  SHORTCUT  a trivial cue (sequence length, lfence count/presence/position,
            opcode bag) already solves a slice WITHOUT a GNN. Not a leak and
            never fails the audit, but each reported accuracy is a BAR the
            GNN must clearly beat; a bar >= 0.95 is flagged
            **SHORTCUT AVAILABLE** (that cue alone solves the slice, so a
            high GNN number there proves nothing).
  CONSTRUCTION  each BENIGN twin and its misfenced sibling must have identical
            length and lfence count (so length/count cannot separate them).
"""
from __future__ import annotations
import argparse, json, re, sys
from collections import Counter, defaultdict
from pathlib import Path

import numpy as np

ROOT = Path(__file__).resolve().parent.parent.parent
CLASSES = ["mds", "l1tf", "spectre_v1", "spectre_v4"]
HW_SOURCES = {"revizor_hw_i5_8300h", "synth_mitigated_twin", "synth_misplaced_fence_control"}
SEED_RE = re.compile(r"/(\d+)/violation")
BAR = 0.95
NEARDUP_FAIL = 0.98
NEARDUP_REPORT = 0.95


# ---------------------------------------------------------------- helpers
def load_jsonl(p):
    p = Path(p)
    if not p.exists():
        return None
    with open(p) as f:
        return [json.loads(l) for l in f if l.strip()]


def base_group(g):
    if isinstance(g, str):
        for suf in ("_misfenced", "_fenced"):
            if g.endswith(suf):
                return g[:-len(suf)]
    return g


def role(r):
    g = str(r.get("group", ""))
    if g.endswith("_misfenced"):
        return "misfenced"
    if r.get("label") == "BENIGN" and g.endswith("_fenced"):
        return "twin"
    if r.get("label") != "BENIGN":
        return "positive"
    return "other"


def opcode(ins):
    t = ins.strip().split()
    return t[0].lower() if t else ""


def nfence(seq):
    return sum(1 for i in seq if opcode(i) == "lfence")


def first_fence_pos(seq):
    for i, ins in enumerate(seq):
        if opcode(ins) == "lfence":
            return i / max(len(seq) - 1, 1)
    return -1.0


def seed_of(r):
    m = SEED_RE.search(r.get("src_path") or "")
    return m.group(1) if m else None


def split_train_add(pool, base):
    n = len(base)
    if base and pool[:n] == base:
        return pool[n:], "N-prefix"
    return [r for r in pool if r.get("source") in HW_SOURCES], "source-field"


def ruzicka_matrix(train_vecs, h):
    mn = np.minimum(train_vecs, h).sum(1)
    mx = np.maximum(train_vecs, h).sum(1)
    return np.where(mx > 0, mn / np.maximum(mx, 1e-9), 0.0)


# ---------------------------------------------------------------- checks
def check_groups(heldout_all, train_add):
    h = {base_group(r.get("group")) for r in heldout_all}
    t = {base_group(r.get("group")) for r in train_add}
    return sorted(h & t), len(h), len(t)


def check_exact(heldout_all, train_all):
    ts = {tuple(r["sequence"]) for r in train_all}
    return [r for r in heldout_all if tuple(r["sequence"]) in ts]


def check_seeds(heldout_pos_by_cls, train_pos_by_cls, group_seed, seed_disjoint):
    """Per class: seeds on both sides. Returns (fails, warns, rows)."""
    fails, warns, rows = [], [], []
    for c in sorted(heldout_pos_by_cls):
        hs = Counter(group_seed.get(base_group(r["group"])) for r in heldout_pos_by_cls[c])
        ts = Counter(group_seed.get(base_group(r["group"])) for r in train_pos_by_cls.get(c, []))
        n_h_none, n_t_none = hs.pop(None, 0), ts.pop(None, 0)
        both = sorted(set(hs) & set(ts))
        rows.append((c, len(hs), len(ts), len(both), n_h_none, n_t_none))
        if both:
            msg = f"{c}: {len(both)} generator seed(s) on both sides: {both[:5]}"
            (fails if c in seed_disjoint else warns).append(msg)
    return fails, warns, rows


def near_dups(heldout_pos, train_add_pos, train_all):
    vocab = {}
    for r in train_all + heldout_pos:
        for i in r["sequence"]:
            vocab.setdefault(opcode(i), len(vocab))

    def vec(r):
        v = np.zeros(len(vocab))
        for i in r["sequence"]:
            v[vocab[opcode(i)]] += 1
        return v
    T_all = np.array([vec(r) for r in train_all]) if train_all else np.zeros((0, len(vocab)))
    T_pos = np.array([vec(r) for r in train_add_pos]) if train_add_pos else np.zeros((0, len(vocab)))
    pos_sims, all_sims = [], []
    for r in heldout_pos:
        h = vec(r)
        pos_sims.append(ruzicka_matrix(T_pos, h).max() if len(T_pos) else 0.0)
        all_sims.append(ruzicka_matrix(T_all, h).max() if len(T_all) else 0.0)
    return np.array(pos_sims), np.array(all_sims)


# ---------------------------------------------------------------- shortcuts
def _bag(recs, vocab, counts):
    X = np.zeros((len(recs), len(vocab)))
    for k, r in enumerate(recs):
        for i in r["sequence"]:
            j = vocab.get(opcode(i))
            if j is not None:
                X[k, j] = X[k, j] + 1 if counts else 1
    return np.log1p(X) if counts else X


def four_class_bars(train_pos, held_pos):
    from sklearn.linear_model import LogisticRegression
    from sklearn.preprocessing import StandardScaler
    from sklearn.pipeline import make_pipeline
    if not train_pos or not held_pos or len({r["label"] for r in train_pos}) < 2:
        return None
    vocab = {}
    for r in train_pos:
        for i in r["sequence"]:
            vocab.setdefault(opcode(i), len(vocab))
    ytr = [r["label"] for r in train_pos]
    yte = np.array([r["label"] for r in held_pos])
    feats = {
        "length": lambda rs: np.array([[len(r["sequence"])] for r in rs], float),
        "opcode presence bag": lambda rs: _bag(rs, vocab, False),
        "opcode count bag": lambda rs: _bag(rs, vocab, True),
    }
    out = {}
    for name, fn in feats.items():
        clf = make_pipeline(StandardScaler(), LogisticRegression(max_iter=3000))
        clf.fit(fn(train_pos), ytr)
        pred = clf.predict(fn(held_pos))
        rec = {c: float((pred[yte == c] == c).mean()) for c in sorted(set(yte))}
        out[name] = (float((pred == yte).mean()), rec)
    return out


def attack_vs_benign_bars(train_recs, held_by_subset):
    from sklearn.linear_model import LogisticRegression
    from sklearn.tree import DecisionTreeClassifier
    from sklearn.preprocessing import StandardScaler
    from sklearn.pipeline import make_pipeline
    held = [(s, r) for s, rs in held_by_subset.items() for r in rs]
    if not held or len({r["label"] == "BENIGN" for r in train_recs}) < 2:
        return None
    ytr = np.array([0 if r["label"] == "BENIGN" else 1 for r in train_recs])  # 1 = attack
    yte = np.array([0 if r["label"] == "BENIGN" else 1 for _, r in held])
    subs = np.array([s for s, _ in held])
    vocab = {"lfence": 0}
    for r in train_recs:
        for i in r["sequence"]:
            vocab.setdefault(opcode(i), len(vocab))
    sc = lambda f: (lambda rs: np.array([[f(r["sequence"])] for r in rs], float))
    cues = {
        "(a) length": (sc(len), "tree"),
        "(b) lfence count": (sc(nfence), "tree"),
        "(c) lfence present": (sc(lambda s: float(nfence(s) > 0)), "tree"),
        "(d) first-lfence position": (sc(first_fence_pos), "tree"),
        "(e) opcode bag incl. lfence": (lambda rs: _bag(rs, vocab, True), "lr"),
    }
    out = {}
    Xh_recs = [r for _, r in held]
    for name, (fn, kind) in cues.items():
        clf = (DecisionTreeClassifier(max_depth=3, random_state=0) if kind == "tree"
               else make_pipeline(StandardScaler(), LogisticRegression(max_iter=3000)))
        clf.fit(fn(train_recs), ytr)
        pred = clf.predict(fn(Xh_recs))
        benign_rate = {s: float((pred[subs == s] == 0).mean()) for s in held_by_subset if (subs == s).any()}
        out[name] = (float((pred == yte).mean()), benign_rate)
    return out


def construction_check(recs, label):
    """twin <-> misfenced sibling: identical length and lfence count."""
    tw = {base_group(r["group"]): r for r in recs if role(r) == "twin"}
    mf = {base_group(r["group"]): r for r in recs if role(r) == "misfenced"}
    bad, n = [], 0
    for g in set(tw) & set(mf):
        n += 1
        a, b = tw[g]["sequence"], mf[g]["sequence"]
        if len(a) != len(b) or nfence(a) != nfence(b):
            bad.append(g)
    return n, bad


# ---------------------------------------------------------------- main
def run(a):
    ddir, edir = a.data_dir, a.heldout_dir
    base = load_jsonl(ddir / "v55h_train.jsonl") or []
    pool = load_jsonl(a.pool)
    if pool is None:
        print(f"pool not found: {a.pool}", file=sys.stderr)
        return 2
    train_add, how = split_train_add(pool, base)

    held, mis_e, mis_t, real = {}, {}, {}, {}
    for c in a.classes:
        held[c] = load_jsonl(edir / f"revizor_{c}_heldout.jsonl") or []
        mis_e[c] = load_jsonl(edir / f"revizor_{c}_misfenced_heldout.jsonl") or []
        mis_t[c] = load_jsonl(edir / f"revizor_{c}_misfenced_tail_heldout.jsonl") or []
        real[c] = load_jsonl(edir / f"revizor_{c}_real.jsonl") or []
    H_all = [r for c in a.classes for r in held[c] + mis_e[c] + mis_t[c]]
    H_pos = [r for c in a.classes for r in held[c] if role(r) == "positive"]
    H_twin = [r for c in a.classes for r in held[c] if role(r) == "twin"]
    H_me = [r for c in a.classes for r in mis_e[c]]
    H_mt = [r for c in a.classes for r in mis_t[c]]
    T_pos = [r for r in train_add if role(r) == "positive"]
    T_twin = [r for r in train_add if role(r) == "twin"]
    T_mis = [r for r in train_add if role(r) == "misfenced"]

    leaks, warns, L = [], [], []

    # 1 groups
    shared, nh, nt = check_groups(H_all, train_add)
    if shared:
        leaks.append(f"group overlap held-out vs train-add: {len(shared)} e.g. {shared[:5]}")
    # real files coverage
    cov = []
    for c in a.classes:
        hg = {base_group(r["group"]) for r in held[c]}
        tg = {base_group(r["group"]) for r in train_add}
        rg = [r["group"] for r in real[c]]
        cov.append((c, len(rg), sum(g in tg for g in rg), sum(g in hg for g in rg),
                    sum(g in hg and g in tg for g in rg)))
        if cov[-1][4]:
            leaks.append(f"{c}: {cov[-1][4]} real record group(s) in BOTH held-out and train-add")

    # 2 exact sequences
    dup = check_exact(H_all, pool)
    if dup:
        leaks.append(f"{len(dup)} held-out record(s) have a sequence identical to a training record "
                     f"(e.g. group {dup[0].get('group')})")

    # 3 seeds
    gseed = {}
    for r in [x for c in a.classes for x in real[c] + held[c]] + train_add:
        s = seed_of(r)
        if s:
            gseed[base_group(r["group"])] = s
    hp_c, tp_c = defaultdict(list), defaultdict(list)
    for r in H_pos:
        hp_c[r["label"]].append(r)
    for r in T_pos:
        tp_c[r["label"]].append(r)
    sd = {x.upper() for x in a.seed_disjoint}
    sf, sw, srows = check_seeds(hp_c, tp_c, gseed, sd)
    leaks += [f"generator-seed overlap (split meant seed-disjoint): {m}" for m in sf]
    warns += [f"generator-seed overlap (class not declared seed-disjoint): {m}" for m in sw]

    # 4 near dups
    if H_pos:
        ps, als = near_dups(H_pos, T_pos, pool)
        nd_med, nd_max, nd_n95 = float(np.median(ps)), float(ps.max()), int((ps >= NEARDUP_REPORT).sum())
        a_max, a_n98 = float(als.max()), int((als >= NEARDUP_FAIL).sum())
        if a_n98:
            leaks.append(f"{a_n98} held-out positive(s) have opcode-multiset Ruzicka >= {NEARDUP_FAIL} "
                         f"to a training record (max {a_max:.3f}): near-copy")
    else:
        nd_med = nd_max = a_max = float("nan"); nd_n95 = a_n98 = 0

    # construction
    cons = {}
    for nm, recs in [("train-add", train_add), ("held-out entry", [r for c in a.classes for r in held[c] + mis_e[c]]),
                     ("held-out tail", [r for c in a.classes for r in held[c] + mis_t[c]])]:
        n, bad = construction_check(recs, nm)
        cons[nm] = (n, bad)
        if bad:
            leaks.append(f"CONSTRUCTION: {nm}: {len(bad)}/{n} twin/misfenced pairs differ in length or lfence count: {bad[:3]}")

    # shortcuts
    fc = four_class_bars(T_pos, H_pos)
    held_sub = {"positives": H_pos, "twins": H_twin}
    if H_me: held_sub["misfenced entry"] = H_me
    if H_mt: held_sub["misfenced tail"] = H_mt
    ab = attack_vs_benign_bars(T_pos + T_twin + T_mis, {k: v for k, v in held_sub.items() if v})
    flagged = []

    # ---------------- report
    L.append("# allhw2 split audit\n")
    L.append("**LEAK vs SHORTCUT.** A LEAK means held-out information reaches training (shared "
             "group, identical sequence, shared generator seed, near-copy) and FAILS the audit "
             "(exit 1): the numbers are inflated. A SHORTCUT means a trivial cue (length, lfence "
             "count/presence/position, opcode bag) already solves a slice with no GNN; shortcuts "
             "never fail the audit, they are BARS the model must clearly beat. A bar >= "
             f"{BAR:.2f} is flagged **SHORTCUT AVAILABLE**: that cue alone solves the slice, so a "
             "high model score there is not evidence of learning the vulnerability. "
             "Misfenced = still-vulnerable gadget whose lfences were moved off the speculation "
             "boundary (structural control, not hardware verified).\n")
    L.append(f"- pool: `{a.pool}` ({len(pool)} records; base={len(base)}, train-add={len(train_add)} via {how}: "
             f"{len(T_pos)} positives / {len(T_twin)} twins / {len(T_mis)} misfenced)")
    L.append(f"- held-out: {len(H_pos)} positives, {len(H_twin)} twins, {len(H_me)} misfenced-entry, {len(H_mt)} misfenced-tail\n")
    L.append(f"## Verdict: {'**LEAK DETECTED -- FAIL**' if leaks else 'NO LEAK (PASS)'}\n")
    for m in leaks:
        L.append(f"- LEAK: {m}")
    for m in warns:
        L.append(f"- WARN: {m}")
    L.append("\n## 1. Group disjointness\n")
    L.append(f"held-out base groups={nh}, train-add base groups={nt}, intersection={len(shared)}\n")
    L.append("| class | real records | in train-add | in held-out | in both |\n|---|---|---|---|---|")
    for c, n, t, h, b in cov:
        L.append(f"| {c} | {n} | {t} | {h} | {b} |")
    L.append(f"\n## 2. Exact sequence overlap\n\nheld-out records with an identical training sequence: {len(dup)}\n")
    L.append("## 3. Generator-seed overlap\n")
    L.append("| class | held-out seeds | train seeds | shared | held-out w/o seed | train w/o seed |\n|---|---|---|---|---|---|")
    for r in srows:
        L.append("| " + " | ".join(str(x) for x in r) + " |")
    L.append(f"\nseed-disjoint classes (FAIL on overlap): {sorted(sd)}\n")
    L.append("## 4. Near-duplicates (opcode-multiset Ruzicka)\n")
    L.append(f"held-out positive -> max sim to any train-add positive (any class): median {nd_med:.3f}, "
             f"max {nd_max:.3f}, count >= {NEARDUP_REPORT}: {nd_n95}")
    L.append(f"\nmax sim to ANY training record (incl. base): {a_max:.3f}; count >= {NEARDUP_FAIL} (FAIL): {a_n98}\n")
    L.append("## 5. Length / lfence-count matching (twin vs misfenced sibling)\n")
    L.append("| set | pairs | mismatches |\n|---|---|---|")
    for nm, (n, bad) in cons.items():
        L.append(f"| {nm} | {n} | {len(bad)} |")
    L.append("\n## 6. SHORTCUT bars: 4-class real-class task (held-out positives)\n")
    if fc:
        cl = sorted({r["label"] for r in H_pos})
        L.append("| cue | accuracy | " + " | ".join(f"recall {c}" for c in cl) + " |\n|---|---|" + "---|" * len(cl))
        for nm, (acc, rec) in fc.items():
            flag = " **SHORTCUT AVAILABLE**" if acc >= BAR else ""
            if acc >= BAR: flagged.append(f"4-class / {nm}: {acc:.3f}")
            L.append(f"| {nm} | {acc:.3f}{flag} | " + " | ".join(f"{rec.get(c, float('nan')):.2f}" for c in cl) + " |")
    else:
        L.append("n/a (insufficient data)")
    L.append("\n## 7. SHORTCUT bars: attack-vs-BENIGN (train-add positives+twins+misfenced -> held-out slices)\n")
    if ab:
        subs = [s for s in held_sub if held_sub[s]]
        L.append("accuracy over all held-out slices; per-subset column = fraction predicted BENIGN "
                 "(want ~0 for positives/misfenced, ~1 for twins).\n")
        L.append("| cue | accuracy | " + " | ".join(f"BENIGN rate: {s}" for s in subs) + " |\n|---|---|" + "---|" * len(subs))
        for nm, (acc, br) in ab.items():
            flag = " **SHORTCUT AVAILABLE**" if acc >= BAR else ""
            if acc >= BAR: flagged.append(f"attack-vs-BENIGN / {nm}: {acc:.3f}")
            L.append(f"| {nm} | {acc:.3f}{flag} | " + " | ".join(f"{br.get(s, float('nan')):.2f}" for s in subs) + " |")
    else:
        L.append("n/a (insufficient data)")
    L.append("\n## Flagged shortcuts\n")
    L += [f"- **SHORTCUT AVAILABLE**: {m}" for m in flagged] or ["- none >= bar"]
    a.out.parent.mkdir(parents=True, exist_ok=True)
    a.out.write_text("\n".join(L) + "\n")
    print(f"audit: {'LEAK' if leaks else 'no leak'}; flagged shortcuts={len(flagged)} -> {a.out}")
    for m in leaks:
        print("LEAK:", m, file=sys.stderr)
    return 1 if leaks else 0


def main(argv=None):
    ap = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument("--pool", type=Path, default=ROOT / "v54" / "data" / "v55h_allhw2_train.jsonl")
    ap.add_argument("--data-dir", type=Path, default=ROOT / "v54" / "data", help="has v55h_train.jsonl (base)")
    ap.add_argument("--heldout-dir", type=Path, default=ROOT / "eval" / "data",
                    help="has revizor_<c>_{heldout,misfenced_heldout,misfenced_tail_heldout,real}.jsonl")
    ap.add_argument("--out", type=Path, default=ROOT / "eval" / "cluster_out" / "hw_split_audit.md")
    ap.add_argument("--classes", nargs="+", default=CLASSES)
    ap.add_argument("--seed-disjoint", nargs="*", default=[c.upper() for c in CLASSES],
                    help="classes whose split is by generator-seed campaign (overlap => FAIL)")
    a = ap.parse_args(argv)
    return run(a)


if __name__ == "__main__":
    sys.exit(main(sys.argv[1:]))
