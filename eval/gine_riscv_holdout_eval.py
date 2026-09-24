#!/usr/bin/env python3
"""gine_riscv_holdout_eval.py — score GINE checkpoints trained on x86_64+arm64
ONLY on the held-out, real-compiled riscv64 corpus.

Why this exists (not spec/eval_riscv_real.py): that script rebuilds the model
from a hard-coded subset of the checkpoint's args — it ignores arch_mode,
use_handcrafted, taint_mode, mem_order_edges and cfg_spec_edges, so an
ablation checkpoint (--arch-mode drop, --no-handcrafted, ...) either fails
load_state_dict or is silently scored with the wrong graph construction.
This evaluator rebuilds dataset + model from the FULL saved args.

It also refuses to score a checkpoint whose training data contained riscv64
(the whole point is a held-out ISA), and reports the metrics that matter for
a benign-dominated test set — accuracy alone is below the always-BENIGN
baseline here, so it is never the headline:

  * per-class recall (+ support, low-support flag)
  * benign false-positive rate  (BENIGN predicted as any attack)
  * attack detection rate       (attack predicted as ANY attack class —
                                  the binary "is this a gadget" signal the
                                  generator's reward consumes)
  * macro-F1 over the classes present in the held-out set
  * cluster-bootstrap (source-family) 95% CIs, eval/group_stats.py

Degenerate stubs (<= --stub-max instructions; the compiler deleted the gadget
at -O2, eval/audit_riscv_labels.py check C) are excluded, matching
eval/leave_one_isa_out.py so GINE and RF numbers are on the same 252 records.

Run:
  python3 eval/gine_riscv_holdout_eval.py --ckpt eval/cluster_out/rv_embed_s42/gine_best.pt \
      --out eval/cluster_out/rv_embed_s42/riscv_holdout.json
"""
from __future__ import annotations

import argparse
import json
import sys
from collections import Counter
from pathlib import Path

import numpy as np
import torch

ROOT = Path(__file__).resolve().parent.parent
sys.path.insert(0, str(ROOT / "eval"))
from group_stats import cluster_bootstrap_ci, effective_n, group_of  # noqa: E402

# v54/ and v56/ ship same-named modules (train_gine_v38, gine_classifier_v38);
# which one a checkpoint needs depends on its node_feature_mode, so the import
# is deferred to _use_impl() and every checkpoint in one run must share it.
#   hand            -> v54 (has arch_mode / no_handcrafted / taint / edge flags)
#   learned | both  -> v56 (MultiArchTokenizer.for_arch per-record tokenisation,
#                           the path v56_multiseed learned/both were trained with)
_IMPL = None
GINEDatasetV47 = collate_fn = select_device = GINEClassifier = NUM_EDGE_TYPES = None


def _use_impl(name: str):
    global _IMPL, GINEDatasetV47, collate_fn, select_device, GINEClassifier, NUM_EDGE_TYPES
    if _IMPL == name:
        return
    if _IMPL is not None:
        raise SystemExit(f"mixed checkpoint families ({_IMPL} vs {name}) in one run — "
                         f"score hand and learned checkpoints in separate invocations")
    sys.path.insert(0, str(ROOT / name))
    sys.path.insert(0, str(ROOT / "spec"))
    import train_gine_v38 as T
    import gine_classifier_v38 as G
    import pdg_builder as P
    GINEDatasetV47, collate_fn, select_device = T.GINEDatasetV47, T.collate_fn, T.select_device
    GINEClassifier, NUM_EDGE_TYPES = G.GINEClassifier, P.NUM_EDGE_TYPES
    _IMPL = name


def impl_for(ckpt_args: dict) -> str:
    """v54 saves arch_mode in its args (v56 has no such flag), so its presence
    identifies a v54-trained learned/both checkpoint — e.g. the canonical-MLM
    runs from eval/cluster/submit_riscv_holdout.sh."""
    mode = ckpt_args.get("node_feature_mode", "hand")
    if mode == "hand" or "arch_mode" in ckpt_args:
        return "v54"
    if mode in ("learned", "both"):
        return "v56"
    raise SystemExit(f"node_feature_mode={mode} needs train-set gating context "
                     f"(benign_repr_H / ensemble_ctx); not supported here")

DEFAULT_RECORDS = ROOT / "spec" / "data" / "riscv_loio_corpus.jsonl"
LOW_SUPPORT = 5


def n_instructions(seq) -> int:
    lines = seq if isinstance(seq, list) else str(seq).splitlines()
    return sum(1 for l in lines if l.strip())


def train_archs(ckpt_args: dict) -> Counter:
    """Arch composition of the checkpoint's training file (relative to v54/
    or repo root, whichever exists)."""
    p = Path(ckpt_args.get("train_data", ""))
    for cand in (p, ROOT / p, ROOT / "v54" / p):
        if cand.is_file():
            with open(cand) as f:
                return Counter(json.loads(l).get("arch", "?") for l in f if l.strip())
    return Counter()


@torch.no_grad()
def predict(model, loader, device):
    """-> (softmax probabilities [n, C], label ids)."""
    model.eval()
    probs, labels = [], []
    for b in loader:
        logits = model(b["node_features"].to(device), b["edge_index"].to(device),
                       b["edge_type"].to(device), b["node_mask"].to(device),
                       b["handcrafted"].to(device), b["global_features"].to(device),
                       b["arch_id"].to(device),
                       edge_mask=b["edge_mask"].to(device),
                       edge_weight=b["edge_weight"].to(device))
        probs.append(torch.softmax(logits, 1).cpu().numpy())
        labels += b["label"].cpu().tolist()
    return np.concatenate(probs), labels


def train_len_p90(ckpt_args: dict) -> int:
    """p90 instruction count of the checkpoint's training file — the window
    size that keeps inference inside the training size regime."""
    p = Path(ckpt_args.get("train_data", ""))
    for cand in (p, ROOT / p, ROOT / "v54" / p):
        if cand.is_file():
            n = [n_instructions(json.loads(l)["sequence"]) for l in open(cand) if l.strip()]
            return int(np.percentile(n, 90))
    raise SystemExit(f"can't find train_data {p} to size windows; pass --window-len")


def metrics(y, p, groups) -> dict:
    benign = y == "BENIGN"
    attack = ~benign
    out = {
        "accuracy": ci((y == p).astype(float), groups),
        "benign_fp_rate": ci((p[benign] != "BENIGN").astype(float), groups[benign]),
        "attack_detection_rate": ci((p[attack] != "BENIGN").astype(float), groups[attack]),
        "per_class": {},
        "pred_distribution": dict(Counter(p.tolist())),
        "records": [{"group": g, "true": t, "pred": q} for g, t, q in zip(groups, y, p)],
    }
    f1s = []
    for c in sorted(set(y)):
        m = y == c
        rec = ci((p[m] == c).astype(float), groups[m])
        tp = int(((p == c) & m).sum())
        prec = tp / max(int((p == c).sum()), 1)
        r = rec["value"]
        f1 = 0.0 if tp == 0 else 2 * prec * r / (prec + r)
        f1s.append(f1)
        out["per_class"][c] = {"recall": rec, "precision": prec, "f1": f1,
                               "support": int(m.sum()),
                               "low_support": bool(m.sum() < LOW_SUPPORT)}
    out["macro_f1"] = float(np.mean(f1s))
    return out


def ci(values, groups):
    p, lo, hi = cluster_bootstrap_ci(values, groups)
    return {"value": p, "ci_lo": lo, "ci_hi": hi, "n": int(len(values))}


def score(ckpt_path: Path, records: list, device, allow_riscv_train: bool,
          window_len=None, ks=(0.5,)) -> dict:
    ckpt = torch.load(ckpt_path, map_location=device, weights_only=False)
    a = ckpt["args"]
    label_to_id = ckpt["label_to_id"]
    id_to_label = {i: l for l, i in label_to_id.items()}

    archs = train_archs(a)
    if archs.get("riscv64", 0) and not allow_riscv_train:
        raise SystemExit(f"{ckpt_path}: training data {a.get('train_data')} contains "
                         f"{archs['riscv64']} riscv64 records — not a held-out-ISA "
                         f"checkpoint (pass --allow-riscv-train to score anyway)")
    mode = a.get("node_feature_mode", "hand")
    _use_impl(impl_for(a))

    recs = [r for r in records if r["label"] in label_to_id]
    ds_kw = dict(speculative_window=a["speculative_window"],
                 strip_bp=not a["no_strip"],
                 node_feature_mode=mode,
                 use_spec_builder=a["use_spec_builder"])
    oov = None
    if _IMPL == "v54":
        # v54's dataset takes the edge/taint/NOP knobs in every node mode.
        ds_kw.update(taint_mode=a.get("taint_mode", "shift"),
                     mem_order_edges=a.get("mem_order_edges", False),
                     cfg_spec_edges=a.get("cfg_spec_edges", False))
        if a.get("drop_nops"):           # only newer v54 datasets accept it
            ds_kw["drop_nops"] = True
    if mode != "hand":
        from train_mlm import MlmEncoder
        from asm_tokenizer import MultiArchTokenizer
        mlm_path = Path(a["mlm_path"])
        for cand in (mlm_path, ROOT / mlm_path, ROOT / "v56" / mlm_path, ROOT / "spec" / mlm_path.name):
            if cand.is_file():
                mlm_path = cand
                break
        mlm = MlmEncoder.load(str(mlm_path))
        tok_mode = getattr(mlm, "tokenizer_mode", "mnemonic")
        # Mirror the training script's tokenizer choice exactly: v56 always
        # tokenises per-arch; v54 does so only for canonical encoders and
        # otherwise uses the single base-engine AsmTokenizer.
        if _IMPL == "v54" and tok_mode not in ("canonical", "neutral"):
            from asm_tokenizer import AsmTokenizer
            from isa_spec import load_engine
            tok = AsmTokenizer(load_engine("base.json"))
            riscv_tok = tok
        else:
            tok = MultiArchTokenizer(mode=tok_mode)
            riscv_tok = tok.for_arch("riscv64")
        ds_kw.update(mlm=mlm, tokenizer=tok)
        # How much of riscv64 the encoder can even see: tokens outside its vocab.
        unk = tot = 0
        for r in recs:
            for t in riscv_tok.tokenize_sequence(r["sequence"]):
                tot += 1
                unk += t not in mlm.vocab
        oov = unk / max(tot, 1)
        print(f"  MLM {mlm_path.name}: tokenizer={getattr(mlm, 'tokenizer_mode', 'mnemonic')} "
              f"vocab={len(mlm.vocab)}  riscv64 OOV={100*oov:.1f}% of {tot} tokens")
    def make_ds(rs):
        return GINEDatasetV47(rs, label_to_id, ckpt["feature_names"], **ds_kw)

    ds = make_ds(recs)
    if len(ds) != len(recs):
        # GINEDatasetV47 drops records whose PDG fails to build; keep the
        # record list aligned with the dataset so groups line up.
        raise SystemExit(f"{ckpt_path}: {len(recs) - len(ds)} riscv records failed "
                         f"PDG build — refusing to misalign groups")
    loader = torch.utils.data.DataLoader(ds, batch_size=32, shuffle=False,
                                         collate_fn=collate_fn, num_workers=0)
    model = GINEClassifier(
        node_feat_dim=ds.node_feature_dim,
        num_edge_types=NUM_EDGE_TYPES,
        hidden_dim=a["hidden_dim"],
        num_layers=a["num_layers"],
        num_classes=len(label_to_id),
        handcrafted_dim=max(len(ckpt["feature_names"]), 1),
        global_feat_dim=5,
        arch_emb_dim=a["arch_emb_dim"],
        dropout=a["dropout"],
        use_virtual_node=not a["no_virtual_node"],
        jk_mode=a["jk_mode"],
        **({"arch_mode": a.get("arch_mode", "embed"),
            "use_handcrafted": not a.get("no_handcrafted", False)} if _IMPL == "v54" else {}),
    ).to(device)
    model.load_state_dict(ckpt["model_state_dict"])

    probs, y_ids = predict(model, loader, device)
    y = np.array([id_to_label[i] for i in y_ids])
    p = np.array([id_to_label[i] for i in probs.argmax(1)])
    groups = np.array([group_of(r) for r in recs])

    out = {
        "ckpt": str(ckpt_path),
        "train_data": a.get("train_data"),
        "train_archs": dict(archs),
        "seed": a.get("seed"),
        "node_feature_mode": mode,
        "mlm_path": a.get("mlm_path"),
        "riscv_oov_rate": oov,
        "arch_mode": a.get("arch_mode", "embed"),
        "no_handcrafted": a.get("no_handcrafted", False),
        "handcrafted_subset": a.get("handcrafted_subset", "all"),
        "n": int(len(y)),
        "n_groups": int(len(set(groups))),
        "effective_n": effective_n(groups),
        "always_benign_baseline": float((y == "BENIGN").mean()),
        **metrics(y, p, groups),
    }

    # Inference-time windowing (eval/isa_windowing.predict_windowed): slice each
    # record into training-size windows, vote among confident windows, abstain
    # to BENIGN. Window size is fixed from the TRAIN data (p90), never tuned on
    # this test set; several confidence thresholds are reported as sensitivity.
    if window_len is not None:
        from isa_windowing import predict_windowed, rewindow
        wl = train_len_p90(a) if window_len == "auto" else int(window_len)
        stride = max(1, wl // 2)
        win_recs, owner = [], []
        for i, r in enumerate(recs):
            for w in rewindow(r["sequence"], wl, stride):
                win_recs.append({**r, "sequence": w})
                owner.append(i)
        wds = make_ds(win_recs)
        if len(wds) != len(win_recs):
            raise SystemExit(f"{ckpt_path}: {len(win_recs) - len(wds)} windows failed to build")
        wprobs, _ = predict(model, torch.utils.data.DataLoader(
            wds, batch_size=64, shuffle=False, collate_fn=collate_fn, num_workers=0), device)
        per_rec = [[] for _ in recs]
        for j, i in enumerate(owner):
            per_rec[i].append((id_to_label[int(wprobs[j].argmax())], float(wprobs[j].max())))
        out["windowed"] = {"window_len": wl, "stride": stride,
                           "n_windows": len(win_recs), "by_k": {}}
        for k in ks:
            pw = []
            for i, r in enumerate(recs):
                it = iter(per_rec[i])
                pw.append(predict_windowed(None, r["sequence"], r["arch"], wl, k,
                                           stride=stride,
                                           predict_fn=lambda _w, _a, it=it: next(it)))
            m = metrics(y, np.array(pw), groups)
            m.pop("records")
            out["windowed"]["by_k"][str(k)] = m
    return out


def main(argv=None) -> int:
    ap = argparse.ArgumentParser(description=__doc__,
                                 formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument("--ckpt", required=True, nargs="+")
    ap.add_argument("--records", default=str(DEFAULT_RECORDS))
    ap.add_argument("--stub-max", type=int, default=10)
    ap.add_argument("--out", help="JSON output (one object, or a list if several ckpts)")
    ap.add_argument("--allow-riscv-train", action="store_true")
    ap.add_argument("--window-len", default=None,
                    help="also score with inference-time windowing: an int, or 'auto' "
                         "for the checkpoint's training-set p90 length")
    ap.add_argument("--k", type=float, nargs="+", default=[0.5, 0.7, 0.9],
                    help="window-confidence thresholds reported under 'windowed'")
    args = ap.parse_args(argv)

    raw = [json.loads(l) for l in open(args.records) if l.strip()]
    # keep_short marks complete gadgets that merely compile short (see
    # eval/build_riscv_heldout_v2.py); everything else keeps the stub rule.
    records = [r for r in raw
               if r.get("keep_short") or n_instructions(r["sequence"]) > args.stub_max]
    assert all(r.get("arch") == "riscv64" for r in records), "non-riscv64 record in held-out set"
    print(f"riscv64 held-out: {len(raw)} records, {len(raw) - len(records)} stubs "
          f"(<= {args.stub_max} instr) excluded -> {len(records)}; "
          f"labels {dict(Counter(r['label'] for r in records))}")

    _use_impl(impl_for(torch.load(args.ckpt[0], map_location="cpu", weights_only=False)["args"]))
    device = select_device()
    results = []
    for c in args.ckpt:
        r = score(Path(c), records, device, args.allow_riscv_train,
                  window_len=args.window_len, ks=tuple(args.k))
        results.append(r)
        pc = "  ".join(f"{k}={v['recall']['value']:.2f}(n={v['support']})"
                       for k, v in r["per_class"].items())
        print(f"\n{c}\n  mode={r['node_feature_mode']} arch_mode={r['arch_mode']} no_handcrafted={r['no_handcrafted']} "
              f"train_archs={r['train_archs']}\n"
              f"  macroF1={100*r['macro_f1']:.1f}  acc={100*r['accuracy']['value']:.1f} "
              f"(always-BENIGN {100*r['always_benign_baseline']:.1f})  "
              f"benignFP={100*r['benign_fp_rate']['value']:.1f}  "
              f"attack-detect={100*r['attack_detection_rate']['value']:.1f}\n  recall: {pc}")
        for k, m in r.get("windowed", {}).get("by_k", {}).items():
            print(f"  windowed(len={r['windowed']['window_len']}, k={k}): "
                  f"macroF1={100*m['macro_f1']:.1f}  benignFP={100*m['benign_fp_rate']['value']:.1f}  "
                  f"attack-detect={100*m['attack_detection_rate']['value']:.1f}")
    if args.out:
        Path(args.out).parent.mkdir(parents=True, exist_ok=True)
        with open(args.out, "w") as f:
            json.dump(results[0] if len(results) == 1 else results, f, indent=1)
        print(f"\n-> {args.out}")
    return 0


if __name__ == "__main__":
    sys.exit(main())
