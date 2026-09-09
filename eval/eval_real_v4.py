#!/usr/bin/env python3
"""eval/eval_real_v4.py — P2 step 2: honest G1 test — does the W4
store-forwarding edge (`--mem-order-edges`) lift SPECTRE_V4 recall on real,
hardware-confirmed V4 gadgets (not the ceilinged locked test)?

Test set: eval/data/revizor_v4_real.jsonl (16 unique real SPECTRE_V4
gadgets from the Revizor i5-8300H campaign, oracle/revizor/
convert_v4_gadgets.py). All records are label=SPECTRE_V4, so "recall" here
is simply the fraction of the 16 gadgets each checkpoint predicts as
SPECTRE_V4.

IMPORTANT gotcha this script fixes: `eval/robustness_suite.py`'s
`evaluate_checkpoint`/`_build_model` builds the dataset kwargs
(speculative_window, strip_bp, node_feature_mode, use_spec_builder) but
does NOT forward the W4 edge-ablation flags (`mem_order_edges`,
`taint_mode`, `cfg_spec_edges`) that are saved in a checkpoint's `args`
dict. Those flags change graph *construction* (whether store->load
mem-order edges exist at all), not just model weights. Calling
robustness_suite.evaluate_checkpoint directly on an "edge ON" checkpoint
would silently reconstruct its test graphs WITHOUT the mem-order edges it
was trained with, and score it as if the edge were off -- exactly the bug
this evaluation exists to avoid. This script instead builds each
checkpoint's dataset with the mem_order_edges/taint_mode/cfg_spec_edges
values recorded in its own checkpoint `args`, so ON checkpoints are scored
with their edges present and OFF checkpoints with their edges absent, per
the recipe each was actually trained on.

Usage:
    python3 eval/eval_real_v4.py
    python3 eval/eval_real_v4.py --test eval/data/revizor_v4_real.jsonl \
        --on-ckpts eval/w4/memedge_s42/gine_best.pt ... \
        --off-ckpts eval/w2/viz_s42/gine_best.pt ...
"""
from __future__ import annotations

import argparse
import math
import sys
from pathlib import Path
from typing import Dict, List

import torch

ROOT = Path(__file__).resolve().parent.parent
sys.path.insert(0, str(ROOT))
sys.path.insert(0, str(ROOT / "v54"))
sys.path.insert(0, str(ROOT / "spec"))

from train_gine_v38 import GINEDatasetV47, collate_fn  # noqa: E402

from eval.robustness_suite import _load_records, _build_model, _eval_probs  # noqa: E402

DEFAULT_TEST = "eval/data/revizor_v4_real.jsonl"
DEFAULT_ON_CKPTS = [
    "eval/w4/memedge_s42/gine_best.pt",
    "eval/w4/memedge_s1/gine_best.pt",
    "eval/w4/memedge_s7/gine_best.pt",
]
DEFAULT_OFF_CKPTS = [
    "eval/w2/viz_s42/gine_best.pt",
    "eval/w2/viz_s1/gine_best.pt",
    "eval/w2/viz_s7/gine_best.pt",
]


def evaluate_real_v4(ckpt_path: str, test_jsonl: str = DEFAULT_TEST) -> Dict:
    """Score one checkpoint's SPECTRE_V4 recall on the real-V4 test set,
    using the checkpoint's OWN mem_order_edges/taint_mode/cfg_spec_edges
    (not robustness_suite's defaults -- see module docstring)."""
    device = torch.device("cpu")
    ckpt = torch.load(ckpt_path, map_location=device, weights_only=False)
    model, label_to_id, feature_names, ds_kwargs = _build_model(ckpt, device)

    ckpt_args = ckpt.get("args") or {}
    ds_kwargs = dict(ds_kwargs)
    ds_kwargs["mem_order_edges"] = ckpt_args.get("mem_order_edges", False)
    ds_kwargs["taint_mode"] = ckpt_args.get("taint_mode", "shift")
    ds_kwargs["cfg_spec_edges"] = ckpt_args.get("cfg_spec_edges", False)

    if "SPECTRE_V4" not in label_to_id:
        raise ValueError(f"{ckpt_path}: checkpoint has no SPECTRE_V4 class")
    v4_id = label_to_id["SPECTRE_V4"]

    records = _load_records(test_jsonl)
    records = [r for r in records if r.get("label") in label_to_id]
    if not records:
        return {"n": 0, "v4_recall": float("nan"), "mem_order_edges": ds_kwargs["mem_order_edges"]}

    dataset = GINEDatasetV47(records, label_to_id, feature_names, **ds_kwargs)
    if len(dataset) == 0:
        return {"n": 0, "v4_recall": float("nan"), "mem_order_edges": ds_kwargs["mem_order_edges"]}

    loader = torch.utils.data.DataLoader(
        dataset, batch_size=32, shuffle=False, collate_fn=collate_fn
    )
    _, preds, labels = _eval_probs(model, loader, device)

    mask = labels == v4_id
    n = int(mask.sum())
    if n == 0:
        return {"n": 0, "v4_recall": float("nan"), "mem_order_edges": ds_kwargs["mem_order_edges"]}
    recall = float((preds[mask] == v4_id).mean())
    return {"n": n, "v4_recall": recall, "mem_order_edges": ds_kwargs["mem_order_edges"]}


def _mean_ci95(vals: List[float]):
    """Mean + 95% CI half-width (normal approx over the seed sample; small
    n=3 here, so treat the CI as indicative, not a tight bound)."""
    vals = [v for v in vals if v == v]  # drop NaN
    if not vals:
        return float("nan"), float("nan")
    m = sum(vals) / len(vals)
    if len(vals) < 2:
        return m, 0.0
    var = sum((v - m) ** 2 for v in vals) / (len(vals) - 1)
    se = math.sqrt(var) / math.sqrt(len(vals))
    return m, 1.96 * se


def main():
    ap = argparse.ArgumentParser(description=__doc__,
                                  formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument("--test", default=DEFAULT_TEST)
    ap.add_argument("--on-ckpts", nargs="+", default=DEFAULT_ON_CKPTS)
    ap.add_argument("--off-ckpts", nargs="+", default=DEFAULT_OFF_CKPTS)
    ap.add_argument("--out-md", default=str(ROOT / "eval" / "w4" / "real_v4_recall.md"))
    args = ap.parse_args()

    on_results, off_results = [], []
    for ck in args.on_ckpts:
        r = evaluate_real_v4(ck, args.test)
        print(f"ON  {ck}: n={r['n']} mem_order_edges={r['mem_order_edges']} "
              f"v4_recall={r['v4_recall']:.4f}")
        on_results.append(r)
    for ck in args.off_ckpts:
        r = evaluate_real_v4(ck, args.test)
        print(f"OFF {ck}: n={r['n']} mem_order_edges={r['mem_order_edges']} "
              f"v4_recall={r['v4_recall']:.4f}")
        off_results.append(r)

    on_vals = [r["v4_recall"] for r in on_results]
    off_vals = [r["v4_recall"] for r in off_results]
    on_mean, on_ci = _mean_ci95(on_vals)
    off_mean, off_ci = _mean_ci95(off_vals)

    if not on_vals or not off_vals or on_mean != on_mean or off_mean != off_mean:
        verdict = "UNDETERMINED — missing checkpoints or empty test set"
    elif on_mean == off_mean:
        state = "both fail completely" if on_mean == 0.0 else "both already saturate"
        verdict = (f"NO — ON and OFF are identical ({on_mean:.4f}); the store-forwarding "
                   f"edge has zero measurable effect on real-V4 recall ({state})")
    else:
        diff = on_mean - off_mean
        if abs(diff) <= (on_ci + off_ci):
            verdict = "WITHIN NOISE — cannot claim the store-forwarding edge lifts real-V4 recall"
        elif diff > 0:
            verdict = "LIFT — the store-forwarding edge (mem_order_edges) raises real-V4 recall"
        else:
            verdict = "REGRESSION — the store-forwarding edge lowers real-V4 recall on real gadgets"

    n_gadgets = next((r["n"] for r in on_results + off_results if r["n"]), 0)

    lines = [
        "# Real-V4 recall: W4 store-forwarding edge, ON vs OFF",
        "",
        f"Test set: `{args.test}` ({n_gadgets} real hardware-confirmed SPECTRE_V4 "
        "gadgets, Revizor i5-8300H campaign, `oracle/revizor/convert_v4_gadgets.py`).",
        "",
        "This is the honest G1 test: the W4 locked-test edge-ablation showed V4 "
        "recall ON==OFF (0.995) only because the locked test's V4 was already at "
        "ceiling after W2 de-shortcutting. These 16 gadgets never touched training "
        "or the locked test — they are the first real held-out V4 measurement.",
        "",
        "| condition | seeds | mean V4 recall | 95% CI (±) |",
        "|---|---|---|---|",
        f"| ON (`--mem-order-edges`, eval/w4/memedge_s*) | {len(on_vals)} | {on_mean:.4f} | {on_ci:.4f} |",
        f"| OFF (baseline, eval/w2/viz_s*) | {len(off_vals)} | {off_mean:.4f} | {off_ci:.4f} |",
        "",
        f"**Verdict: {verdict}**",
        "",
        "Per-checkpoint detail:",
    ]
    for ck, r in zip(args.on_ckpts, on_results):
        lines.append(f"- ON  `{ck}`: n={r['n']}, recall={r['v4_recall']:.4f}")
    for ck, r in zip(args.off_ckpts, off_results):
        lines.append(f"- OFF `{ck}`: n={r['n']}, recall={r['v4_recall']:.4f}")
    lines.append("")

    out_path = Path(args.out_md)
    out_path.parent.mkdir(parents=True, exist_ok=True)
    out_path.write_text("\n".join(lines) + "\n")
    print(f"\nWrote {out_path}")


if __name__ == "__main__":
    main()
