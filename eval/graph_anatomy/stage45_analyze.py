#!/usr/bin/env python3
"""stage45_analyze.py — analyses on the stage45_extract.py cache.

  probes     per-layer linear probes (LR, StratifiedGroupKFold by seed group,
             balanced acc, + group-level label-permutation null)
  geometry   real gadgets vs synthetic class centroids in `combined`;
             MDS-vs-L1TF separation ratio; linear CKA; NN seed-vs-class
  branches   graph/feat ablation effects on real predictions
  margins    MDS-L1TF logit margins on real gadgets per seed
  attrib     integrated gradients over nodes and handcrafted inputs (shared_gine)

    python3 eval/graph_anatomy/stage45_analyze.py --cache DIR
writes eval/graph_anatomy/stage45_results.json (consumed by the report).
"""
from __future__ import annotations
import argparse
import json
import sys
import warnings
from collections import Counter, defaultdict
from pathlib import Path

ROOT = Path(__file__).resolve().parents[2]
sys.path.insert(0, str(ROOT / "eval"))
sys.path.insert(0, str(ROOT))
warnings.filterwarnings("ignore")

import numpy as np  # noqa: E402
from sklearn.linear_model import LogisticRegression  # noqa: E402
from sklearn.model_selection import StratifiedGroupKFold  # noqa: E402
from sklearn.metrics import balanced_accuracy_score  # noqa: E402
from sklearn.pipeline import make_pipeline  # noqa: E402
from sklearn.preprocessing import StandardScaler  # noqa: E402

from eval.shared_config import seed_group  # noqa: E402
from score_hwlabel_variants import load_jsonl, EXPECTED_CLASSES  # noqa: E402

SEEDS = (1, 7, 13, 21, 42)
ARMS = ("shared_gine", "b1", "allhw", "allhw2")
REPS = ["hc_raw", "glob_raw", "in_mean", "L0", "L1", "L2", "L3", "attn_pool",
        "graph", "feat", "glob", "combined", "hidden", "logits"]
CID = {c: i for i, c in enumerate(EXPECTED_CLASSES)}
EDGE_NAMES = ["DATA_DEP", "CONTROL_FLOW", "SPEC_CONDITIONAL", "SPEC_INDIRECT", "SPEC_RETURN",
              "MEMORY_ORDER", "CACHE_TEMPORAL", "FENCE_BOUNDARY", "RSB_CHAIN"]


def load_meta():
    tr = load_jsonl(ROOT / "eval/data/revizor_shared_train.jsonl")
    ho = load_jsonl(ROOT / "eval/data/revizor_shared_heldout_variants.jsonl")
    sy = load_jsonl(ROOT / "v54/data/v54_test.jsonl")
    sy = [r for r in sy if r["label"] in CID]
    return {"real_train": tr, "real_heldout": ho, "syn_test": sy}


def probe(X, y, g, n_splits=5, reps=3, perm=0, rng=None):
    """Out-of-fold balanced accuracy, mean over `reps` fold shuffles. With
    perm>0 also return a null distribution from permuting labels at GROUP
    level (preserves the group structure, which is what makes naive chance
    misleading here)."""
    X = np.nan_to_num(np.asarray(X, dtype=np.float64))
    keep = X.std(0) > 1e-8
    X = X[:, keep] if keep.any() else X[:, :1]

    def once(yy, seed):
        cv = StratifiedGroupKFold(n_splits=n_splits, shuffle=True, random_state=seed)
        oof = np.empty_like(yy)
        for tr, te in cv.split(X, yy, g):
            clf = make_pipeline(StandardScaler(), LogisticRegression(
                C=0.1, max_iter=3000, class_weight="balanced"))
            clf.fit(X[tr], yy[tr]); oof[te] = clf.predict(X[te])
        return balanced_accuracy_score(yy, oof)
    obs = float(np.mean([once(y, s) for s in range(reps)]))
    if not perm:
        return obs, None
    groups = np.unique(g)
    glab = {gg: y[g == gg][0] for gg in groups}
    null = []
    for p in range(perm):
        lab = np.array([glab[gg] for gg in groups]); rng.shuffle(lab)
        m = dict(zip(groups, lab)); yy = np.array([m[gg] for gg in g])
        null.append(once(yy, 100 + p))
    null = np.array(null)
    return obs, dict(null_mean=float(null.mean()), null_p95=float(np.percentile(null, 95)),
                     p=float((1 + (null >= obs).sum()) / (1 + len(null))))


def cka(X, Y):
    X = X - X.mean(0); Y = Y - Y.mean(0)
    return float(np.linalg.norm(X.T @ Y) ** 2 / (np.linalg.norm(X.T @ X) * np.linalg.norm(Y.T @ Y)))


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--cache", default=str(ROOT / "eval/graph_anatomy/cache"))
    ap.add_argument("--perm", type=int, default=30)
    ap.add_argument("--no-attrib", action="store_true")
    args = ap.parse_args()
    cache = Path(args.cache)
    meta = load_meta()
    rng = np.random.default_rng(0)
    Z = {(a, s): np.load(cache / f"{a}_s{s}.npz") for a in ARMS for s in SEEDS}
    R = {"probes": {}, "geometry": {}, "branches": {}, "margins": {}, "edge_scales": {}}

    def real_sel(arm, classes, which):
        """which: 'heldout' (unseen by every arm) or 'all' (224; seen by shared_gine)."""
        out = []
        for name in (("real_heldout",) if which == "heldout" else ("real_train", "real_heldout")):
            for i, r in enumerate(meta[name]):
                if r["label"] in classes:
                    out.append((name, i, r["label"], seed_group(r)))
        return out

    def stack(z, sel, rep):
        return np.stack([z[f"{n}/{rep}"][i] for n, i, _, _ in sel]).astype(np.float64)

    tasks = {"MDS_vs_L1TF": ("MDS", "L1TF"), "MDS_L1TF_V4": ("MDS", "L1TF", "SPECTRE_V4")}
    # ---------------- 1. probes ----------------
    for arm in ARMS:
        which = "heldout" if arm == "shared_gine" else "all"
        for tname, cls in tasks.items():
            sel = real_sel(arm, cls, which)
            y = np.array([CID[l] for *_, l, _ in sel]); g = np.array([gg for *_, gg in sel])
            ssel = [(("syn_test", i, r["label"], r["group"])) for i, r in enumerate(meta["syn_test"]) if r["label"] in cls]
            ys = np.array([CID[l] for *_, l, _ in ssel]); gs = np.array([gg for *_, gg in ssel])
            rows = {}
            for rep in REPS:
                rv, sv = [], []
                for s in SEEDS:
                    z = Z[(arm, s)]
                    rv.append(probe(stack(z, sel, rep), y, g, reps=2)[0])
                    sv.append(probe(stack(z, ssel, rep), ys, gs, reps=1)[0])
                rows[rep] = dict(real=float(np.mean(rv)), real_sd=float(np.std(rv)),
                                 syn=float(np.mean(sv)), syn_sd=float(np.std(sv)))
                # inputs identical across arms/seeds: compute null once per input rep
                if rep in ("hc_raw", "in_mean", "combined") and args.perm:
                    _, nul = probe(stack(Z[(arm, 1)], sel, rep), y, g, reps=1, perm=args.perm, rng=rng)
                    rows[rep]["null_s1"] = nul
            R["probes"][f"{arm}/{tname}/{which}"] = rows
            print(arm, tname, which, {k: round(v["real"], 3) for k, v in rows.items()})
        if arm == "shared_gine":   # also the 224 (train gadgets were FIT by this arm)
            sel = real_sel(arm, tasks["MDS_vs_L1TF"], "all")
            y = np.array([CID[l] for *_, l, _ in sel]); g = np.array([gg for *_, gg in sel])
            R["probes"]["shared_gine/MDS_vs_L1TF/all"] = {
                rep: dict(real=float(np.mean([probe(stack(Z[(arm, s)], sel, rep), y, g, reps=2)[0] for s in SEEDS])))
                for rep in REPS}

    # ---------------- 2. geometry in `combined` ----------------
    syn = meta["syn_test"]
    for arm in ARMS:
        which = "heldout" if arm == "shared_gine" else "all"
        sel = real_sel(arm, ("MDS", "L1TF", "SPECTRE_V4", "SPECTRE_V1"), which)
        G = defaultdict(list)
        for s in SEEDS:
            z = Z[(arm, s)]
            C = z["syn_test/combined"].astype(np.float64)
            ylab = np.array([r["label"] for r in syn])
            cents = {c: C[ylab == c].mean(0) for c in EXPECTED_CLASSES if (ylab == c).sum() >= 5}
            Xr = stack(z, sel, "combined"); lr = np.array([l for *_, l, _ in sel])
            names = list(cents); M = np.stack([cents[c] for c in names])
            d = np.linalg.norm(Xr[:, None] - M[None], axis=-1)
            nc = np.array(names)[d.argmin(1)]
            for c in ("MDS", "L1TF", "SPECTRE_V4", "SPECTRE_V1"):
                G[f"nearest_centroid/{c}"].append(Counter(nc[lr == c]))
                G[f"nc_correct/{c}"].append(float((nc[lr == c] == c).mean()))
            # distances: real gadget -> own synthetic centroid vs synthetic within-class radius
            for c in ("MDS", "L1TF"):
                rad = np.linalg.norm(C[ylab == c] - cents[c], axis=1).mean()
                G[f"dist_ratio_real_to_syncent/{c}"].append(float(np.linalg.norm(Xr[lr == c] - cents[c], axis=1).mean() / rad))
            # separation ratio between-centroid / mean within-class radius
            def sep(X, lab):
                a, b = X[lab == "MDS"], X[lab == "L1TF"]
                ca, cb = a.mean(0), b.mean(0)
                w = 0.5 * (np.linalg.norm(a - ca, axis=1).mean() + np.linalg.norm(b - cb, axis=1).mean())
                return float(np.linalg.norm(ca - cb) / w)
            G["sep_real"].append(sep(Xr, lr)); G["sep_syn"].append(sep(C, ylab))
            # group permutation null for real separation
            gl = np.array([gg for *_, gg in sel]); ml = (lr == "MDS") | (lr == "L1TF")
            Xm, lm, gm = Xr[ml], lr[ml], gl[ml]
            ug = np.unique(gm); glab = {u: lm[gm == u][0] for u in ug}
            nul = []
            for _ in range(200):
                p = np.array([glab[u] for u in ug]); rng.shuffle(p); mp = dict(zip(ug, p))
                nul.append(sep(Xm, np.array([mp[u] for u in gm])))
            G["sep_real_null_p95"].append(float(np.percentile(nul, 95)))
            G["sep_real_p"].append(float((1 + (np.array(nul) >= sep(Xm, lm)).sum()) / 201))
            # real-vs-synthetic domain gap: distance of real cloud centre to nearest syn centroid
            G["real_centre_to_benign_vs_mds"].append(
                (float(np.linalg.norm(Xr.mean(0) - cents["BENIGN"])), float(np.linalg.norm(Xr.mean(0) - cents["MDS"]))))
            # 1-NN within real: same class vs same seed (generator stream)
            seedonly = np.array([gg.split("::")[1] for gg in gl])
            D = np.linalg.norm(Xm[:, None] - Xm[None], axis=-1); np.fill_diagonal(D, np.inf)
            nn = D.argmin(1)
            G["nn_same_class"].append(float((lm[nn] == lm).mean()))
            G["nn_same_group"].append(float((gm[nn] == gm).mean()))
            sm = seedonly[ml]
            G["nn_same_seed_other_class"].append(float(((sm[nn] == sm) & (lm[nn] != lm)).mean()))
            # CKA of each layer to the raw input / to combined, real vs synthetic
            for rep in ("L0", "L1", "L2", "L3", "attn_pool", "graph", "feat", "combined"):
                G[f"cka_in_mean->{rep}/real"].append(cka(stack(z, sel, "in_mean"), stack(z, sel, rep)))
                G[f"cka_in_mean->{rep}/syn"].append(cka(z["syn_test/in_mean"].astype(np.float64), z[f"syn_test/{rep}"].astype(np.float64)))
        out = {}
        for k, v in G.items():
            if isinstance(v[0], Counter):
                tot = Counter(); [tot.update(c) for c in v]; out[k] = dict(tot.most_common(4))
            elif isinstance(v[0], tuple):
                out[k] = [float(np.mean([x[0] for x in v])), float(np.mean([x[1] for x in v]))]
            else:
                out[k] = [float(np.mean(v)), float(np.std(v))]
        # cross-seed CKA on real combined: do seeds share geometry?
        cs = [cka(stack(Z[(arm, a)], sel, "combined"), stack(Z[(arm, b)], sel, "combined"))
              for i, a in enumerate(SEEDS) for b in SEEDS[i + 1:]]
        out["cross_seed_cka_real_combined"] = [float(np.mean(cs)), float(np.std(cs))]
        cs = [cka(Z[(arm, a)]["syn_test/combined"].astype(np.float64), Z[(arm, b)]["syn_test/combined"].astype(np.float64))
              for i, a in enumerate(SEEDS) for b in SEEDS[i + 1:]]
        out["cross_seed_cka_syn_combined"] = [float(np.mean(cs)), float(np.std(cs))]
        R["geometry"][arm] = out
        print("geom", arm, {k: v for k, v in out.items() if not k.startswith("cka")})

    # ---------------- 3/5. branches + margins ----------------
    for arm in ARMS:
        which = "heldout" if arm == "shared_gine" else "all"
        sel = real_sel(arm, ("MDS", "L1TF", "SPECTRE_V4", "SPECTRE_V1"), which)
        lr = np.array([l for *_, l, _ in sel]); gl = np.array([gg for *_, gg in sel])
        B = defaultdict(list); Mg = defaultdict(list); per_seed = {}
        for s in SEEDS:
            z = Z[(arm, s)]
            base = stack(z, sel, "logits"); pb = base.argmax(1)
            ml = (lr == "MDS") | (lr == "L1TF")
            B["pred_dist_MDS_L1TF"].append(Counter(np.array(EXPECTED_CLASSES)[pb[ml]]))
            for ab in ("abl_graph_zero", "abl_graph_mean", "abl_feat_zero", "abl_feat_mean"):
                L = stack(z, sel, ab); pa = L.argmax(1)
                B[f"{ab}/flip_frac"].append(float((pa != pb).mean()))
                B[f"{ab}/flip_frac_MDS_L1TF"].append(float((pa[ml] != pb[ml]).mean()))
                B[f"{ab}/pred_MDS_L1TF"].append(Counter(np.array(EXPECTED_CLASSES)[pa[ml]]))
                mg = L[:, CID["MDS"]] - L[:, CID["L1TF"]]
                B[f"{ab}/margin_MDS_minus_L1TF_mean"].append(float(mg[ml].mean()))
                B[f"{ab}/bal_acc_MDS_L1TF_2way"].append(float(balanced_accuracy_score(
                    lr[ml], np.where(mg[ml] > 0, "MDS", "L1TF"))))
            for c in ("SPECTRE_V1",):
                B[f"V1_recall/base"].append(float((pb[lr == c] == CID[c]).mean()))
                for ab in ("abl_graph_mean", "abl_feat_mean"):
                    B[f"V1_recall/{ab}"].append(float((stack(z, sel, ab).argmax(1)[lr == c] == CID[c]).mean()))
            # margins
            mg = base[:, CID["MDS"]] - base[:, CID["L1TF"]]
            top2 = np.sort(base, 1)[:, -2:]; gap = top2[:, 1] - top2[:, 0]
            p = np.exp(base - base.max(1, keepdims=True)); p /= p.sum(1, keepdims=True)
            m_m, m_l = mg[lr == "MDS"], mg[lr == "L1TF"]
            # group-level class effect on margin (each seed group = one unit)
            gm = {gg: mg[gl == gg].mean() for gg in np.unique(gl[ml])}
            eff = np.mean([v for k, v in gm.items() if k.startswith("MDS")]) - np.mean([v for k, v in gm.items() if k.startswith("L1TF")])
            per_seed[s] = dict(
                margin_mean_on_MDS=float(m_m.mean()), margin_mean_on_L1TF=float(m_l.mean()),
                margin_sd_within=float(np.concatenate([m_m - m_m.mean(), m_l - m_l.mean()]).std()),
                class_effect_groupmean=float(eff),
                frac_margin_pos=float((mg[ml] > 0).mean()),
                abs_margin_median=float(np.median(np.abs(mg[ml]))),
                top1_top2_gap_median=float(np.median(gap[ml])),
                p_MDS_plus_L1TF_mean=float((p[ml, CID["MDS"]] + p[ml, CID["L1TF"]]).mean()),
                p_max_mean=float(p[ml].max(1).mean()),
                bal_acc_2way=float(balanced_accuracy_score(lr[ml], np.where(mg[ml] > 0, "MDS", "L1TF"))),
            )
            Mg["margins"].append(mg[ml])
            # synthetic comparison
            sl = np.array([r["label"] for r in meta["syn_test"]])
            sm = z["syn_test/logits"][:, CID["MDS"]] - z["syn_test/logits"][:, CID["L1TF"]]
            per_seed[s]["syn_margin_on_MDS"] = float(sm[sl == "MDS"].mean())
            per_seed[s]["syn_margin_on_L1TF"] = float(sm[sl == "L1TF"].mean())
        allm = np.stack(Mg["margins"])          # seeds x gadgets
        cc = np.corrcoef(allm); iu = np.triu_indices(len(SEEDS), 1)
        bo = {}
        for k, v in B.items():
            if isinstance(v[0], Counter):
                tot = Counter(); [tot.update(c) for c in v]; bo[k] = dict(tot.most_common(4))
            else:
                bo[k] = [float(np.mean(v)), float(np.std(v))]
        R["branches"][arm] = bo
        R["margins"][arm] = dict(per_seed=per_seed,
                                 cross_seed_margin_corr=[float(cc[iu].mean()), float(cc[iu].min()), float(cc[iu].max())])
        R["edge_scales"][arm] = {n: [float(np.mean([Z[(arm, s)]["edge_scales"][i] for s in SEEDS])),
                                     float(np.std([Z[(arm, s)]["edge_scales"][i] for s in SEEDS]))]
                                 for i, n in enumerate(EDGE_NAMES)}
        print("margins", arm, json.dumps(per_seed, indent=None)[:600])

    if not args.no_attrib:
        import stage45_attrib
        R["attrib"] = stage45_attrib.run(meta)
        (ROOT / "eval/graph_anatomy/stage45_attrib.json").write_text(json.dumps(R["attrib"], indent=1))

    out = ROOT / "eval/graph_anatomy/stage45_results.json"
    out.write_text(json.dumps(R, indent=1, default=lambda o: dict(o) if isinstance(o, Counter) else str(o)))
    print("wrote", out)


if __name__ == "__main__":
    sys.path.insert(0, str(Path(__file__).resolve().parent))
    main()
