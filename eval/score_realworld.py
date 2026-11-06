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

Fix round 1 (R29-R31):
  * Every method is scored in the SAME unit: per window, function = leak iff any
    window predicts leak. `fence_count_wholefn` / `mechanism_v2_wholefn` keep the
    old whole-function calls as secondary rows. Per-window leak rate (mean over a
    function's windows) is averaged per truth class; `n_windows` is in rows.jsonl.
    Remaining asymmetry: benign holdout rows are single windows, attacks span many.
  * `mechanism_v2` counts abstention as safe (NOT comparable to hwlabel numbers);
    `mechanism_v2_excl` drops abstaining rows (scoreboard.py convention).
  * Bootstrap replicates with no leak or no safe cluster are dropped (count reported).
  * patched_window (Linux pre/post pairs): difflib the normalised pair, score each
    side by max over the 25-45 windows overlapping a differing instruction.
  * Rows with no instruction lines are dropped at scoring time (count reported).

torch is imported lazily and only on the checkpoint path; --bars-only and
--predictor stub:<json> run without torch / torch_geometric.
"""
from __future__ import annotations

import argparse
import difflib
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
from realworld.records import WIN_HI, WIN_LO, STRIDE, normalise, windows  # noqa: E402

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
    c = row_class(r)
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


_MNEM = re.compile(r"^[A-Za-z][A-Za-z0-9_.]*$")
_NOT_INSTR = ("/*", "*", "//", "#", ";", "@", "--", ".")


def is_instruction_line(line):
    """Cheap parse: a mnemonic-looking first token, not a comment/directive/label."""
    t = line.strip()
    if not t or t.startswith(_NOT_INSTR) or t.endswith(":"):
        return False
    return bool(_MNEM.match(t.split()[0]))


def row_class(r):
    return r.get("vuln_class") or (r["label"] if is_leak(r) else None)


def mechanism_window(w, cls=None):
    """True/False/None(abstain) for one window; cls None -> probe V1/V4/MDS/L1TF."""
    leak, abst = mechanism_bar(dict(sequence=w, label="BENIGN", vuln_class=cls))
    return None if (abst and not leak) else leak


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
def _valid(pred):
    return np.array([x is not None for x in pred], bool)


def _bal(lc, ln, sc, sn):
    with np.errstate(divide="ignore", invalid="ignore"):
        a = np.where(ln > 0, lc / np.maximum(ln, 1), np.nan)
        b = np.where(sn > 0, sc / np.maximum(sn, 1), np.nan)
    return np.nanmean(np.stack([a, b]), axis=0)


def bal_acc(truth, pred):
    """pred may hold None (abstain): those rows are excluded."""
    v = _valid(pred)
    t = np.asarray(truth, bool)[v]
    p = np.array([bool(x) for x in pred], bool)[v]
    if len(t) == 0:
        return float("nan")
    return float(_bal(np.array([(t & p).sum()]), np.array([t.sum()]),
                      np.array([(~t & ~p).sum()]), np.array([(~t).sum()]))[0])


def _group_counts(truth, pred, groups, ug):
    v = _valid(pred)
    t = np.asarray(truth, bool)
    p = np.array([bool(x) for x in pred], bool)
    g = np.asarray(groups)
    m = np.zeros((len(ug), 4))
    for k, u in enumerate(ug):
        s = (g == u) & v
        m[k] = [(t & p & s).sum(), (t & s).sum(), (~t & ~p & s).sum(), (~t & s).sum()]
    return m


def cluster_boot(truth, preds, groups, n_boot=2000, seed=0, alpha=0.05, pairs=()):
    """Cluster bootstrap of balanced accuracy for each predictor in `preds`
    ({name: list of bool/None}); `pairs` = [(a, b)] adds paired a-b differences
    on the SAME resampled clusters. When the full data has both a leak and a
    safe row, replicates lacking a leak or a safe row are dropped (NaN) and
    counted in `n_dropped[name]`. Returns samples, ci, diff_ci, n_dropped."""
    ug = np.unique(np.asarray(groups))
    res = dict(samples={}, ci={}, diff_ci={}, diff_samples={}, n_groups=len(ug), n_dropped={})
    if len(truth) == 0:
        return res
    if len(ug) < 2:
        for k in preds:
            res["samples"][k] = np.array([bal_acc(truth, preds[k])])
            res["ci"][k] = (None, None)
            res["n_dropped"][k] = 0
        for a, b in pairs:
            res["diff_ci"][(a, b)] = (None, None)
        return res
    rng = np.random.RandomState(seed)
    idx = rng.randint(0, len(ug), size=(n_boot, len(ug)))
    for k, p in preds.items():
        C = _group_counts(truth, p, groups, ug)
        S = C[idx].sum(axis=1)
        v = _bal(S[:, 0], S[:, 1], S[:, 2], S[:, 3])
        res["n_dropped"][k] = 0
        if C[:, 1].sum() > 0 and C[:, 3].sum() > 0:
            ok = (S[:, 1] > 0) & (S[:, 3] > 0)
            v = np.where(ok, v, np.nan)
            res["n_dropped"][k] = int((~ok).sum())
        res["samples"][k] = v
        if np.isnan(v).all():
            res["ci"][k] = (None, None)
        else:
            lo, hi = np.nanpercentile(v, [100 * alpha / 2, 100 * (1 - alpha / 2)])
            res["ci"][k] = (float(lo), float(hi))
    for a, b in pairs:
        d = res["samples"][a] - res["samples"][b]
        res["diff_samples"][(a, b)] = d
        if np.isnan(d).all():
            res["diff_ci"][(a, b)] = (None, None)
        else:
            lo, hi = np.nanpercentile(d, [100 * alpha / 2, 100 * (1 - alpha / 2)])
            res["diff_ci"][(a, b)] = (float(lo), float(hi))
    return res


def fmt_ci(ci):
    return "n/a" if ci is None or ci[0] is None else f"[{ci[0]:.3f}, {ci[1]:.3f}]"


def _f(x):
    return "n/a" if x is None or x != x else f"{x:.3f}"


# ------------------------------------------------- per-window flags (one unit)
def window_flags(wins, archs, predictor, lr_train, classes=None):
    """Per-window leak flags for every method: True / False / None(abstain or
    dropped by the model dataset). Also returns the model's per-window leak
    score (1 - p_benign)."""
    n = len(wins)
    f, pb = {}, None
    if predictor:
        res = predictor(wins, archs=archs) if getattr(predictor, "wants_arch", False) \
            else predictor(wins)
        f["model"] = [None if x is None else x[0] != "BENIGN" for x in res]
        pb = [None if x is None else 1.0 - x[1] for x in res]
    f["always_attack"] = [True] * n
    f["fence_count"] = [fence_count(w) == 0 for w in wins]
    classes = classes or [None] * n
    mech = [mechanism_window(w, c) for w, c in zip(wins, classes)]
    f["mechanism_v2"] = [bool(m) for m in mech]       # abstain counted as safe
    f["mechanism_v2_excl"] = mech                     # abstain -> None
    if lr_train:
        from eval.shared_config import opcode_lr_preds
        preds = opcode_lr_preds(lr_train, [dict(sequence=w, label="BENIGN") for w in wins])
        f["opcode_lr"] = [p != "BENIGN" for p in preds]
    return f, pb


def aggregate(vals_by_owner):
    """any True -> True; all None -> None; else False. Also mean window rate."""
    leak, rate = [], []
    for vs in vals_by_owner:
        real = [v for v in vs if v is not None]
        if any(real):
            leak.append(True)
        elif not real:
            leak.append(None)
        else:
            leak.append(False)
        rate.append(sum(real) / len(real) if real else None)
    return leak, rate


def flags_to_rows(rows, flags, owner, pb=None):
    """Aggregate per-window flags to per-row (leak, rate) for each method."""
    out = {}
    for m, fl in flags.items():
        by = [[] for _ in rows]
        for i, v in zip(owner, fl):
            by[i].append(v)
        out[m] = aggregate(by)
    score = None
    if pb is not None:
        by = [[] for _ in rows]
        for i, v in zip(owner, pb):
            if v is not None:
                by[i].append(v)
        score = [max(x) if x else None for x in by]
    return out, score


def bar_function_calls(rows, lr_train=None):
    """Bars only, per-window unit (+ the whole-function secondaries).
    Returns {method: list of function-level leak (True/False/None)}."""
    wins, owner = [], []
    for i, r in enumerate(rows):
        for w in windows_for(r):
            wins.append(w)
            owner.append(i)
    fl, _ = window_flags(wins, [rows[i].get("arch", "x86_64") for i in owner], None, lr_train,
                         [row_class(rows[i]) for i in owner])
    agg, _ = flags_to_rows(rows, fl, owner)
    out = {m: v[0] for m, v in agg.items()}
    out["fence_count_wholefn"] = [fence_bar(r) for r in rows]
    out["mechanism_v2_wholefn"] = [mechanism_bar(r)[0] for r in rows]
    return out


# --------------------------------------------------------- patched windows R29
def window_spans(n, lo=WIN_LO, hi=WIN_HI, stride=STRIDE):
    """(start, end) spans identical to realworld.records.windows."""
    if n < lo or n <= hi:
        return [(0, n)]
    out = [(i, i + hi) for i in range(0, n - hi + 1, stride)]
    if (n - hi) % stride:
        out.append((n - hi, n))
    return out


def patched_spans(pre_seq, post_seq):
    """Diff the NORMALISED pre/post sequences; return {side: (seq, spans)} where
    spans are the 25-45 windows overlapping any differing instruction on that
    side (an insertion marks its two neighbouring instructions)."""
    a, b = normalise(pre_seq), normalise(post_seq)
    sm = difflib.SequenceMatcher(None, a, b, autojunk=False)
    hit_a, hit_b = set(), set()
    for tag, i1, i2, j1, j2 in sm.get_opcodes():
        if tag == "equal":
            continue
        hit_a.update(range(i1, i2) if i2 > i1 else (x for x in (i1 - 1, i1) if 0 <= x < len(a)))
        hit_b.update(range(j1, j2) if j2 > j1 else (x for x in (j1 - 1, j1) if 0 <= x < len(b)))

    def spans(n, hit):
        return [(s, e) for s, e in window_spans(n) if any(s <= h < e for h in hit)]
    return {"pre": (a, spans(len(a), hit_a)), "post": (b, spans(len(b), hit_b))}


def patched_leak(seq, spans, predictor):
    """Function call from the patched windows only: any window predicts leak."""
    res = predictor([seq[s:e] for s, e in spans])
    return any(x is not None and x[0] != "BENIGN" for x in res)


def patched_window_scores(rows, predictor, lr_train, n_boot, seed):
    """rows: kept headline rows. Pairs = same group with side pre and post."""
    by = defaultdict(dict)
    for r in rows:
        if r.get("side") in ("pre", "post"):
            by[r["group"]][r["side"]] = r
    items = []   # (group, truth_leak, window list, arch)
    for g, d in by.items():
        if "pre" in d and "post" in d:
            ps = patched_spans(d["pre"]["sequence"], d["post"]["sequence"])
            for side in ("pre", "post"):
                seq, sp = ps[side]
                items.append((g, side == "pre", [seq[s:e] for s, e in sp],
                              d[side].get("arch", "x86_64"), row_class(d["pre"])))
    if not items:
        return None
    wins, owner, archs, cls = [], [], [], []
    for i, it in enumerate(items):
        for w in it[2]:
            wins.append(w)
            owner.append(i)
            archs.append(it[3])
            cls.append(it[4])
    fl, _ = window_flags(wins, archs, predictor, lr_train, cls)
    stub_rows = [None] * len(items)
    agg, rate = flags_to_rows(stub_rows, fl, owner)
    truth = [it[1] for it in items]
    groups = [it[0] for it in items]
    pred = {m: v[0] for m, v in agg.items()}
    bt = cluster_boot(truth, pred, groups, n_boot=n_boot, seed=seed)
    cells = {m: dict(n=len(items), n_pairs=len(items) // 2, bal_acc=bal_acc(truth, pred[m]),
                     ci=bt["ci"].get(m, (None, None)), n_dropped=bt["n_dropped"].get(m, 0),
                     n_patched_windows=len(wins)) for m in pred}
    return cells


# --------------------------------------------------------------------- scoring
def _slices(rows, fams):
    out = {"all": list(range(len(rows)))}
    for key, vals in (("subset", [r.get("subset") for r in rows]),
                      ("family", fams),
                      ("arch", [r.get("arch") for r in rows])):
        for v in sorted({str(x) for x in vals}):
            out[f"{key}={v}"] = [i for i, x in enumerate(vals) if str(x) == v]
    return out


SECONDARY = ("fence_count_wholefn", "mechanism_v2_wholefn")
PAIR_BARS = BARS


def has_instruction(r):
    return any(is_instruction_line(l) for l in r["sequence"])


def score(rows, predictor=None, lr_train=None, n_boot=2000, seed=0):
    """Score raw loaded records. predictor: callable(list of windows[, archs=])
    -> list of (pred_label, p_benign) or None per window; None = bars only."""
    noinstr = [r for r in rows if not has_instruction(r)]
    rows = [r for r in rows if has_instruction(r)]
    parts = partition(rows)
    out = dict(counts=dict(total=len(rows) + len(noinstr), no_instruction_dropped=len(noinstr),
                           no_instruction_harness=sum(bool(r.get("harness")) for r in noinstr),
                           dup_dropped=parts["n_dup_dropped"],
                           **{k: len(parts[k]) for k in ("headline", "harness", "train_overlap")}),
               slices={}, diffs={}, rows=[], unscorable=0, mech_abstain_rows=0)
    methods = (["model"] if predictor else []) + [b for b in BARS if b != "opcode_lr" or lr_train] \
        + ["mechanism_v2_excl"] + list(SECONDARY)
    for sec in ("headline", "harness", "train_overlap"):
        rs = parts[sec]
        out["slices"][sec], out["diffs"][sec] = {}, {}
        if not rs:
            continue
        wins, owner = [], []
        for i, r in enumerate(rs):
            for w in windows_for(r):
                wins.append(w)
                owner.append(i)
        fl, pb = window_flags(wins, [rs[i].get("arch", "x86_64") for i in owner],
                              predictor, lr_train, [row_class(rs[i]) for i in owner])
        agg, score_ = flags_to_rows(rs, fl, owner, pb)
        pred = {m: v[0] for m, v in agg.items()}
        rate = {m: v[1] for m, v in agg.items()}
        if predictor:
            keep = [i for i, v in enumerate(pred["model"]) if v is not None]
            out["unscorable"] += len(rs) - len(keep)
        else:
            keep = list(range(len(rs)))
        rs = [rs[i] for i in keep]
        pred = {m: [v[i] for i in keep] for m, v in pred.items()}
        rate = {m: [v[i] for i in keep] for m, v in rate.items()}
        scores = [score_[i] for i in keep] if score_ else [None] * len(rs)
        n_win = [len(windows_for(r)) for r in rs]
        pred["fence_count_wholefn"] = [fence_bar(r) for r in rs]
        mw = [mechanism_bar(r) for r in rs]
        pred["mechanism_v2_wholefn"] = [m[0] for m in mw]
        out["mech_abstain_rows"] += sum(m[1] for m in mw)
        rate["fence_count_wholefn"] = rate["mechanism_v2_wholefn"] = [None] * len(rs)
        truth = [is_leak(r) for r in rs]
        fams = mech_families(rs)
        groups = [cluster_of(r) for r in rs]
        for i, r in enumerate(rs):
            row = dict(section=sec, source=r.get("source"), group=r["group"],
                       subset=r.get("subset"), arch=r.get("arch"), family=fams[i],
                       truth_leak=truth[i], label=r["label"], n_instr=len(r["sequence"]),
                       n_windows=n_win[i], leak_score=scores[i])
            for m in pred:
                row[m] = pred[m][i]
                row[m + "_wrate"] = rate[m][i]
            out["rows"].append(row)
        for name, ix in _slices(rs, fams).items():
            t = [truth[i] for i in ix]
            pr = {m: [pred[m][i] for i in ix] for m in pred}
            pairs = [("model", b) for b in PAIR_BARS if b in pr] if predictor else []
            bt = cluster_boot(t, pr, [groups[i] for i in ix], n_boot=n_boot, seed=seed, pairs=pairs)
            cell = {}
            for m in pr:
                v = _valid(pr[m])
                tv = np.asarray(t, bool)[v]

                def mean_rate(sel):
                    xs = [rate[m][i] for i, tt in zip(ix, t) if tt == sel and rate[m][i] is not None]
                    return float(np.mean(xs)) if xs else None
                cell[m] = dict(n=int(v.sum()), n_leak=int(tv.sum()), n_safe=int((~tv).sum()),
                               n_groups=bt["n_groups"], bal_acc=bal_acc(t, pr[m]),
                               ci=bt["ci"].get(m, (None, None)),
                               n_dropped=bt["n_dropped"].get(m, 0),
                               wrate_leak=mean_rate(True), wrate_safe=mean_rate(False))
            out["slices"][sec][name] = cell
            if pairs:
                out["diffs"][sec][name] = {
                    b: dict(diff=cell["model"]["bal_acc"] - cell[b]["bal_acc"],
                            ci=bt["diff_ci"][("model", b)]) for _, b in pairs}
        if sec == "headline":
            out["patched_window"] = patched_window_scores(rs, predictor, lr_train, n_boot, seed)
    out["methods"] = methods
    return out


# ---------------------------------------------------------------------- report
DISPLAY = {"mechanism_v2": "mechanism_v2 (abstain=safe; NOT comparable to hwlabel)",
           "mechanism_v2_excl": "mechanism_v2_excl (abstain excluded)"}


def render_md(res, meta):
    L = ["# Real-world scorer report", ""]
    for k, v in meta.items():
        L.append(f"- {k}: {v}")
    c = res["counts"]
    L += ["", f"Rows loaded {c['total']}; dropped for having no instruction line "
          f"**{c['no_instruction_dropped']}** (of which harness-flagged {c['no_instruction_harness']}); "
          f"dropped as dup_of (R17/R25) **{c['dup_dropped']}**; "
          f"headline **{c['headline']}**; harness (R18, separate) {c['harness']}; "
          f"train_overlap (separate) {c['train_overlap']}. "
          f"Unscorable by model: {res['unscorable']}. "
          f"Rows on which the mechanism rule abstained in every window/class (whole-function, counted safe): "
          f"{res['mech_abstain_rows']}.",
          "", "Unit (R30): every method, model and bars, predicts per 25-45 window; a function is a "
          "leak iff ANY window predicts leak. `*_wholefn` rows are the old whole-function calls (secondary). "
          "Remaining asymmetry: benign holdout rows are single windows while attacks span many windows, "
          "so any-window rules have more chances to fire on attacks than on benign rows; "
          "`wrate` columns give the per-window leak rate (mean over a function's windows, averaged over "
          "leak-truth / safe-truth functions) as a length-insensitive view.",
          "", "Balanced accuracy = mean of leak recall and safe recall over the classes present "
          "in the cell; a one-class cell reports that class's recall only (see n_leak/n_safe). "
          "CI = 95% cluster bootstrap by family/group; n/a when only one cluster. Bootstrap replicates "
          "with no leak or no safe cluster are dropped (the `dropped` column counts them out of the "
          "resamples). `mitigation_detected` is never used (R12).", ""]
    ms = res["methods"]
    for sec, title in (("headline", "Headline (clean: not harness, not train_overlap, not dup)"),
                       ("harness", "Harness rows (R18) -- NOT headline"),
                       ("train_overlap", "train_overlap rows -- NOT headline")):
        cells = res["slices"].get(sec, {})
        L += [f"## {title}", ""]
        if not cells:
            L += ["(no rows)", ""]
            continue
        L += ["| slice | n | leak | safe | groups | dropped | " + " | ".join(DISPLAY.get(m, m) for m in ms) + " |",
              "|---|---|---|---|---|---|" + "---|" * len(ms)]
        for name, cell in cells.items():
            a = cell[ms[0]]
            L.append(f"| {name} | {a['n']} | {a['n_leak']} | {a['n_safe']} | {a['n_groups']} | "
                     f"{max(x['n_dropped'] for m_, x in cell.items() if m_ != 'mechanism_v2_excl')} | " +
                     " | ".join(f"{_f(cell[m]['bal_acc'])} {fmt_ci(cell[m]['ci'])}"
                                + ("" if cell[m]["n"] == a["n"] else f" (n={cell[m]['n']})")
                                for m in ms) + " |")
        L += ["", f"Per-window leak rate ({sec}): mean over functions of the fraction of windows "
              "predicted leak; first value over leak-truth functions, second over safe-truth.", "",
              "| slice | " + " | ".join(m for m in ms if m not in SECONDARY) + " |",
              "|---|" + "---|" * len([m for m in ms if m not in SECONDARY])]
        for name, cell in cells.items():
            L.append(f"| {name} | " + " | ".join(
                f"{_f(cell[m]['wrate_leak'])} / {_f(cell[m]['wrate_safe'])}"
                for m in ms if m not in SECONDARY) + " |")
        d = res["diffs"].get(sec, {})
        if d:
            L += ["", f"Paired difference, model minus bar ({sec}):", "",
                  "| slice | " + " | ".join(BARS) + " |", "|---|" + "---|" * len(BARS)]
            for name, cell in d.items():
                L.append(f"| {name} | " + " | ".join(
                    f"{cell[b]['diff']:+.3f} {fmt_ci(cell[b]['ci'])}" if b in cell else "-"
                    for b in BARS) + " |")
        L.append("")
    pw = res.get("patched_window")
    L += ["## patched_window (Linux fix-commit pairs, R29)", ""]
    if not pw:
        L += ["(no pre/post pairs)", ""]
    else:
        a = next(iter(pw.values()))
        L += [f"Each side scored by max over its 25-45 windows overlapping a difflib-differing instruction "
              f"({a['n_pairs']} pairs, {a['n']} sides, {a['n_patched_windows']} patched windows). "
              "pre = leak, post = safe. Cluster = pair.", "",
              "| method | bal acc | 95% CI | dropped |", "|---|---|---|---|"]
        for m, x in pw.items():
            L.append(f"| {DISPLAY.get(m, m)} | {_f(x['bal_acc'])} | {fmt_ci(x['ci'])} | {x['n_dropped']} |")
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
