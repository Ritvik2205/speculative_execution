#!/usr/bin/env python3
"""stage12_stats.py — per-class graph statistics on the three corpora
(shared Revizor, per-class-config Revizor, synthetic x86 v54), with
group-aware (cluster-bootstrap by seed group) effect sizes for:
  * MDS vs L1TF on the shared corpus      (is there any class signal?)
  * MDS vs L1TF on synthetic x86 / real  (reference contrasts)
  * synthetic vs shared, per class        (stage-4 domain shift)

Writes eval/graph_anatomy/stage12_stats.json and prints markdown tables.
Usage: python3 eval/graph_anatomy/stage12_stats.py
"""
from __future__ import annotations

import json
import sys
from collections import defaultdict
from pathlib import Path

import numpy as np

HERE = Path(__file__).resolve().parent
sys.path.insert(0, str(HERE))
from stage12_common import build, graph_stats, load_corpora, cluster_boot_diff  # noqa: E402

KEYS = ["n_nodes", "n_edges", "edges_per_node",
        "f_CONTROL_FLOW", "f_DATA_DEP", "f_MEMORY_ORDER", "f_SPEC_CONDITIONAL",
        "f_CACHE_TEMPORAL", "f_FENCE_BOUNDARY", "f_SPEC_RETURN", "f_SPEC_INDIRECT",
        "dd_in_mean", "dd_in_max", "dd_out_max", "dd_isolated_frac", "dd_longest_path",
        "dd_components", "dd_components_nontrivial", "dd_largest_comp_frac",
        "dd_LOAD_LOAD", "dd_semread_semread", "mo_store_load", "mo_span_mean",
        "motif_load_addr_direct", "motif_load_addr_k3", "motif_load_addr_k3_read",
        "sem_reads", "sem_writes", "sem_reads_not_LOAD",
        "c_LOAD", "c_STORE", "c_OTHER", "c_MOVE", "c_LOGIC", "c_FENCE", "c_CACHE", "c_TIMING",
        "c_BRANCH_COND",
        "flag_is_secret_source", "flag_is_transmitter", "flag_is_cache_probe",
        "flag_is_timing_source", "flag_is_lfence", "flag_is_verw"]


def table(rows):
    out = {}
    for corpus, recs in rows.items():
        by = defaultdict(list)
        for r, s in recs:
            by[r["label"]].append((r, s))
        out[corpus] = by
    return out


def main():
    corp = load_corpora()
    rows = {}
    for name, recs in corp.items():
        rows[name] = []
        for r in recs:
            pdg, _ = build(r)
            if pdg is not None:
                rows[name].append((r, graph_stats(pdg, r)))
    T = table(rows)
    res = {"means": {}, "contrasts": {}}
    print("## Per-class means (mean over graphs; n graphs / n groups)\n")
    for corpus in ("shared", "real", "synth"):
        print(f"### {corpus}\n")
        cls = [c for c in ("MDS", "L1TF", "SPECTRE_V4", "SPECTRE_V1") if c in T[corpus]]
        print("| stat | " + " | ".join(
            f"{c} (n={len(T[corpus][c])}/{len({r['_g'] for r, _ in T[corpus][c]})})" for c in cls) + " |")
        print("|---|" + "---|" * len(cls))
        res["means"][corpus] = {}
        for k in KEYS:
            vals = [np.mean([s[k] for _, s in T[corpus][c]]) for c in cls]
            res["means"][corpus][k] = dict(zip(cls, map(float, vals)))
            print(f"| {k} | " + " | ".join(f"{v:.3g}" for v in vals) + " |")
        print()

    def contrast(tag, A, B):
        print(f"### {tag}  (SMD = (A-B)/pooled sd, 95% CI by cluster bootstrap over groups)\n")
        print("| stat | mean A | mean B | SMD [95% CI] | |")
        print("|---|---|---|---|---|")
        res["contrasts"][tag] = {}
        for k in KEYS:
            x = np.array([s[k] for _, s in A], float)
            y = np.array([s[k] for _, s in B], float)
            if x.std() == 0 and y.std() == 0:
                continue
            d, lo, hi = cluster_boot_diff(x, y, [r["_g"] for r, _ in A], [r["_g"] for r, _ in B])
            sig = "*" if (lo > 0 or hi < 0) else ""
            res["contrasts"][tag][k] = dict(a=float(x.mean()), b=float(y.mean()), smd=float(d),
                                            lo=float(lo), hi=float(hi))
            print(f"| {k} | {x.mean():.3g} | {y.mean():.3g} | {d:+.2f} [{lo:+.2f}, {hi:+.2f}] | {sig} |")
        print()

    print("## Class contrasts\n")
    contrast("shared: MDS vs L1TF", T["shared"]["MDS"], T["shared"]["L1TF"])
    contrast("shared: MDS+L1TF vs SPECTRE_V4", T["shared"]["MDS"] + T["shared"]["L1TF"],
             T["shared"]["SPECTRE_V4"])
    contrast("real(per-class cfg): MDS vs L1TF", T["real"]["MDS"], T["real"]["L1TF"])
    contrast("synth x86: MDS vs L1TF", T["synth"]["MDS"], T["synth"]["L1TF"])
    print("## Synthetic-vs-real shift per class (A = synthetic x86, B = shared Revizor)\n")
    for c in ("MDS", "L1TF", "SPECTRE_V4", "SPECTRE_V1"):
        contrast(f"shift {c}: synth vs shared", T["synth"][c], T["shared"][c])
    (HERE / "stage12_stats.json").write_text(json.dumps(res, indent=1))


if __name__ == "__main__":
    main()
