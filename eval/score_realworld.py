#!/usr/bin/env python3
"""score_realworld.py -- score a GINE checkpoint (and simple bars) on the
real-world evaluation set eval/data/realworld_*.jsonl (published PoCs and
benchmarks, Linux fix-commit pairs, vendor samples, held-out Debian benign).

Ground truth: leak = label != "BENIGN". Function-level call from window-level
output: leak score = max over windows of 1 - p_benign; predicted leak iff ANY
window's argmax != BENIGN. Windows are realworld.records.windows (25-45 instr,
stride 10), the same windowing the data collectors use.

Bars (scored on exactly the same rows as the model):
  always_attack  every row is a leak
  fence_count    leak iff the function contains no fence token
  opcode_lr      eval/shared_config.opcode_lr_preds fit on the model's own
                 training pool (--train-pool, ruling R4), applied per window,
                 any window != BENIGN -> leak
  mechanism_v2   eval/mechanism/hybrid.hybrid_pred (rule v2) on the whole
                 function. Class = vuln_class, else a non-BENIGN label; rows
                 with no known class (BENIGN, no vuln_class) are leak iff the
                 rule fires for ANY of V1/V4/MDS/L1TF. Rule abstention (None,
                 e.g. RETBLEED/V2 which it has no window for, or non-x86) is
                 counted as "safe"; the abstain count is reported.

Row handling (rulings):
  dup_of non-null  dropped from ALL metrics (R17/R25), count reported
  harness == True  reported separately, not in the headline (R18)
  train_overlap    reported separately, not in the headline
  mitigation_detected is NEVER read (R12).

Mechanism family of a row (for the per-family table):
  V1 branch = SPECTRE_V1; V4 store-bypass = SPECTRE_V4; fault/assist = MDS+L1TF;
  other = SPECTRE_V2/RETBLEED/INCEPTION/BHI. Family comes from vuln_class if
  set, else from a non-BENIGN label. A BENIGN row with no vuln_class takes the
  family of a leak row sharing its `group` (Linux pre/post pairs), otherwise
  "safe-unpaired".

CIs: 95% percentile cluster bootstrap resampling `family` (== group) clusters;
paired differences vs each bar use the same resampled clusters. One cluster ->
CI is n/a (never a 0-width interval).

torch is imported lazily and only on the checkpoint path; --bars-only and
--predictor stub:<json> run without torch / torch_geometric.
"""
from __future__ import annotations

import argparse
import glob
import json
import re
import sys
from collections import Counter, defaultdict
from pathlib import Path

import numpy as np

ROOT = Path(__file__).resolve().parent.parent
for _p in (ROOT, ROOT / "v54"):
    if str(_p) not in sys.path:
        sys.path.insert(0, str(_p))

from eval.mechanism.bars import fence_count  # noqa: E402
from eval.mechanism.hybrid import hybrid_pred  # noqa: E402
from realworld.records import windows  # noqa: E402

BARS = ("always_attack", "fence_count", "opcode_lr", "mechanism_v2")
FAMILY_OF = {"SPECTRE_V1": "V1 branch", "SPECTRE_V4": "V4 store-bypass",
             "MDS": "fault/assist", "L1TF": "fault/assist"}
MECH_PROBE = ("SPECTRE_V1", "SPECTRE_V4", "MDS", "L1TF")
DEFAULT_TRAIN_POOL = ROOT / "v54/data/v54_train.jsonl"


# ---------------------------------------------------------------- row handling
def cluster_of(r):
    return r.get("family") or r["group"]


def is_leak(r):
    return r["label"] != "BENIGN"


def partition(rows):
    """headline / harness / train_overlap, after dropping dup_of rows."""
    kept = [r for r in rows if not r.get("dup_of")]
    out = {"n_dup_dropped": len(rows) - len(kept), "headline": [], "harness": [],
           "train_overlap": []}
    for r in kept:
        if r.get("harness"):
            out["harness"].append(r)       # harness wins over overlap (R18)
        elif r.get("train_overlap"):
            out["train_overlap"].append(r)
        else:
            out["headline"].append(r)
    return out


def mech_families(rows):
    """Per-row mechanism family; see module docstring for the rule."""
    group_fam = {}
    for r in rows:
        c = r.get("vuln_class") or (r["label"] if is_leak(r) else None)
        if c:
            group_fam.setdefault(r["group"], FAMILY_OF.get(c, "other"))
    out = []
    for r in rows:
        c = r.get("vuln_class") or (r["label"] if is_leak(r) else None)
        if c:
            out.append(FAMILY_OF.get(c, "other"))
        else:
            out.append(group_fam.get(r["group"], "safe-unpaired"))
    return out


# ------------------------------------------------------------------ predictors
def windows_for(r):
    return windows(r["sequence"])


def verdicts(rows, predictor):
    """Batch function-level verdicts: {leak, score} or None if unscorable."""
    flat, owner = [], []
    for i, r in enumerate(rows):
        for w in windows_for(r):
            flat.append(w)
            owner.append(i)
    if getattr(predictor, "wants_arch", False):
        archs = [rows[i].get("arch", "x86_64") for i in owner]
        res = predictor(flat, archs=archs)
    else:
        res = predictor(flat)
    per = defaultdict(list)
    for i, x in zip(owner, res):
        if x is not None:
            per[i].append(x)
    out = []
    for i in range(len(rows)):
        xs = per.get(i)
        if not xs:
            out.append(None)
            continue
        out.append(dict(leak=any(p != "BENIGN" for p, _ in xs),
                        score=max(1.0 - pb for _, pb in xs)))
    return out


def function_verdict(r, predictor):
    return verdicts([r], predictor)[0]


def fence_bar(r):
    """leak iff no fence anywhere in the function."""
    return fence_count(r["sequence"]) == 0


def mechanism_bar(r):
    """(leak, abstained)."""
    c = r.get("vuln_class") or (r["label"] if is_leak(r) else None)
    classes = [c] if c else list(MECH_PROBE)
    abst = True
    for cls in classes:
        try:
            p = hybrid_pred(dict(sequence=r["sequence"], label=cls, vuln_class=cls))
        except Exception:
            p = None
        if p is not None:
            abst = False
            if p != "BENIGN":
                return True, False
    return False, abst


def opcode_lr_leaks(rows, train):
    from eval.shared_config import opcode_lr_preds
    flat, owner = [], []
    for i, r in enumerate(rows):
        for w in windows_for(r):
            flat.append(dict(sequence=w, label="BENIGN"))
            owner.append(i)
    preds = opcode_lr_preds(train, flat)
    leak = [False] * len(rows)
    for i, p in zip(owner, preds):
        if p != "BENIGN":
            leak[i] = True
    return leak


# ----------------------------------------------------------------- statistics
def _bal(lc, ln, sc, sn):
    with np.errstate(divide="ignore", invalid="ignore"):
        a = np.where(ln > 0, lc / np.maximum(ln, 1), np.nan)
        b = np.where(sn > 0, sc / np.maximum(sn, 1), np.nan)
    return np.nanmean(np.stack([a, b]), axis=0)


def bal_acc(truth, pred):
    t, p = np.asarray(truth, bool), np.asarray(pred, bool)
    if len(t) == 0:
        return float("nan")
    return float(_bal(np.array([(t & p).sum()]), np.array([t.sum()]),
                      np.array([(~t & ~p).sum()]), np.array([(~t).sum()]))[0])


def _group_counts(truth, pred, groups, ug):
    t, p, g = np.asarray(truth, bool), np.asarray(pred, bool), np.asarray(groups)
    m = np.zeros((len(ug), 4))
    for k, u in enumerate(ug):
        s = g == u
        m[k] = [(t & p & s).sum(), (t & s).sum(), (~t & ~p & s).sum(), (~t & s).sum()]
    return m


def cluster_boot(truth, preds, groups, n_boot=2000, seed=0, alpha=0.05, pairs=()):
    """Cluster bootstrap of balanced accuracy for each predictor in `preds`
    ({name: bool list}); `pairs` = [(a, b)] adds paired a-b differences on the
    SAME resampled clusters. Returns samples, ci, diff_ci, diff_samples."""
    ug = np.unique(np.asarray(groups))
    res = dict(samples={}, ci={}, diff_ci={}, diff_samples={}, n_groups=len(ug))
    if len(truth) == 0:
        return res
    if len(ug) < 2:
        for k in preds:
            res["samples"][k] = np.array([bal_acc(truth, preds[k])])
            res["ci"][k] = (None, None)
        for a, b in pairs:
            res["diff_ci"][(a, b)] = (None, None)
        return res
    rng = np.random.RandomState(seed)
    idx = rng.randint(0, len(ug), size=(n_boot, len(ug)))
    for k, p in preds.items():
        S = _group_counts(truth, p, groups, ug)[idx].sum(axis=1)
        v = _bal(S[:, 0], S[:, 1], S[:, 2], S[:, 3])
        res["samples"][k] = v
        lo, hi = np.nanpercentile(v, [100 * alpha / 2, 100 * (1 - alpha / 2)])
        res["ci"][k] = (float(lo), float(hi))
    for a, b in pairs:
        d = res["samples"][a] - res["samples"][b]
        res["diff_samples"][(a, b)] = d
        lo, hi = np.nanpercentile(d, [100 * alpha / 2, 100 * (1 - alpha / 2)])
        res["diff_ci"][(a, b)] = (float(lo), float(hi))
    return res


def fmt_ci(ci):
    return "n/a" if ci is None or ci[0] is None else f"[{ci[0]:.3f}, {ci[1]:.3f}]"


def _f(x):
    return "n/a" if x is None or x != x else f"{x:.3f}"


# --------------------------------------------------------------------- scoring
def _slices(rows, fams):
    out = {"all": list(range(len(rows)))}
    for key, vals in (("subset", [r.get("subset") for r in rows]),
                      ("family", fams),
                      ("arch", [r.get("arch") for r in rows])):
        for v in sorted({str(x) for x in vals}):
            out[f"{key}={v}"] = [i for i, x in enumerate(vals) if str(x) == v]
    return out


def score(rows, predictor=None, lr_train=None, n_boot=2000, seed=0):
    """Score `rows` (raw loaded records). predictor: callable(list of windows)
    -> list of (pred_label, p_benign) or None per window (None disables the
    model column: bars only)."""
    parts = partition(rows)
    out = dict(counts=dict(total=len(rows), dup_dropped=parts["n_dup_dropped"],
                           **{k: len(parts[k]) for k in ("headline", "harness", "train_overlap")}),
               slices={}, diffs={}, rows=[], unscorable=0, mech_abstain=0)
    methods = (["model"] if predictor else []) + [b for b in BARS if b != "opcode_lr" or lr_train]
    for sec in ("headline", "harness", "train_overlap"):
        rs = parts[sec]
        out["slices"][sec], out["diffs"][sec] = {}, {}
        if not rs:
            continue
        pred = {}
        if predictor:
            vs = verdicts(rs, predictor)
            keep = [i for i, v in enumerate(vs) if v is not None]
            out["unscorable"] += len(rs) - len(keep)
            rs = [rs[i] for i in keep]
            vs = [vs[i] for i in keep]
            pred["model"] = [v["leak"] for v in vs]
            scores = [v["score"] for v in vs]
        else:
            scores = [None] * len(rs)
        pred["always_attack"] = [True] * len(rs)
        pred["fence_count"] = [fence_bar(r) for r in rs]
        mb = [mechanism_bar(r) for r in rs]
        pred["mechanism_v2"] = [m[0] for m in mb]
        out["mech_abstain"] += sum(m[1] for m in mb)
        if lr_train:
            pred["opcode_lr"] = opcode_lr_leaks(rs, lr_train)
        truth = [is_leak(r) for r in rs]
        fams = mech_families(rs)
        groups = [cluster_of(r) for r in rs]
        for i, r in enumerate(rs):
            out["rows"].append(dict(
                section=sec, source=r.get("source"), group=r["group"], subset=r.get("subset"),
                arch=r.get("arch"), family=fams[i], truth_leak=truth[i], label=r["label"],
                n_instr=len(r["sequence"]), leak_score=scores[i],
                **{m: pred[m][i] for m in pred}))
        for name, ix in _slices(rs, fams).items():
            t = [truth[i] for i in ix]
            pr = {m: [pred[m][i] for i in ix] for m in pred}
            pairs = [("model", b) for b in BARS if b in pr] if predictor else []
            bt = cluster_boot(t, pr, [groups[i] for i in ix], n_boot=n_boot, seed=seed, pairs=pairs)
            cell = {}
            for m in pr:
                cell[m] = dict(n=len(ix), n_leak=int(sum(t)), n_safe=int(len(t) - sum(t)),
                               n_groups=bt["n_groups"], bal_acc=bal_acc(t, pr[m]),
                               ci=bt["ci"].get(m, (None, None)))
            out["slices"][sec][name] = cell
            if pairs:
                out["diffs"][sec][name] = {
                    b: dict(diff=cell["model"]["bal_acc"] - cell[b]["bal_acc"],
                            ci=bt["diff_ci"][("model", b)]) for _, b in pairs}
    out["methods"] = methods
    return out


# ---------------------------------------------------------------------- report
def render_md(res, meta):
    L = ["# Real-world scorer report", ""]
    for k, v in meta.items():
        L.append(f"- {k}: {v}")
    c = res["counts"]
    L += ["", f"Rows loaded {c['total']}; dropped as dup_of (R17/R25) **{c['dup_dropped']}**; "
          f"headline **{c['headline']}**; harness (R18, separate) {c['harness']}; "
          f"train_overlap (separate) {c['train_overlap']}. "
          f"Unscorable by model: {res['unscorable']}. "
          f"Mechanism rule abstained (counted safe) on {res['mech_abstain']} rows.",
          "", "Balanced accuracy = mean of leak recall and safe recall over the classes present "
          "in the cell; a one-class cell reports that class's recall only (see n_leak/n_safe). "
          "CI = 95% cluster bootstrap by family/group; n/a when only one cluster. "
          "`mitigation_detected` is never used (R12).", ""]
    ms = res["methods"]
    for sec, title in (("headline", "Headline (clean: not harness, not train_overlap, not dup)"),
                       ("harness", "Harness rows (R18) -- NOT headline"),
                       ("train_overlap", "train_overlap rows -- NOT headline")):
        cells = res["slices"].get(sec, {})
        L += [f"## {title}", ""]
        if not cells:
            L += ["(no rows)", ""]
            continue
        L += ["| slice | n | leak | safe | groups | " + " | ".join(ms) + " |",
              "|---|---|---|---|---|" + "---|" * len(ms)]
        for name, cell in cells.items():
            a = cell[ms[0]]
            L.append(f"| {name} | {a['n']} | {a['n_leak']} | {a['n_safe']} | {a['n_groups']} | " +
                     " | ".join(f"{_f(cell[m]['bal_acc'])} {fmt_ci(cell[m]['ci'])}" for m in ms) + " |")
        d = res["diffs"].get(sec, {})
        if d:
            L += ["", f"Paired difference, model minus bar ({sec}):", "",
                  "| slice | " + " | ".join(BARS) + " |", "|---|" + "---|" * len(BARS)]
            for name, cell in d.items():
                L.append(f"| {name} | " + " | ".join(
                    f"{cell[b]['diff']:+.3f} {fmt_ci(cell[b]['ci'])}" if b in cell else "-"
                    for b in BARS) + " |")
        L.append("")
    return "\n".join(L)


# ------------------------------------------------------------------- CLI glue
def load_rows(patterns):
    files = sorted({f for p in patterns for f in glob.glob(p)})
    return [json.loads(l) for f in files for l in open(f) if l.strip()]


def make_stub_predictor(path):
    """JSON {"leak_regex": "...", "pred": "SPECTRE_V1"}: a window is a leak iff
    any instruction matches the regex. Plumbing smoke test only."""
    cfg = json.loads(Path(path).read_text())
    rx, cls = re.compile(cfg["leak_regex"]), cfg.get("pred", "SPECTRE_V1")
    return lambda ws: [(cls, 0.1) if any(rx.search(l) for l in w) else ("BENIGN", 0.9)
                       for w in ws]


def _resolve(p):
    for base in (Path.cwd(), ROOT, ROOT / "v54"):
        if (base / p).exists():
            return base / p
    return Path(p)


def make_model_predictor(run_dir, train_data, test_data, acc_tol, skip_gate=False):
    """Checkpoint path. Lazy torch: nothing above this line imports it."""
    from eval import score_hwlabel_variants as sh
    import torch
    torch.manual_seed(42)
    np.random.seed(42)
    run_dir = Path(run_dir)
    train_labels = sorted({r["label"] for r in sh.load_jsonl(train_data)
                           if r.get("label", "UNKNOWN") != "UNKNOWN"})
    if train_labels != sh.EXPECTED_CLASSES:
        sys.exit(f"train label order {train_labels} != checkpoint's {sh.EXPECTED_CLASSES}")
    label_to_id = {l: i for i, l in enumerate(train_labels)}
    expected, model_cfg, ds_kw, hc, mech = sh.load_run_config(run_dir / "gine_metrics.json")
    if hc == "neutral":
        from inline_features import NEUTRAL_FEATURES
        names = list(NEUTRAL_FEATURES)
    else:
        names = sh.get_feature_names()
    if mech:
        from inline_features import MECH_FEATURE_NAMES
        names = list(names) + MECH_FEATURE_NAMES
    ckpt = torch.load(run_dir / "gine_best.pt", map_location=sh.DEVICE, weights_only=False)
    state = ckpt["model_state_dict"] if "model_state_dict" in ckpt else ckpt
    probe = sh.GINEDatasetV47(sh.load_jsonl(test_data)[:1], label_to_id, names, **ds_kw)
    model = sh.build_model(len(train_labels), len(names), probe.node_feature_dim, model_cfg)
    model.load_state_dict(state)
    gate = None
    if not skip_gate:
        gate = sh.reproduce_gate(model, label_to_id, names, test_data, ds_kw, expected, acc_tol)
    id_to_label = {i: l for l, i in label_to_id.items()}
    benign = label_to_id["BENIGN"]

    def recs(ws, archs):
        return [dict(sequence=w, label="BENIGN", arch=a, group=f"w{i}", source_file=f"w{i}")
                for i, (w, a) in enumerate(zip(ws, archs))]

    def predictor(ws, archs=None):
        archs = archs or ["x86_64"] * len(ws)
        rs = recs(ws, archs)
        ds = sh.GINEDatasetV47(rs, label_to_id, names, **ds_kw)
        pid, prob = sh.predict(model, ds)
        if len(pid) == len(rs):
            return [(id_to_label[int(p)], float(q[benign])) for p, q in zip(pid, prob)]
        out = []   # dataset dropped some windows: re-predict singly to align
        for r in rs:
            d1 = sh.GINEDatasetV47([r], label_to_id, names, **ds_kw)
            p1, q1 = sh.predict(model, d1)
            out.append((id_to_label[int(p1[0])], float(q1[0][benign])) if len(p1) else None)
        return out
    predictor.wants_arch = True
    predictor.gate_acc = gate
    return predictor


def default_train_pool(run_dir):
    if run_dir:
        m = Path(run_dir) / "gine_metrics.json"
        if m.exists():
            td = json.loads(m.read_text()).get("args", {}).get("train_data")
            if td and _resolve(td).exists():
                return _resolve(td)
    return DEFAULT_TRAIN_POOL


def main(argv=None):
    ap = argparse.ArgumentParser(description=__doc__,
                                 formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument("--run-dir", default=None, help="checkpoint dir (gine_best.pt + gine_metrics.json)")
    ap.add_argument("--data", nargs="+", default=[str(ROOT / "eval/data/realworld_*.jsonl")])
    ap.add_argument("--out-dir", required=True)
    ap.add_argument("--train-pool", default=None,
                    help="opcode-LR bar training pool (R4); default = run's recorded train data, "
                         "else v54/data/v54_train.jsonl")
    ap.add_argument("--predictor", default=None, help="stub:<json file> instead of a checkpoint")
    ap.add_argument("--bars-only", action="store_true")
    ap.add_argument("--test-data", default=str(ROOT / "v54/data/v54_test.jsonl"))
    ap.add_argument("--acc-tol", type=float, default=1e-3)
    ap.add_argument("--n-boot", type=int, default=2000)
    a = ap.parse_args(argv)

    rows = load_rows(a.data)
    if not rows:
        sys.exit("no rows loaded")
    pool_path = Path(a.train_pool) if a.train_pool else default_train_pool(a.run_dir)
    pool = [r for r in (json.loads(l) for l in open(pool_path) if l.strip())
            if r.get("label", "UNKNOWN") != "UNKNOWN"]
    meta = {"data": ", ".join(a.data), "opcode-LR train pool": str(pool_path)}
    predictor = None
    if a.predictor:
        if not a.predictor.startswith("stub:"):
            sys.exit("--predictor must be stub:<file>")
        predictor = make_stub_predictor(a.predictor[5:])
        meta["model column"] = f"STUB predictor {a.predictor[5:]} (plumbing check, NOT a model)"
    elif a.run_dir and not a.bars_only:
        td = default_train_pool(a.run_dir)
        predictor = make_model_predictor(a.run_dir, td, Path(a.test_data), a.acc_tol)
        meta["model column"] = f"{a.run_dir} (reproduce gate acc {predictor.gate_acc})"
    else:
        meta["model column"] = "none (--bars-only)"
    res = score(rows, predictor=predictor, lr_train=pool, n_boot=a.n_boot)
    out = Path(a.out_dir)
    out.mkdir(parents=True, exist_ok=True)
    with open(out / "rows.jsonl", "w") as f:
        for r in res["rows"]:
            f.write(json.dumps(r) + "\n")
    js = {k: v for k, v in res.items() if k != "rows"}
    js["meta"] = meta
    (out / "score.json").write_text(json.dumps(js, indent=1, default=str))
    (out / "score.md").write_text(render_md(res, meta))
    print(f"wrote {out}/score.md ({res['counts']})")
    return 0


if __name__ == "__main__":
    sys.exit(main())
