#!/usr/bin/env python3
"""Stage 3 analysis: do the input features that carry class in synthetic
training exist on real Revizor gadgets?  Reads stage3_features.npz (built by
stage3_features.py from the repo's own GINEDatasetV47) and writes
stage3_report.md + stage3_tables.json."""
import json, sys
from pathlib import Path
import numpy as np
from scipy.stats import kruskal
from sklearn.ensemble import RandomForestClassifier
from sklearn.linear_model import LogisticRegression
from sklearn.pipeline import make_pipeline
from sklearn.preprocessing import StandardScaler
from sklearn.model_selection import GroupKFold, StratifiedKFold, cross_val_predict
from sklearn.metrics import balanced_accuracy_score, confusion_matrix
from sklearn.inspection import permutation_importance

HERE = Path(__file__).resolve().parent
D = np.load(HERE / "stage3_features.npz", allow_pickle=False)
REAL4 = ["MDS", "L1TF", "SPECTRE_V1", "SPECTRE_V4"]
rng = np.random.default_rng(0)

lab, src, grp = D["label"], D["source"], D["group"]
blocks = {"hc": D["hc_names"], "gl": D["gl_names"],
          "nmean": np.array([f"nodemean_{n}" for n in D["node_names"]]),
          "eh": np.array([f"edgefrac_{n}" for n in D["edge_names"]])}
X = np.concatenate([D[k] for k in blocks], axis=1).astype(float)
X = np.concatenate([X, D["nn"][:, None], D["arch"][:, None]], axis=1)
names = list(np.concatenate(list(blocks.values()))) + ["n_nodes", "arch_id"]
block_of = sum([[k] * len(v) for k, v in blocks.items()], []) + ["graph", "arch"]
HC = [i for i, b in enumerate(block_of) if b == "hc"]
F = len(names)

syn_all = src == "synthetic"
syn = syn_all & np.isin(lab, REAL4)
real = src == "real"
shared = src == "shared"
realany = real | shared
out = {}
L = []  # report lines
P = L.append


def eps2(x, y):
    groups = [x[y == c] for c in np.unique(y)]
    if np.ptp(x) == 0:
        return 0.0
    try:
        H = kruskal(*groups).statistic
    except ValueError:
        return 0.0
    n, k = len(x), len(groups)
    return float(max(0.0, (H - k + 1) / (n - k)))


# ---------------------------------------------------------------- 1 feature list
P("# Stage 3 — model INPUT features: synthetic class signal vs real Revizor gadgets\n")
P("Built with the repo's own `GINEDatasetV47._process_record` (use_spec_builder=True, "
  "strip_bp=True, node_feature_mode='hand' = locked B1 recipe) via "
  "`stage3_features.py`; nothing re-implemented. Rows: synthetic x86 "
  f"{syn_all.sum()} (4 Revizor classes: {syn.sum()}), per-class real {real.sum()}, shared {shared.sum()}.\n")
P("## 1. Every input the model sees\n")
P("| block | dims | contents |\n|---|---|---|")
P(f"| node features (per node) | 41 | 19 opcode-category one-hot ({', '.join(n[9:] for n in blocks['nmean'][:19])}); "
  f"5 mem-access one-hot ({', '.join(n[9:] for n in blocks['nmean'][19:24])}); num_dest_regs, num_src_regs; "
  f"14 spec flags ({', '.join(n[14:] for n in blocks['nmean'][26:40])}); pos_enc |")
P(f"| edges | {len(blocks['eh'])} types | {', '.join(blocks['eh'])} (+ edge_weight) |")
P(f"| handcrafted inline | 58 | {', '.join(blocks['hc'])} |")
P(f"| global | 5 | {', '.join(blocks['gl'])} |")
P("| arch_id | 1 (embedding) | x86_64=0 for every synthetic-x86 and every real row -> carries zero class information here |\n")
P("Node features enter the GNN per node; below they are summarised per graph as the mean over valid nodes "
  "(`nodemean_*` = fraction of nodes with that category/flag), plus per-graph edge-type fractions and n_nodes.\n")

# ---------------------------------------------------------------- 2 per-feature
rows = []
for j in range(F):
    xs, ys = X[syn, j], lab[syn]
    r = {"feature": names[j], "block": block_of[j],
         "syn_eps2": eps2(xs, ys),
         "syn_eps2_allx86": eps2(X[syn_all, j], lab[syn_all]),
         "real_eps2": eps2(X[real, j], lab[real]),
         "shared_eps2": eps2(X[shared, j], lab[shared]),
         "syn_nz": float((xs != 0).mean()), "real_nz": float((X[realany, j] != 0).mean()),
         "syn_lo": float(np.percentile(xs, 1)), "syn_hi": float(np.percentile(xs, 99))}
    for c in REAL4:
        r[f"syn_mean_{c}"] = float(X[syn & (lab == c), j].mean())
        r[f"real_mean_{c}"] = float(X[real & (lab == c), j].mean())
        r[f"shared_mean_{c}"] = float(X[shared & (lab == c), j].mean()) if (shared & (lab == c)).any() else np.nan
        r[f"syn_nz_{c}"] = float((X[syn & (lab == c), j] != 0).mean())
        r[f"real_nz_{c}"] = float((X[real & (lab == c), j] != 0).mean())
    xr = X[realany, j]
    r["real_const"] = bool(np.ptp(xr) == 0)
    r["real_frac_outside_syn_p1p99"] = float(((xr < r["syn_lo"]) | (xr > r["syn_hi"])).mean())
    # dead on real: (near) constant on real, or real fires <1% while synthetic fires >=5%
    r["dead_on_real"] = bool(r["real_const"] or (r["real_nz"] < 0.01 and r["syn_nz"] >= 0.05))
    rows.append(r)
rows_by = sorted(rows, key=lambda r: -r["syn_eps2"])
out["per_feature"] = rows_by

P("## 2. Which features carry class in synthetic training, and do they exist on real gadgets?\n")
P("Separation = Kruskal-Wallis epsilon^2 across the 4 Revizor classes (MDS/L1TF/V1/V4) on synthetic x86 "
  "(0 = no separation, 1 = perfect). nz = fraction of rows where the feature is non-zero. "
  "'dead' = constant on all 949 real rows, or fires on <1% of real rows while firing on >=5% of synthetic.\n")
P("| rank | feature | syn eps2 | real eps2 (per-class cfgs) | shared eps2 | syn nz (MDS/L1TF/V1/V4) | real nz (MDS/L1TF/V1/V4) | real rows outside syn p1-p99 | dead |")
P("|---|---|---|---|---|---|---|---|---|")
for k, r in enumerate(rows_by[:35], 1):
    P(f"| {k} | `{r['feature']}` | {r['syn_eps2']:.3f} | {r['real_eps2']:.3f} | {r['shared_eps2']:.3f} | "
      + "/".join(f"{r[f'syn_nz_{c}']:.2f}" for c in REAL4) + " | "
      + "/".join(f"{r[f'real_nz_{c}']:.2f}" for c in REAL4)
      + f" | {r['real_frac_outside_syn_p1p99']:.2f} | {'DEAD' if r['dead_on_real'] else ''} |")

dead = np.array([r["dead_on_real"] for r in rows])
syn_e = np.array([r["syn_eps2"] for r in rows])
dead_names = [names[j] for j in range(F) if dead[j]]
top20 = [names.index(r["feature"]) for r in rows_by[:20]]
P(f"\nDead-on-real features: **{dead.sum()}/{F}**. Of the top-20 synthetic-separating features, "
  f"**{int(dead[top20].sum())}** are dead on real. Share of total synthetic eps2 mass in dead features: "
  f"**{syn_e[dead].sum() / syn_e.sum():.1%}**.\n")
P("Dead list: " + ", ".join(f"`{n}`" for n in dead_names) + "\n")

# trigger / probe specific
P("### Named suspects (mean value per class; synthetic x86 -> per-class real -> shared)\n")
P("| feature | " + " | ".join(f"{c} syn / real / shared" for c in REAL4) + " |")
P("|---|" + "---|" * len(REAL4))
sus = ["frac_clflush", "has_clflush", "frac_rdtsc", "has_rdtsc", "frac_lfence", "has_lfence", "frac_verw",
       "has_verw", "frac_mfence", "has_movntdqa", "has_clflush_load", "clflush_load_norm",
       "has_page_probe_load", "page_probe_density", "has_indexed_load", "indexed_load_norm",
       "calls_attack_fn", "frac_call", "frac_callq", "frac_ret", "frac_retq", "frac_movq", "frac_nop",
       "g_verw_frac", "g_movntdqa_frac", "nodemean_op_CACHE", "nodemean_op_TIMING", "nodemean_op_FENCE",
       "nodemean_flag_is_cache_probe", "nodemean_flag_is_timing_source", "nodemean_flag_is_lfence",
       "nodemean_flag_is_verw", "nodemean_flag_is_transmitter", "nodemean_flag_is_secret_source",
       "nodemean_mem_INDEXED", "nodemean_mem_STACK"]
rmap = {r["feature"]: r for r in rows}
for n in sus:
    r = rmap[n]
    P(f"| `{n}` | " + " | ".join(
        f"{r[f'syn_mean_{c}']:.3f} / {r[f'real_mean_{c}']:.3f} / "
        + ("-" if np.isnan(r[f'shared_mean_{c}']) else f"{r[f'shared_mean_{c}']:.3f}") for c in REAL4) + " |")

# ---------------------------------------------------------------- 2b model-based share
P("\n### How much synthetic class signal lives in dead features (model-based)\n")
ys = lab[syn]
skf = StratifiedKFold(5, shuffle=True, random_state=0)
def rf():
    return RandomForestClassifier(300, min_samples_leaf=2, class_weight="balanced", random_state=0, n_jobs=-1)
res = {}
for tag, cols in [("all inputs", np.arange(F)), ("live-on-real only", np.where(~dead)[0]),
                  ("dead-on-real only", np.where(dead)[0]),
                  ("handcrafted58 all", np.array(HC)), ("handcrafted58 live", np.array([j for j in HC if not dead[j]]))]:
    if len(cols) == 0:
        continue
    pr = cross_val_predict(rf(), X[syn][:, cols], ys, cv=skf)
    m = rf().fit(X[syn][:, cols], ys)
    tr = m.predict(X[real][:, cols])
    res[tag] = {"n": len(cols), "syn_cv_bal": balanced_accuracy_score(ys, pr),
                "syn2real_bal": balanced_accuracy_score(lab[real], tr),
                "syn2shared_bal": balanced_accuracy_score(lab[shared], m.predict(X[shared][:, cols])),
                "syn2real_pred_dist": {c: int((tr == c).sum()) for c in REAL4}}
out["rf_share"] = res
P("RandomForest (300 trees) on the per-graph input summary, 4 classes, chance 0.25. syn CV = 5-fold "
  "stratified on synthetic; syn->real = train on all synthetic x86 of these 4 classes, test on real.\n")
P("| feature set | dims | synthetic CV bal.acc | syn->real (725) bal.acc | syn->shared (224) bal.acc | syn->real predicted counts MDS/L1TF/V1/V4 |")
P("|---|---|---|---|---|---|")
for k, v in res.items():
    P(f"| {k} | {v['n']} | {v['syn_cv_bal']:.3f} | {v['syn2real_bal']:.3f} | {v['syn2shared_bal']:.3f} | "
      + "/".join(str(v['syn2real_pred_dist'][c]) for c in REAL4) + " |")
m = rf().fit(X[syn], ys)
imp = m.feature_importances_
pi = permutation_importance(m, X[syn], ys, n_repeats=5, random_state=0, scoring="balanced_accuracy", n_jobs=-1)
pim = np.clip(pi.importances_mean, 0, None)
out["imp_dead_share_gini"] = float(imp[dead].sum())
out["imp_dead_share_perm"] = float(pim[dead].sum() / max(pim.sum(), 1e-12))
P(f"\nRF Gini importance mass on dead-on-real features: **{imp[dead].sum():.1%}**; "
  f"permutation-importance mass (in-sample): **{out['imp_dead_share_perm']:.1%}**.")
top = np.argsort(-imp)[:15]
P("Top-15 Gini features: " + ", ".join(f"`{names[j]}` {imp[j]:.3f}{' (DEAD)' if dead[j] else ''}" for j in top) + "\n")

# ---------------------------------------------------------------- 3 shared MDS vs L1TF
P("## 3. Shared corpus: MDS vs L1TF (one Revizor menu+shape)\n")
sm = shared & np.isin(lab, ["MDS", "L1TF"])
Xs, ysh, gs = X[sm], lab[sm], grp[sm]
P(f"n = {sm.sum()} (MDS {int((ysh=='MDS').sum())}, L1TF {int((ysh=='L1TF').sum())}), "
  f"{len(np.unique(gs))} seed groups (class+seed, `eval/shared_config.seed_group`).\n")

def cohen_d(a, b):
    s = np.sqrt(((len(a)-1)*a.var(ddof=1) + (len(b)-1)*b.var(ddof=1)) / max(len(a)+len(b)-2, 1))
    return 0.0 if s == 0 else (a.mean() - b.mean()) / s

gM = [np.where((ysh == "MDS") & (gs == g))[0] for g in np.unique(gs[ysh == "MDS"])]
gL = [np.where((ysh == "L1TF") & (gs == g))[0] for g in np.unique(gs[ysh == "L1TF"])]
B = 2000
boot_idx = []
for _ in range(B):
    iM = np.concatenate([gM[k] for k in rng.integers(0, len(gM), len(gM))])
    iL = np.concatenate([gL[k] for k in rng.integers(0, len(gL), len(gL))])
    boot_idx.append((iM, iL))
eff = []
M0, L0 = ysh == "MDS", ysh == "L1TF"
for j in range(F):
    a, b = Xs[M0, j], Xs[L0, j]
    d = cohen_d(a, b)
    if np.ptp(Xs[:, j]) == 0:
        eff.append((names[j], 0.0, 0.0, 0.0, a.mean(), b.mean(), True)); continue
    bs = np.array([cohen_d(Xs[iM, j], Xs[iL, j]) for iM, iL in boot_idx])
    lo, hi = np.percentile(bs, [2.5, 97.5])
    eff.append((names[j], d, lo, hi, a.mean(), b.mean(), False))
eff.sort(key=lambda e: -abs(e[1]))
nconst = sum(e[6] for e in eff)
nsig = sum((e[2] > 0 or e[3] < 0) for e in eff if not e[6])
out["shared_effects"] = [dict(zip(["feature", "d", "lo", "hi", "mean_MDS", "mean_L1TF", "const"], map(lambda v: v if not isinstance(v, (np.floating,)) else float(v), e))) for e in eff]
P(f"Per-feature Cohen's d (MDS - L1TF) with 95% seed-group cluster-bootstrap CIs ({B} reps). "
  f"{nconst}/{F} features are constant on the shared MDS+L1TF rows; {nsig} have a CI excluding 0.\n")
P("| feature | d | 95% CI | mean MDS | mean L1TF |\n|---|---|---|---|---|")
for e in eff[:20]:
    P(f"| `{e[0]}` | {e[1]:+.2f} | [{e[2]:+.2f}, {e[3]:+.2f}] | {e[4]:.4f} | {e[5]:.4f} |")

def grouped_cv(Xm, y, g, model, n_splits=5, perms=200):
    gkf = GroupKFold(n_splits=n_splits)
    pred = cross_val_predict(model, Xm, y, groups=g, cv=gkf)
    ba = balanced_accuracy_score(y, pred)
    # group-level label permutation null (each group is single-class)
    ug = np.unique(g); glab = np.array([y[g == u][0] for u in ug])
    null = []
    for _ in range(perms):
        pl = dict(zip(ug, rng.permutation(glab)))
        yp = np.array([pl[u] for u in g])
        null.append(balanced_accuracy_score(yp, cross_val_predict(model, Xm, yp, groups=g, cv=gkf)))
    null = np.array(null)
    # group-bootstrap CI of balanced accuracy on the out-of-fold predictions
    bs = []
    for _ in range(1000):
        ii = np.concatenate([np.where(g == u)[0] for u in rng.choice(ug, len(ug))])
        if len(np.unique(y[ii])) < 2:
            continue
        bs.append(balanced_accuracy_score(y[ii], pred[ii]))
    lo, hi = np.percentile(bs, [2.5, 97.5])
    return ba, lo, hi, float((null >= ba).mean()), float(np.percentile(null, 95))

lr = lambda: make_pipeline(StandardScaler(), LogisticRegression(C=1.0, max_iter=5000, class_weight="balanced"))
rfc = lambda: RandomForestClassifier(300, min_samples_leaf=2, class_weight="balanced", random_state=0, n_jobs=-1)
live_hc = [j for j in HC if np.ptp(Xs[:, j]) > 0]
gl_cols = [i for i, b in enumerate(block_of) if b == "gl"]
sets = {"handcrafted58": HC, "handcrafted58+global5": HC + gl_cols,
        "all per-graph inputs (hc+gl+nodemean+edgefrac+n_nodes)": list(range(F))}
P(f"\nGroupKFold(5) by seed group, balanced accuracy (chance 0.50), 95% group-bootstrap CI, "
  f"p = group-level label-permutation test (200 perms). Non-constant handcrafted dims on these rows: {len(live_hc)}/58.\n")
P("| features | model | bal.acc | 95% CI | perm p | null p95 |\n|---|---|---|---|---|---|")
out["shared_cv"] = {}
for tag, cols in sets.items():
    for mn, mk in [("LR", lr), ("RF", rfc)]:
        r = grouped_cv(Xs[:, cols], ysh, gs, mk(), perms=200 if mn == "LR" else 100)
        out["shared_cv"][f"{tag}|{mn}"] = r
        P(f"| {tag} | {mn} | {r[0]:.3f} | [{r[1]:.3f}, {r[2]:.3f}] | {r[3]:.3f} | {r[4]:.3f} |")
# robustness: group by seed number only (same generator stream across classes)
seedonly = np.array([g.split("::")[1] for g in gs])
r = grouped_cv(Xs[:, HC], ysh, seedonly, lr(), perms=0) if False else None
gkf = GroupKFold(5)
pred = cross_val_predict(lr(), Xs[:, HC], ysh, groups=seedonly, cv=gkf)
ba_seed = balanced_accuracy_score(ysh, pred)
out["shared_cv_seedonly_lr_hc"] = ba_seed
P(f"\nRobustness: grouping by seed number alone (MDS and L1TF from the same generator seed never split) "
  f"-> LR handcrafted58 bal.acc {ba_seed:.3f}.\n")
# synthetic-trained transfer on shared MDS/L1TF only
msyn = syn_all & np.isin(lab, ["MDS", "L1TF"])
for tag, cols in [("handcrafted58", HC), ("all per-graph inputs", list(range(F)))]:
    mm = rfc().fit(X[msyn][:, cols], lab[msyn])
    pp = mm.predict(Xs[:, cols])
    cm = confusion_matrix(ysh, pp, labels=["MDS", "L1TF"])
    out[f"syn2shared_mdsl1tf_{tag}"] = balanced_accuracy_score(ysh, pp)
    P(f"Synthetic-trained RF (MDS vs L1TF only, {tag}) applied to shared: bal.acc "
      f"{balanced_accuracy_score(ysh, pp):.3f}; confusion rows MDS/L1TF -> pred MDS/L1TF {cm.tolist()}.")

# ---------------------------------------------------------------- 4 OOD
P("\n## 4. Out-of-distribution check\n")
Z_mu, Z_sd = X[syn].mean(0), X[syn].std(0)
Z_sd[Z_sd == 0] = 1.0
Zs = (X[syn] - Z_mu) / Z_sd
cls_rng = {c: (X[syn & (lab == c)].min(0), X[syn & (lab == c)].max(0)) for c in REAL4}
all_lo, all_hi = X[syn].min(0), X[syn].max(0)
P("Ranges = synthetic x86 min..max over the 4 classes. 'own class' = the real gadget's own label. "
  "Nearest = z-scored (synthetic mean/std) Euclidean distance, centroid and 1-NN, over all per-graph inputs.\n")
P("| set | class | n | outside own-class range (any dim) | mean #dims outside own-class | outside 4-class union (any dim) | mean #dims outside union | nearest centroid MDS/L1TF/V1/V4 | 1-NN MDS/L1TF/V1/V4 | median 1-NN dist (syn->syn LOO median) |")
P("|---|---|---|---|---|---|---|---|---|---|")
# synthetic LOO 1-NN baseline distance
from sklearn.neighbors import NearestNeighbors
nnm = NearestNeighbors(n_neighbors=2).fit(Zs)
syn_nn = np.median(nnm.kneighbors(Zs)[0][:, 1])
cents = np.array([Zs[lab[syn] == c].mean(0) for c in REAL4])
out["ood"] = {}
for setname, msk in [("real", real), ("shared", shared)]:
    for c in REAL4:
        mm = msk & (lab == c)
        if not mm.any():
            continue
        Xr = X[mm]; Zr = (Xr - Z_mu) / Z_sd
        lo, hi = cls_rng[c]
        o_own = (Xr < lo - 1e-9) | (Xr > hi + 1e-9)
        o_all = (Xr < all_lo - 1e-9) | (Xr > all_hi + 1e-9)
        dc = ((Zr[:, None, :] - cents[None]) ** 2).sum(-1)
        nc = np.array(REAL4)[dc.argmin(1)]
        dist, idx = nnm.kneighbors(Zr, n_neighbors=1)
        n1 = lab[syn][idx[:, 0]]
        rec = {"n": int(mm.sum()), "own_any": float(o_own.any(1).mean()), "own_ndims": float(o_own.sum(1).mean()),
               "union_any": float(o_all.any(1).mean()), "union_ndims": float(o_all.sum(1).mean()),
               "centroid": {k: int((nc == k).sum()) for k in REAL4}, "nn1": {k: int((n1 == k).sum()) for k in REAL4},
               "nn_dist_med": float(np.median(dist)),
               "dims_outside_own_top": sorted([(names[j], float(o_own[:, j].mean())) for j in range(F)], key=lambda t: -t[1])[:8]}
        out["ood"][f"{setname}|{c}"] = rec
        P(f"| {setname} | {c} | {rec['n']} | {rec['own_any']:.2f} | {rec['own_ndims']:.1f} | {rec['union_any']:.2f} | "
          f"{rec['union_ndims']:.1f} | " + "/".join(str(rec['centroid'][k]) for k in REAL4) + " | "
          + "/".join(str(rec['nn1'][k]) for k in REAL4) + f" | {rec['nn_dist_med']:.1f} ({syn_nn:.1f}) |")
P("\nDims most often outside the own-class synthetic range:\n")
for k, rec in out["ood"].items():
    P(f"- {k}: " + ", ".join(f"`{n}` {f:.2f}" for n, f in rec["dims_outside_own_top"]))

json.dump(out, open(HERE / "stage3_tables.json", "w"), indent=1, default=float)
(HERE / "stage3_report_body.md").write_text("\n".join(L) + "\n")
print("\n".join(L))
