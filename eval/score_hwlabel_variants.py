#!/usr/bin/env python3
"""score_hwlabel_variants.py — score the locked GINE detector on the
hardware-labelled fenced-variant dataset (Revizor i5-8300H).

What this answers
-----------------
Each base gadget appears as several *variants* that are byte-for-byte close but
differ in where a fence sits (or how control flow is perturbed). Every variant
was run x3 on real silicon: `vulnerable` = violation in 3/3, mitigated = 0/3.
Crucially **every variant — vulnerable and mitigated alike — contains a fence**
(the vulnerable ones have it on a dead path, before the branch, or after the
transmit). So a detector that keys on "is there an lfence" or on the opcode
histogram CANNOT separate the two arms; only one that encodes fence *position*
relative to the speculative load/branch can. This is the shortcut-vs-mechanism
test, and the anti-shortcut control is intrinsic to the data.

Leakage
-------
Pre-flight (separately verified) established 0 exact-sequence overlap and 0
Revizor `%r14`+mask fingerprint between these gadgets and the classifier's
v54 train+test. The detector has never seen this distribution, so this is a
clean out-of-distribution generalisation test.

Anti-bias guards built in
-------------------------
1. REPRODUCE GATE (hard abort). Before scoring a single variant we rebuild the
   exact v54 test set through the same pipeline and assert the model reproduces
   its recorded locked test accuracy (0.9526946…). If the preprocessing has
   drifted since the checkpoint was trained, the gate fails and we refuse to
   report variant numbers — a drifted pipeline would make them meaningless.
2. FLIP METRIC, not aggregate accuracy. The HW gadgets are a different
   distribution than training; raw accuracy would conflate distribution shift
   with mechanism. Within a matched base gadget the vulnerable and mitigated
   variants share identical sandboxing and body, differing only by fence
   position — so per-base flip accuracy isolates fence-sensitivity, and the
   shift hits both arms equally.
3. FENCE-COUNT FLOOR. We also score the dumbest position-blind baseline
   (predict BENIGN iff fence_count ≥ per-class median). If GINE does not beat
   this floor, any "it understands fences" claim is unearned.
4. Deterministic eval: model.eval(), no_grad, fixed seeds, no shuffle. The
   label→id map is rebuilt from the TRAIN labels only (sorted) and asserted
   equal to the checkpoint's recorded 10-class ordering.

Run on the cluster (needs torch + torch_geometric + the spec engine). See
eval/score_hwlabel_variants.sbatch.
"""
from __future__ import annotations
import argparse
import json
import re
import sys
import statistics
from collections import Counter, defaultdict
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
sys.path.insert(0, str(ROOT / "v54"))
sys.path.insert(0, str(ROOT / "spec"))

import numpy as np  # noqa: E402
import torch  # noqa: E402
from torch.utils.data import DataLoader  # noqa: E402

# Reuse the EXACT training pipeline — do not reimplement graph construction.
from train_gine_v38 import (  # noqa: E402
    GINEDatasetV47, collate_fn, GLOBAL_FEAT_DIM, DEVICE,
)
from gine_classifier_v38 import GINEClassifier, ARCH_VOCAB  # noqa: E402
from pdg_builder import NUM_EDGE_TYPES  # noqa: E402
from inline_features import get_feature_names  # noqa: E402

# The class ordering every v54 10-class checkpoint uses (sorted train labels).
# label_to_id rebuilt from train labels MUST equal this, or argmax→name is wrong.
EXPECTED_CLASSES = [
    "BENIGN", "BRANCH_HISTORY_INJECTION", "INCEPTION", "L1TF", "MDS",
    "RETBLEED", "SPECTRE_RSB", "SPECTRE_V1", "SPECTRE_V2", "SPECTRE_V4",
]

# Reproduce-defaults for flags a run's metrics.json may not record (older runs
# predate the flag). These values reproduce the original SpecBackedPDGBuilder
# construction per the GINEDatasetV47 docstring. If a run DID record a flag we
# use its recorded value; this only fills genuine absences.
_W4_DEFAULTS = dict(taint_mode="shift", mem_order_edges=False,
                    cfg_spec_edges=False, drop_nops=False)


def load_run_config(metrics_path: Path):
    """Read a run's gine_metrics.json → (expected_acc, model_cfg, ds_kw,
    handcrafted_subset). Config comes from the CHECKPOINT ITSELF, not hardcoded,
    so the gate is meaningful for any checkpoint and no config bias is injected."""
    m = json.loads(metrics_path.read_text())
    a = m.get("args", {})
    expected = m["test_accuracy"]
    model_cfg = dict(
        hidden_dim=a.get("hidden_dim", 128),
        num_layers=a.get("num_layers", 3),
        jk_mode=a.get("jk_mode", "cat"),
        arch_emb_dim=a.get("arch_emb_dim", m.get("arch_emb_dim", 8)),
        dropout=a.get("dropout", 0.5),
        arch_mode=a.get("arch_mode", "embed"),
        use_virtual_node=not a.get("no_virtual_node", False),
        use_handcrafted=not a.get("no_handcrafted", False),
    )
    ds_kw = dict(
        speculative_window=a.get("speculative_window", 20),
        strip_bp=not a.get("no_strip", False),
        node_feature_mode=a.get("node_feature_mode", "hand"),
        use_spec_builder=a.get("use_spec_builder", True),
        taint_mode=a.get("taint_mode", _W4_DEFAULTS["taint_mode"]),
        mem_order_edges=a.get("mem_order_edges", _W4_DEFAULTS["mem_order_edges"]),
        cfg_spec_edges=a.get("cfg_spec_edges", _W4_DEFAULTS["cfg_spec_edges"]),
        drop_nops=a.get("drop_nops", _W4_DEFAULTS["drop_nops"]),
    )
    return expected, model_cfg, ds_kw, a.get("handcrafted_subset", "all")

FENCE_TOKENS = ("lfence", "mfence", "sfence", "dsb", "isb", "csdb")
_BASE_RE = re.compile(r"violation-\d{6}-\d{6}")


def load_jsonl(p: Path) -> list[dict]:
    return [json.loads(l) for l in open(p) if l.strip()]


def build_model(num_classes: int, handcrafted_dim: int, node_feat_dim: int,
                model_cfg: dict):
    model = GINEClassifier(
        node_feat_dim=node_feat_dim,
        num_edge_types=NUM_EDGE_TYPES,
        num_classes=num_classes,
        handcrafted_dim=max(handcrafted_dim, 1),
        global_feat_dim=GLOBAL_FEAT_DIM,
        **model_cfg,
    ).to(DEVICE)
    return model


@torch.no_grad()
def predict(model, dataset) -> tuple[np.ndarray, np.ndarray]:
    """Return (pred_ids, softmax_probs) in dataset order. Deterministic."""
    model.eval()
    loader = DataLoader(dataset, batch_size=32, shuffle=False,
                        collate_fn=collate_fn, num_workers=0)
    all_pred, all_prob = [], []
    for batch in loader:
        node_features = batch['node_features'].to(DEVICE)
        edge_index = batch['edge_index'].to(DEVICE)
        edge_type = batch['edge_type'].to(DEVICE)
        node_mask = batch['node_mask'].to(DEVICE)
        handcrafted = batch['handcrafted'].to(DEVICE)
        global_features = batch['global_features'].to(DEVICE)
        arch_id = batch['arch_id'].to(DEVICE)
        edge_weight = batch['edge_weight'].to(DEVICE)
        edge_mask = batch['edge_mask'].to(DEVICE)
        # identical call to train_gine_v38.evaluate()
        logits = model(node_features, edge_index, edge_type, node_mask,
                       handcrafted, global_features, arch_id,
                       edge_mask=edge_mask, edge_weight=edge_weight)
        prob = torch.softmax(logits, dim=1)
        all_pred.extend(logits.argmax(dim=1).cpu().tolist())
        all_prob.extend(prob.cpu().tolist())
    return np.array(all_pred), np.array(all_prob)


def reproduce_gate(model, label_to_id, feature_names, test_path: Path,
                   ds_kw: dict, expected_acc: float, tol: float) -> float:
    """Rebuild v54 test set through the identical pipeline; assert the model
    reproduces its own recorded accuracy. Hard abort on drift."""
    recs = [r for r in load_jsonl(test_path)
            if r.get("label", "UNKNOWN") in label_to_id]
    ds = GINEDatasetV47(recs, label_to_id, feature_names, **ds_kw)
    preds, _ = predict(model, ds)
    y = np.array([label_to_id[r["label"]] for r in recs])
    acc = float((preds == y).mean())
    print(f"[gate] v54 test reproduce accuracy = {acc:.10f} "
          f"(expected {expected_acc:.10f}, |Δ|={abs(acc-expected_acc):.2e})")
    if abs(acc - expected_acc) > tol:
        print(f"[gate] FAIL: pipeline drifted beyond tol={tol}. "
              f"Variant scores would be meaningless; refusing to report them.",
              file=sys.stderr)
        sys.exit(2)
    print("[gate] PASS: preprocessing is faithful to this checkpoint.")
    return acc


def base_id(rec: dict) -> str:
    m = _BASE_RE.search(rec.get("src_path") or rec.get("group") or "")
    tag = m.group(0) if m else (rec.get("group") or "?")
    return f"{rec['vuln_class']}::{tag}"


def fence_count(seq: list[str]) -> int:
    return sum(1 for l in seq if any(t in l.lower() for t in FENCE_TOKENS))


def main(argv=None) -> int:
    ap = argparse.ArgumentParser(description=__doc__,
                                 formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument("--checkpoint", default=str(ROOT / "v54/viz_v54_spec/gine_best.pt"))
    ap.add_argument("--metrics", default=None,
                    help="run's gine_metrics.json (config + expected acc); "
                         "defaults to gine_metrics.json beside --checkpoint")
    ap.add_argument("--train-data", default=str(ROOT / "v54/data/v54_train.jsonl"),
                    help="only for rebuilding the label vocab (sorted train labels)")
    ap.add_argument("--test-data", default=str(ROOT / "v54/data/v54_test.jsonl"),
                    help="the reproduce-gate set")
    ap.add_argument("--variants", default=str(ROOT / "eval/data/revizor_hwlabel_variants.jsonl"))
    ap.add_argument("--out-dir", default=str(ROOT / "eval/hwlabel_variants"))
    ap.add_argument("--acc-tol", type=float, default=1e-3)
    ap.add_argument("--skip-gate", action="store_true",
                    help="DEBUG ONLY. Scores become untrustworthy; never use for a reported number.")
    args = ap.parse_args(argv)

    torch.manual_seed(42)
    np.random.seed(42)

    # ---- label vocab from TRAIN only, asserted against the checkpoint ----
    train_labels = sorted({r["label"] for r in load_jsonl(Path(args.train_data))
                           if r.get("label", "UNKNOWN") != "UNKNOWN"})
    label_to_id = {l: i for i, l in enumerate(train_labels)}
    id_to_label = {i: l for l, i in label_to_id.items()}
    if train_labels != EXPECTED_CLASSES:
        print(f"ERROR: train label ordering {train_labels} != checkpoint's "
              f"{EXPECTED_CLASSES}. argmax→name would be wrong.", file=sys.stderr)
        return 3

    # ---- config from the checkpoint's OWN metrics (no hardcoding) ----
    metrics_path = Path(args.metrics) if args.metrics else Path(args.checkpoint).with_name("gine_metrics.json")
    expected_acc, model_cfg, ds_kw, hc_subset = load_run_config(metrics_path)
    if hc_subset == "neutral":
        from inline_features import NEUTRAL_FEATURES
        feature_names = list(NEUTRAL_FEATURES)
    else:
        feature_names = get_feature_names()
    print(f"config from {metrics_path.name}: expected_acc={expected_acc:.6f} "
          f"hc_subset={hc_subset} dim={len(feature_names)}")
    print(f"  model_cfg={model_cfg}")
    print(f"  ds_kw={ds_kw}")

    # ---- model ----
    ckpt = torch.load(args.checkpoint, map_location=DEVICE, weights_only=False)
    state = ckpt["model_state_dict"] if "model_state_dict" in ckpt else ckpt
    probe = GINEDatasetV47(load_jsonl(Path(args.test_data))[:1], label_to_id,
                           feature_names, **ds_kw)
    model = build_model(len(train_labels), len(feature_names),
                        probe.node_feature_dim, model_cfg)
    model.load_state_dict(state)
    print(f"Loaded {args.checkpoint}  classes={len(train_labels)} "
          f"node_feat_dim={probe.node_feature_dim} params={sum(p.numel() for p in model.parameters()):,}")

    # ---- anti-bias guard: reproduce this checkpoint's recorded test accuracy ----
    if not args.skip_gate:
        reproduce_gate(model, label_to_id, feature_names,
                       Path(args.test_data), ds_kw, expected_acc, args.acc_tol)
    else:
        print("[gate] SKIPPED (--skip-gate): results are NOT trustworthy.")

    # ---- score the variants ----
    variants = load_jsonl(Path(args.variants))
    for r in variants:
        r.setdefault("arch", "x86_64")
        r["source_file"] = r.get("src_path", r.get("group", "revizor_hw"))
    vds = GINEDatasetV47(variants, label_to_id, feature_names, **ds_kw)
    preds, probs = predict(model, vds)
    benign_id = label_to_id["BENIGN"]

    rows = []
    for r, pid, prob in zip(variants, preds, probs):
        hw_leak = (r["label"] != "BENIGN")
        model_leak = (int(pid) != benign_id)
        rows.append(dict(
            base=base_id(r), vuln_class=r["vuln_class"], variant=r["variant"],
            hw_label=r["label"], pred=id_to_label[int(pid)],
            hw_leak=hw_leak, model_leak=model_leak,
            p_benign=float(prob[benign_id]),
            fence=fence_count(r["sequence"]), n_instr=len(r["sequence"]),
        ))

    # ---- metrics ----
    def rate(sel, pred_attr="model_leak", want=True):
        xs = [x[pred_attr] for x in rows if sel(x)]
        return (sum(1 for v in xs if v == want) / len(xs), len(xs)) if xs else (float("nan"), 0)

    vuln_recall, n_v = rate(lambda x: x["hw_leak"], want=True)           # model flags HW-vulnerable
    benign_spec, n_b = rate(lambda x: not x["hw_leak"], want=False)      # model clears HW-mitigated

    # per-variant-type breakdown
    byvar = {}
    for vtype in sorted({x["variant"] for x in rows}):
        g = [x for x in rows if x["variant"] == vtype]
        hw_vuln = g[0]["hw_leak"] if len({x["hw_leak"] for x in g}) == 1 else None
        model_leak_rate = sum(x["model_leak"] for x in g) / len(g)
        # "correct" = model agrees with HW on the leak/benign call
        correct = sum(1 for x in g if x["model_leak"] == x["hw_leak"]) / len(g)
        byvar[vtype] = dict(n=len(g), hw_all_vuln=hw_vuln,
                            model_leak_rate=round(model_leak_rate, 3),
                            agree_with_hw=round(correct, 3),
                            mean_p_benign=round(statistics.mean(x["p_benign"] for x in g), 3))

    # per-base flip: separation of model_leak between the HW-vuln and HW-benign arms
    bybase = defaultdict(list)
    for x in rows:
        bybase[x["base"]].append(x)
    flips = {"both_arms": 0, "mean_separates": 0, "strict_separates": 0, "wrong_direction": 0}
    base_detail = []
    for b, g in bybase.items():
        vuln = [x for x in g if x["hw_leak"]]
        ben = [x for x in g if not x["hw_leak"]]
        if not (vuln and ben):
            continue
        flips["both_arms"] += 1
        mv = statistics.mean(x["model_leak"] for x in vuln)
        mb = statistics.mean(x["model_leak"] for x in ben)
        if mv > mb:
            flips["mean_separates"] += 1
        if mb > mv:
            flips["wrong_direction"] += 1
        if all(x["model_leak"] for x in vuln) and all(not x["model_leak"] for x in ben):
            flips["strict_separates"] += 1
        base_detail.append(dict(base=b, n_vuln=len(vuln), n_benign=len(ben),
                                leak_rate_vuln=round(mv, 3), leak_rate_benign=round(mb, 3)))

    # exact-class on the vulnerable arm
    exact = {"n": 0, "correct": 0, "confusion": Counter()}
    for x in rows:
        if x["hw_leak"]:
            exact["n"] += 1
            exact["correct"] += int(x["pred"] == x["hw_label"])
            exact["confusion"][f'{x["hw_label"]}->{x["pred"]}'] += 1

    # fence-count floor baseline: predict BENIGN iff fence >= per-class median
    med = {}
    for cls in {x["vuln_class"] for x in rows}:
        fs = [x["fence"] for x in rows if x["vuln_class"] == cls]
        med[cls] = statistics.median(fs)
    floor_flips = {"both_arms": 0, "mean_separates": 0}
    for b, g in bybase.items():
        vuln = [x for x in g if x["hw_leak"]]
        ben = [x for x in g if not x["hw_leak"]]
        if not (vuln and ben):
            continue
        floor_flips["both_arms"] += 1
        fl = lambda x: x["fence"] < med[x["vuln_class"]]  # leak iff FEWER fences than median
        mv = statistics.mean(fl(x) for x in vuln)
        mb = statistics.mean(fl(x) for x in ben)
        if mv > mb:
            floor_flips["mean_separates"] += 1

    summary = dict(
        n_variants=len(rows), n_bases_with_both_arms=flips["both_arms"],
        vuln_arm_recall=dict(rate=round(vuln_recall, 4), n=n_v),
        benign_arm_specificity=dict(rate=round(benign_spec, 4), n=n_b),
        per_base_flip=dict(
            mean_separates=flips["mean_separates"],
            strict_separates=flips["strict_separates"],
            wrong_direction=flips["wrong_direction"],
            of_bases=flips["both_arms"],
            mean_separates_frac=round(flips["mean_separates"] / flips["both_arms"], 4) if flips["both_arms"] else None,
            strict_separates_frac=round(flips["strict_separates"] / flips["both_arms"], 4) if flips["both_arms"] else None,
        ),
        fence_count_floor=dict(
            mean_separates=floor_flips["mean_separates"], of_bases=floor_flips["both_arms"],
            mean_separates_frac=round(floor_flips["mean_separates"] / floor_flips["both_arms"], 4) if floor_flips["both_arms"] else None,
        ),
        exact_class_on_vuln_arm=dict(n=exact["n"],
                                     acc=round(exact["correct"] / exact["n"], 4) if exact["n"] else None),
        per_variant=byvar,
        fence_median_per_class=med,
        reproduce_gate=dict(expected=expected_acc, skipped=args.skip_gate),
    )

    out = Path(args.out_dir)
    out.mkdir(parents=True, exist_ok=True)
    (out / "score.json").write_text(json.dumps(
        dict(summary=summary, bases=base_detail,
             confusion=dict(exact["confusion"].most_common())), indent=2))
    (out / "rows.jsonl").write_text("\n".join(json.dumps(r) for r in rows) + "\n")
    _write_md(out / "score.md", summary, exact, byvar, flips, floor_flips)
    print(json.dumps(summary, indent=2))
    print(f"\nwrote {out}/score.json, score.md, rows.jsonl")
    return 0


def _write_md(path, s, exact, byvar, flips, floor_flips):
    L = []
    L.append("# GINE detector on HW-labelled fenced variants (i5-8300H)\n")
    L.append("Locked v54_spec checkpoint. **Reproduce gate: " +
             ("PASSED" if not s["reproduce_gate"]["skipped"] else "SKIPPED — untrusted") +
             f"** (target {s['reproduce_gate']['expected']:.6f}).\n")
    L.append("Clean out-of-distribution test (0 overlap, 0 Revizor fingerprint in train). "
             "Every variant contains a fence, so token/histogram shortcuts cannot separate "
             "the arms — only fence *position* can.\n")
    pb = s["per_base_flip"]
    L.append("## Per-base flip (the headline)\n")
    L.append(f"- Bases with both a vulnerable and a mitigated arm: **{s['n_bases_with_both_arms']}**")
    L.append(f"- Model's leak-call separates the arms correctly (mean): "
             f"**{pb['mean_separates']}/{pb['of_bases']} = {pb['mean_separates_frac']}**")
    L.append(f"- Strict separation (every vuln→leak AND every mitigated→benign): "
             f"**{pb['strict_separates']}/{pb['of_bases']} = {pb['strict_separates_frac']}**")
    L.append(f"- Wrong-direction (mitigated flagged more than its vulnerable sibling): "
             f"**{pb['wrong_direction']}**")
    ff = s["fence_count_floor"]
    L.append(f"- Fence-count floor baseline (position-blind): "
             f"**{ff['mean_separates']}/{ff['of_bases']} = {ff['mean_separates_frac']}** "
             f"— GINE must beat this to claim it uses structure, not fence count.\n")
    L.append("## Leak-call rates\n")
    L.append(f"- Vulnerable arm recall (flags HW-vulnerable): "
             f"{s['vuln_arm_recall']['rate']} (n={s['vuln_arm_recall']['n']})")
    L.append(f"- Mitigated arm specificity (clears HW-mitigated): "
             f"{s['benign_arm_specificity']['rate']} (n={s['benign_arm_specificity']['n']})")
    ec = s["exact_class_on_vuln_arm"]
    L.append(f"- Exact-class acc on vulnerable arm: {ec['acc']} (n={ec['n']})\n")
    L.append("## Per variant type\n")
    L.append("| variant | n | HW | model leak-rate | agree w/ HW | mean P(benign) |")
    L.append("|---|---:|---|---:|---:|---:|")
    for v, d in sorted(byvar.items()):
        hw = "vuln" if d["hw_all_vuln"] else ("benign" if d["hw_all_vuln"] is False else "mixed")
        L.append(f"| {v} | {d['n']} | {hw} | {d['model_leak_rate']} | {d['agree_with_hw']} | {d['mean_p_benign']} |")
    L.append("\n*HW = what 3/3 hardware runs said. Vulnerable variants (entry/tail/cf_*) "
             "all carry a fence too — just in a position that does not block the leak.*\n")
    path.write_text("\n".join(L) + "\n")


if __name__ == "__main__":
    raise SystemExit(main())
