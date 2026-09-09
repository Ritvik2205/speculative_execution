#!/usr/bin/env python3
"""aggregate_results.py — score every cluster checkpoint and emit the result tables.

Runs on the cluster as the final afterok-dependency job (see run_everything.sh).
Reads checkpoints under eval/cluster_out/<tag>_s<seed>/gine_best.pt, uses the
robustness suite's evaluate_checkpoint (dict API), and writes:
  eval/cluster_out/W3_grid.md     — arch-mode x handcrafted (locked/arm64/x86/masked macroF1)
  eval/cluster_out/W4_ablation.md — edge ON vs OFF, target-class recall
  eval/cluster_out/real_v4.md     — SPECTRE_V4 recall on the 16 real HW gadgets, ON vs OFF
Everything mean +/- 95% CI over whatever seeds are present.
"""
from __future__ import annotations
import sys, glob, re, statistics as st
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent.parent
sys.path.insert(0, str(ROOT / "eval"))
sys.path.insert(0, str(ROOT / "v54"))
from robustness_suite import evaluate_checkpoint  # noqa: E402

OUT = ROOT / "eval" / "cluster_out"
TEST = str(ROOT / "v54" / "data" / "v54_test.jsonl")
REAL_V4 = str(ROOT / "eval" / "data" / "revizor_v4_real.jsonl")
REAL_V4_HELDOUT = str(ROOT / "eval" / "data" / "revizor_v4_heldout.jsonl")

def ci(xs):
    xs = [x for x in xs if x is not None and x == x]
    if not xs: return (float("nan"), float("nan"))
    m = sum(xs) / len(xs)
    if len(xs) < 2: return (m, 0.0)
    return (m, 1.96 * st.stdev(xs) / len(xs) ** 0.5)

def f(mh):
    m, h = mh
    return f"{m:.3f}±{h:.3f}" if m == m else "n/a"

def seeds_for(tag):
    """checkpoints eval/cluster_out/<tag>_s<seed>/gine_best.pt -> list of paths."""
    return sorted(glob.glob(str(OUT / f"{tag}_s*/gine_best.pt")))

def metric(tag, key, cond=None, cls=None, perturb=None, arch=None):
    """mean±CI of a metric across a tag's seeds. key in {macro_f1,ece,benign_fp_rate,recall}."""
    test_path = {"realv4": REAL_V4, "realv4_heldout": REAL_V4_HELDOUT}.get(cond, TEST)
    vals = []
    for ck in seeds_for(tag):
        try:
            d = evaluate_checkpoint(ck, test_path, perturb=perturb, arch_filter=arch)
        except Exception as e:
            print(f"[warn] {ck}: {e}"); continue
        if cls:
            vals.append(d.get("per_class_recall", {}).get(cls))
        else:
            vals.append(d.get(key))
    return ci(vals)

def main():
    OUT.mkdir(parents=True, exist_ok=True)

    # ---- W3 grid -------------------------------------------------------
    cfgs = [("w3_embed_on","embed + hand"), ("w3_embed_off","embed, NO hand"),
            ("w3_adversarial_on","adversarial + hand"), ("w3_adversarial_off","adversarial, NO hand")]
    L = ["# W3 — arch-mode x handcrafted (cluster, all seeds present, mean±95%CI)\n",
         "| config | locked macroF1 | arm64 | x86 | trigger-masked | locked ECE |",
         "|---|---|---|---|---|---|"]
    for tag, lab in cfgs:
        if not seeds_for(tag): continue
        L.append(f"| {lab} | {f(metric(tag,'macro_f1'))} | {f(metric(tag,'macro_f1',arch='arm64'))} | "
                 f"{f(metric(tag,'macro_f1',arch='x86_64'))} | {f(metric(tag,'macro_f1',perturb='trigger_masked'))} | "
                 f"{f(metric(tag,'ece'))} |")
    (OUT / "W3_grid.md").write_text("\n".join(L) + "\n")

    # ---- W4 edge-ablation (ON vs the w3_embed_on OFF baseline) ----------
    off = "w3_embed_on"
    rows = [("w4_memedge","MEMORY_ORDER (V4)","SPECTRE_V4"),
            ("w4_taintslice","taint-slice (G2)","L1TF"),
            ("w4_taintslice","taint-slice (G2)","MDS"),
            ("w4_cfgspec","cfg-spec (G4)",None)]
    L = ["# W4 — edge ON vs OFF baseline (w3_embed_on), mean±95%CI\n",
         "| edge | class | locked macroF1 ON | locked macroF1 OFF | target recall ON | target recall OFF |",
         "|---|---|---|---|---|---|"]
    for tag, lab, cls in rows:
        if not seeds_for(tag): continue
        onf, offf = metric(tag,'macro_f1'), metric(off,'macro_f1')
        onr  = metric(tag,'recall',cls=cls) if cls else (float('nan'),0)
        offr = metric(off,'recall',cls=cls) if cls else (float('nan'),0)
        L.append(f"| {lab} | {cls or '(macro)'} | {f(onf)} | {f(offf)} | "
                 f"{f(onr) if cls else 'n/a'} | {f(offr) if cls else 'n/a'} |")
    (OUT / "W4_ablation.md").write_text("\n".join(L) + "\n")

    # ---- real-V4 (the honest G1 test) ----------------------------------
    if Path(REAL_V4).exists():
        on  = metric("w4_memedge","recall",cond="realv4",cls="SPECTRE_V4")
        base= metric(off,       "recall",cond="realv4",cls="SPECTRE_V4")
        verdict = ("edge LIFTS real-V4 recall" if on[0]>base[0]+0.05 else
                   "no lift — edge does not rescue real-V4 detection" if on[0]==on[0] else "n/a")
        (OUT / "real_v4.md").write_text(
            "# Real-V4 recall on 16 hardware-confirmed gadgets (mean±95%CI)\n\n"
            f"- edge ON (mem-order): {f(on)}\n- edge OFF (baseline): {f(base)}\n\n**Verdict:** {verdict}\n")
    # ---- P3: does folding real V4 into training fix real-V4 recall? ----
    # Both scored on the SEED-DISJOINT held-out gadgets (revizor_v4_heldout.jsonl).
    if Path(REAL_V4_HELDOUT).exists() and seeds_for("p3_hwv4"):
        after = metric("p3_hwv4","recall",cond="realv4_heldout",cls="SPECTRE_V4")
        before= metric(off,     "recall",cond="realv4_heldout",cls="SPECTRE_V4")
        verdict = ("folding real V4 into training LIFTS held-out real-V4 recall"
                   if after[0] > before[0] + 1e-9 else
                   "no lift — real V4 still not detected even after training on some")
        (OUT / "real_v4_p3.md").write_text(
            "# P3 — held-out real-V4 recall: baseline vs trained-with-real-V4 (mean±95%CI)\n\n"
            "Both scored on the seed-disjoint held-out gadgets (eval/data/revizor_v4_heldout.jsonl).\n\n"
            f"- BEFORE (v55h, no real V4 in train): {f(before)}\n"
            f"- AFTER  (v55h + 11 real V4 in train): {f(after)}\n\n**Verdict:** {verdict}\n"
            "\n_Caveat: held-out is 5 gadgets from a single generator seed — coarse, exploratory._\n")
    print("wrote W3_grid.md, W4_ablation.md, real_v4.md, real_v4_p3.md under eval/cluster_out/")

if __name__ == "__main__":
    main()
