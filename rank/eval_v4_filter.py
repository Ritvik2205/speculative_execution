#!/usr/bin/env python3
"""eval_v4_filter.py — the retargeted leak-vs-safe filter on SPECTRE_V4, the
one generated class with both oracle outcomes.

Why this and not rank/train_ranker.py. The ranker was built to regress
Spectector's `leak_signal` (= symbolic trace length). gen/v4_leak_vs_safe.py
showed that target is wrong: trace length tracks gadget size, not leakiness,
and the locked classifier's own attack-probability is INVERTED on generated V4
(within-round AUC 0.27, correlated -0.66 with length). So the filter must
predict P(leak) directly, on features that are not just length.

What this measures. A small head on the FROZEN locked-classifier embedding (the
post-fusion `combined` vector, via rank.encoder_hook -- not the brittle
classifier OUTPUT), trained to separate oracle LEAK from oracle SAFE, evaluated
the way a filter is actually used: ordering candidates so the top reach the
oracle first. Reported against the bars that already exist
(gen/v4_leak_vs_safe.md): sequence length (within-round AUC 0.59) and an
opcode-bag model.

Hygiene, so nothing is inflated:
  - leak|safe only; UNRUNNABLE excluded (a different question).
  - identical realized sequences deduped; conflicting-verdict sequences dropped.
  - RL round is the dominant confounder (leak rate climbs 0.18->0.85 across
    rounds), so the headline is WITHIN-ROUND AUC and a PROSPECTIVE split (train
    rounds <= r, test round r+1), never a random split that lets the round leak.
  - every AUC gets a bootstrap 95% CI; the encoder head is compared head-to-head
    with length and opcode bars on the same rows.

Run (needs torch + the locked checkpoint; local):
    python3 rank/eval_v4_filter.py   -> rank/v4_filter_eval.md
"""
from __future__ import annotations

import argparse
import collections
import glob
import json
import re
import sys
from pathlib import Path

import numpy as np

ROOT = Path(__file__).resolve().parent.parent
sys.path.insert(0, str(ROOT / "rank"))
sys.path.insert(0, str(ROOT / "eval"))
sys.path.insert(0, str(ROOT / "v54"))


def auc(score, y):
    score = np.asarray(score, float); y = np.asarray(y, int)
    pos, neg = score[y == 1], score[y == 0]
    if len(pos) == 0 or len(neg) == 0:
        return float("nan")
    gt = (pos[:, None] > neg[None, :]).sum()
    eq = (pos[:, None] == neg[None, :]).sum()
    return (gt + 0.5 * eq) / (len(pos) * len(neg))


def boot_ci(score, y, n=1000, seed=0):
    rng = np.random.default_rng(seed)
    score = np.asarray(score, float); y = np.asarray(y, int)
    vals = []
    for _ in range(n):
        i = rng.integers(0, len(y), len(y))
        v = auc(score[i], y[i])
        if v == v:
            vals.append(v)
    if not vals:
        return (float("nan"), float("nan"))
    return float(np.percentile(vals, 2.5)), float(np.percentile(vals, 97.5))


def opcodes(seq):
    out = []
    for s in seq:
        s = s.strip()
        if not s or s.endswith(":") or s.startswith("."):
            continue
        out.append(re.split(r"\s+", s)[0].lower())
    return out


def load_v4(pattern):
    raw, unrun = [], 0
    for p in sorted(glob.glob(pattern)):
        run = Path(p).parent.name
        for line in open(p):
            if not line.strip():
                continue
            r = json.loads(line)
            v = str(r.get("verdict", "")).lower()
            asm = r.get("realized_asm")
            if isinstance(asm, str):
                asm = [s.encode().decode("unicode_escape")
                       for s in re.findall(r"'((?:[^'\\]|\\.)*)'", asm)]
            if v == "unrunnable":
                unrun += 1
                continue
            if v not in ("leak", "safe") or not asm:
                continue
            raw.append({"seq": tuple(asm), "y": int(v == "leak"), "run": run,
                        "round": r.get("round")})
    # dedup; drop conflicting
    by = collections.defaultdict(list)
    for r in raw:
        by[r["seq"]].append(r)
    rows, conflict = [], 0
    for seq, rs in by.items():
        if len({r["y"] for r in rs}) > 1:
            conflict += 1
            continue
        rows.append(rs[0])
    return rows, unrun, conflict


def within_round(score, y, rnd, mask=None):
    score = np.asarray(score, float); y = np.asarray(y, int); rnd = np.asarray(rnd)
    m = np.ones(len(y), bool) if mask is None else np.asarray(mask, bool)
    vals = []
    for rd in sorted(set(rnd[m])):
        k = m & (rnd == rd)
        if len(set(y[k])) == 2:
            vals.append(auc(score[k], y[k]))
    return float(np.mean(vals)) if vals else float("nan")


def prospective_oof(rows, feat_fn, y, rnd):
    """Train on rounds <= r, score round r+1; concatenate out-of-fold scores.
    feat_fn(train_idx, test_idx) -> scores for test_idx (fit on train only)."""
    from sklearn.linear_model import LogisticRegression  # noqa: F401 (used via feat_fn)
    rounds = sorted(set(rnd))
    oof = np.full(len(rows), np.nan)
    for i in range(1, len(rounds)):
        tr = np.where(np.isin(rnd, rounds[:i]))[0]
        te = np.where(rnd == rounds[i])[0]
        if len(set(y[tr])) < 2 or len(te) == 0:
            continue
        oof[te] = feat_fn(tr, te)
    return oof


def efficiency_curve(score, y):
    """Leaks-per-oracle-call if candidates are sent to the oracle in score
    order, vs random. Returns (ranked_precision_at_half, random_rate)."""
    order = np.argsort(-np.asarray(score, float))
    yy = np.asarray(y, int)[order]
    half = max(1, len(yy) // 2)
    return float(yy[:half].mean()), float(np.asarray(y, int).mean())


def main(argv=None) -> int:
    ap = argparse.ArgumentParser(description=__doc__,
                                 formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument("--samples", default=str(ROOT / "gen/rl_mc/SPECTRE_V4_s*/samples.jsonl"))
    ap.add_argument("--out", default=str(ROOT / "rank" / "v4_filter_eval.md"))
    ap.add_argument("--device", default="cpu")
    a = ap.parse_args(argv)

    rows, unrun, conflict = load_v4(a.samples)
    if not rows:
        print("no leak/safe V4 samples found", file=sys.stderr)
        return 1
    y = np.array([r["y"] for r in rows])
    rnd = np.array([r["round"] if r["round"] is not None else -1 for r in rows])
    lens = np.array([len(opcodes(r["seq"])) for r in rows], float)

    L = ["# SPECTRE_V4 leak-vs-safe filter (retargeted ranker)", "",
         f"{len(rows)} unique leak/safe sequences "
         f"(LEAK {int(y.sum())} / SAFE {int((1 - y).sum())}; {unrun} unrunnable "
         f"excluded, {conflict} conflicting dropped). RL round is the confounder, "
         "so AUCs are within-round and the learned head uses a prospective "
         "(train rounds $\\le r$, test $r{+}1$) split.", "",
         "| scorer | within-round AUC | prospective AUC | 95% CI (pooled) |",
         "|---|---|---|---|"]

    def add(name, score, prosp=None):
        wr = within_round(score, y, rnd)
        lo, hi = boot_ci(score, y)
        pr = f"{prosp:.3f}" if prosp is not None else "---"
        L.append(f"| {name} | {wr:.3f} | {pr} | [{lo:.3f}, {hi:.3f}] |")

    add("sequence length (the bar)", lens)
    # opcode-bag LR, prospective
    from sklearn.feature_extraction import DictVectorizer
    from sklearn.linear_model import LogisticRegression
    bags = [collections.Counter(opcodes(r["seq"])) for r in rows]

    def opcode_fn(tr, te):
        v = DictVectorizer()
        Xtr = v.fit_transform([bags[i] for i in tr])
        Xte = v.transform([bags[i] for i in te])
        m = LogisticRegression(max_iter=5000).fit(Xtr, y[tr])
        return m.predict_proba(Xte)[:, 1]
    opc_oof = prospective_oof(rows, opcode_fn, y, rnd)
    ok = ~np.isnan(opc_oof)
    add("opcode-bag LR (prospective)", np.where(ok, opc_oof, 0.5),
        prosp=auc(opc_oof[ok], y[ok]) if ok.any() else None)

    # the frozen-encoder head -- the actual retargeted ranker
    enc_note = ""
    try:
        from encoder_hook import EncoderHook
        hook = EncoderHook(device=a.device)
        recs = [{"sequence": list(r["seq"]), "arch": "x86_64"} for r in rows]
        # embed one at a time so an unbuildable PDG is skipped, not fatal
        emb = np.full((len(rows), hook.combined_dim), np.nan)
        for i, rc in enumerate(recs):
            try:
                emb[i] = hook.embed([rc])[0]
            except Exception:
                pass
        built = ~np.isnan(emb).any(axis=1)

        def enc_fn(tr, te):
            tr = [i for i in tr if built[i]]
            te_b = [i for i in te if built[i]]
            out = np.full(len(te), 0.5)
            if len(set(y[tr])) < 2 or not te_b:
                return out
            from sklearn.preprocessing import StandardScaler
            sc = StandardScaler().fit(emb[tr])
            m = LogisticRegression(max_iter=5000, C=0.5).fit(sc.transform(emb[tr]), y[tr])
            pr = m.predict_proba(sc.transform(emb[te_b]))[:, 1]
            pos = {ti: p for ti, p in zip(te_b, pr)}
            return np.array([pos.get(ti, 0.5) for ti in te])
        enc_oof = prospective_oof(rows, enc_fn, y, rnd)
        ok2 = ~np.isnan(enc_oof) & built
        add("frozen-encoder head (prospective)", np.where(~np.isnan(enc_oof), enc_oof, 0.5),
            prosp=auc(enc_oof[ok2], y[ok2]) if ok2.any() else None)
        enc_note = f"encoder built {int(built.sum())}/{len(rows)} PDGs."
    except Exception as e:  # noqa: BLE001
        enc_note = f"encoder head SKIPPED: {type(e).__name__}: {e}"

    # efficiency: leaks-per-oracle-call at the 50% cut, best scorer vs random
    rp_len, rand = efficiency_curve(lens, y)
    L += ["", f"{enc_note}", "",
          "## Leaks per oracle call (send the top-scored half to the oracle)", "",
          "| ordering | leak rate in top 50% | vs random |", "|---|---|---|",
          f"| length | {rp_len:.3f} | {rand:.3f} |"]
    if 'opc_oof' in dir() and ok.any():
        rp_o, _ = efficiency_curve(np.where(ok, opc_oof, 0.5), y)
        L.append(f"| opcode-bag LR | {rp_o:.3f} | {rand:.3f} |")
    L += ["", "A scorer only helps if its within-round AUC clears 0.5 and its "
          "top-half leak rate clears the base rate; length's 0.59 within-round "
          "is the bar to beat. The headline is which scorer, if any, does.", ""]

    Path(a.out).write_text("\n".join(L) + "\n")
    print("\n".join(L))
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
