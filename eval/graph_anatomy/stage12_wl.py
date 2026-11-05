#!/usr/bin/env python3
"""stage12_wl.py — is there ANY class signal in PDG structure alone?

Weisfeiler-Lehman subtree bag (h=3, multi-relational, on the exact tensor-visible
graph) -> log1p + L2 -> LR / linear SVM (class_weight=balanced).
CV: StratifiedGroupKFold(5), pooled out-of-fold BALANCED accuracy, repeated over
5 shuffles. Groups: seed_group (class+generator seed, eval/shared_config.py) and,
stricter-but-balanced, the raw generator seed (both classes of a seed held out
together, so no fold is single-class — the source of the below-chance numbers in
eval/shared_config_identifiability.md). Null: labels permuted at seed-group level
(group->label mapping shuffled, class group counts kept), same CV -> p-value.

Also: graph-statistics vector (stage12_common.graph_stats) as a second probe;
synthetic x86 and per-class real as references; and on synthetic, a
trigger-opcode ablation (FENCE/CACHE/TIMING nodes relabelled OTHER, trigger
spec-flags and FENCE_BOUNDARY/CACHE_TEMPORAL edges removed) plus a
trigger-count-only baseline, to say WHAT separates synthetic classes.

Usage: python3 eval/graph_anatomy/stage12_wl.py   (writes stage12_wl.json, prints md)
"""
from __future__ import annotations

import json
import sys
from collections import Counter
from pathlib import Path

import numpy as np
from sklearn.feature_extraction import DictVectorizer
from sklearn.linear_model import LogisticRegression
from sklearn.metrics import balanced_accuracy_score
from sklearn.model_selection import StratifiedGroupKFold
from sklearn.preprocessing import normalize, StandardScaler
from sklearn.svm import LinearSVC

HERE = Path(__file__).resolve().parent
sys.path.insert(0, str(HERE))
from stage12_common import build, graph_stats, load_corpora, wl_bag  # noqa: E402
import pdg_builder as pb  # noqa: E402

REPS, NPERM = 5, 200


def make_clf(kind):
    if kind == "lr":
        return LogisticRegression(C=1.0, max_iter=3000, class_weight="balanced")
    return LinearSVC(C=0.1, class_weight="balanced", max_iter=20000)


def featurize_bags(bags):
    X = DictVectorizer(sparse=True).fit_transform(bags)
    X.data = np.log1p(X.data)
    return normalize(X)


def oof_bacc(X, y, groups, kind, seed, scale=False):
    cv = StratifiedGroupKFold(n_splits=5, shuffle=True, random_state=seed)
    pred = np.empty_like(y)
    for tr, te in cv.split(X, y, groups):
        Xtr, Xte = X[tr], X[te]
        if scale:
            sc = StandardScaler().fit(Xtr)
            Xtr, Xte = sc.transform(Xtr), sc.transform(Xte)
        pred[te] = make_clf(kind).fit(Xtr, y[tr]).predict(Xte)
    return balanced_accuracy_score(y, pred)


def evaluate(X, y, groups, perm_groups, kind="lr", scale=False, nperm=NPERM):
    obs = [oof_bacc(X, y, groups, kind, s, scale) for s in range(REPS)]
    rng = np.random.default_rng(0)
    pg = np.array(perm_groups)
    ug = sorted(set(perm_groups))
    glab = {g: y[pg == g][0] for g in ug}
    null = []
    for p in range(nperm):
        lab = np.array([glab[g] for g in ug])
        rng.shuffle(lab)
        m = dict(zip(ug, lab))
        yp = np.array([m[g] for g in perm_groups])
        null.append(oof_bacc(X, yp, groups, kind, p % REPS, scale))
    null = np.array(null)
    mo = float(np.mean(obs))
    return dict(bacc=mo, sd=float(np.std(obs)), null_mean=float(null.mean()),
                null_95=float(np.percentile(null, 95)),
                p=float((1 + (null >= mo).sum()) / (1 + len(null))))


def topfeat(X, y, names, k=8):
    clf = make_clf("lr").fit(X, y)
    out = {}
    for ci, c in enumerate(clf.classes_):
        w = clf.coef_[ci] if len(clf.classes_) > 2 else (clf.coef_[0] if ci == 1 else -clf.coef_[0])
        idx = np.argsort(-w)[:k]
        out[str(c)] = [(names[i], round(float(w[i]), 3)) for i in idx]
    return out


TRIG_CATS = ("FENCE", "CACHE", "TIMING")
TRIG_FLAGS = ("is_lfence", "is_mfence_or_sfence", "is_verw", "is_cache_probe",
              "is_timing_source", "is_serializing", "is_nontemp_load", "is_prefetch")


def trigger_counts(pdg):
    n = min(len(pdg.nodes), 256)
    c = Counter()
    for nd in pdg.nodes[:n]:
        cn = [k for k, v in pb.OPCODE_CATEGORIES.items() if v == nd.opcode_category][0]
        if cn in TRIG_CATS:
            c["cat_" + cn] += 1
        for f in TRIG_FLAGS:
            if nd.spec_flags[pb.SPEC_FLAGS[f]]:
                c["flag_" + f] += 1
    return {k: np.log1p(v) for k, v in c.items()} or {"none": 1.0}


def main():
    corp = load_corpora()
    built = {}
    for name, recs in corp.items():
        built[name] = [(r, build(r)[0]) for r in recs]
        built[name] = [(r, g) for r, g in built[name] if g is not None]
    res = {}

    def run(tag, corpus, classes, variants, groupings=("seed_group", "raw_seed"),
            kinds=("lr", "svm"), nperm=NPERM):
        items = [(r, g) for r, g in built[corpus] if r["label"] in classes]
        y = np.array([r["label"] for r, _ in items])
        sg = [r["_g"] for r, _ in items]
        rs = [r["_seed"] for r, _ in items]
        print(f"\n### {tag}  (n={len(items)}: {dict(Counter(y))}; chance {1/len(classes):.2f})\n")
        print("| features | grouping | clf | bal. acc (mean±sd, 5 reps) | null mean / 95th pct | p |")
        print("|---|---|---|---|---|---|")
        res[tag] = {}
        for vname, fn, scale in variants:
            X = fn(items)
            for gname in groupings:
                groups = sg if gname == "seed_group" else rs
                for kind in kinds:
                    e = evaluate(X, y, groups, sg, kind, scale, nperm)
                    res[tag][f"{vname}|{gname}|{kind}"] = e
                    print(f"| {vname} | {gname} | {kind} | {e['bacc']:.3f} ± {e['sd']:.3f} | "
                          f"{e['null_mean']:.3f} / {e['null_95']:.3f} | {e['p']:.3f} |")
        return items, y

    wl = lambda **kw: (lambda items: featurize_bags([wl_bag(g, **kw) for _, g in items]))
    stats_vec = lambda items: np.array([[v for k, v in sorted(graph_stats(g, r).items())]
                                        for r, g in items], float)
    trig = lambda items: DictVectorizer(sparse=False).fit_transform(
        [trigger_counts(g) for _, g in items])
    V_SHARED = [("WL cat", wl(node_label="cat"), False),
                ("WL cat+mem", wl(node_label="catmem"), False),
                ("WL full node feats", wl(node_label="full"), False),
                ("WL cat+mem, no CONTROL_FLOW", wl(node_label="catmem", drop_cf=True), False),
                ("graph stats vector", stats_vec, True)]
    print("## WL / graph-structure probes\n")
    run("shared: MDS vs L1TF", "shared", ("MDS", "L1TF"), V_SHARED)
    run("shared: MDS / L1TF / V4", "shared", ("MDS", "L1TF", "SPECTRE_V4"), V_SHARED[:3] + V_SHARED[4:])
    V_REF = [("WL cat+mem", wl(node_label="catmem"), False),
             ("WL cat+mem, no CONTROL_FLOW", wl(node_label="catmem", drop_cf=True), False),
             ("graph stats vector", stats_vec, True)]
    run("real per-class cfg: MDS vs L1TF", "real", ("MDS", "L1TF"), V_REF,
        groupings=("seed_group",), kinds=("lr",), nperm=50)
    V_SYN = [("WL full node feats", wl(node_label="full"), False),
             ("WL cat+mem", wl(node_label="catmem"), False),
             ("WL full, triggers stripped", wl(node_label="full", strip_triggers=True), False),
             ("WL cat+mem, triggers stripped, no CONTROL_FLOW",
              wl(node_label="catmem", strip_triggers=True, drop_cf=True), False),
             ("trigger counts only", trig, True),
             ("graph stats vector", stats_vec, True)]
    items, y = run("synth x86: MDS vs L1TF", "synth", ("MDS", "L1TF"), V_SYN,
                   groupings=("seed_group",), kinds=("lr",), nperm=50)
    run("synth x86: MDS / L1TF / V4", "synth", ("MDS", "L1TF", "SPECTRE_V4"), V_SYN,
        groupings=("seed_group",), kinds=("lr",), nperm=50)
    # what separates synthetic MDS vs L1TF: top WL-0 / stats features
    bags0 = [Counter({k: v for k, v in wl_bag(g, h=0, node_label="full").items()}) for _, g in items]
    dv = DictVectorizer(sparse=False)
    X0 = dv.fit_transform(bags0)
    X0 = np.log1p(X0)
    res["synth_top_node_labels"] = topfeat(StandardScaler().fit_transform(X0), y,
                                           dv.get_feature_names_out())
    print("\n### synth x86 MDS vs L1TF — top node labels (WL iteration 0, std. LR weights)\n")
    for c, lst in res["synth_top_node_labels"].items():
        print(f"- **{c}**: " + "; ".join(f"`{n}` {w:+.2f}" for n, w in lst))
    (HERE / "stage12_wl.json").write_text(json.dumps(res, indent=1))


if __name__ == "__main__":
    main()
