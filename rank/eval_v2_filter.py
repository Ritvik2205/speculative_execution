#!/usr/bin/env python3
"""eval_v2_filter.py -- the retargeted leak-vs-safe filter on SPECTRE_V2, the
second generated class with both oracle outcomes (after SPECTRE_V4).

Why this exists. V2 bootstrapping (gen/rl_v2_bootstrap.sbatch, Spectector-
Combined `-v 2`) is NOT a yield engine: eval/v2_combined measured ~0.8% leak
of adjudicable on this generator, so the loop manufactures mostly SAFE labels.
That makes it a LABELER -- and a labeled leak/safe set is exactly what a
discrimination head wants. This mirrors rank/eval_v4_filter.py: a small head on
the FROZEN locked-classifier embedding (the post-fusion `combined` vector, via
rank.encoder_hook -- not the brittle classifier OUTPUT), trained to separate
oracle LEAK from oracle SAFE, evaluated the way a filter is used: ordering
candidates so the top reach the oracle first.

Same hygiene as the V4 filter, so nothing is inflated:
  - leak|safe only; UNRUNNABLE excluded (a different question).
  - identical realized sequences deduped; conflicting-verdict sequences dropped.
  - RL round is the dominant confounder, so the headline is WITHIN-ROUND AUC and
    a PROSPECTIVE split (train rounds <= r, test round r+1), never a random split
    that lets the round leak.
  - every AUC gets a bootstrap 95% CI; the encoder head is compared head-to-head
    with length and opcode bars on the same rows.

V2 caveat the output states for itself: with ~0.8% leak, a 300-sample bootstrap
yields only a handful of LEAK rows. Within-round AUC needs >=1 leak AND >=1 safe
in a round to be defined; with so few leaks most rounds contribute nothing and
the pooled/prospective numbers carry the signal. The script prints the leak/safe
counts so a reader can judge how much to trust the AUCs -- a 0.8% base rate makes
these ESTIMATES, to be re-run as more bootstrap rounds (or the i5 hardware V2
campaign) add leaks. Reuse the same frozen embedding so the V2 and V4 filters are
directly comparable.

Run (needs torch + the locked checkpoint; local):
    python3 rank/eval_v2_filter.py   -> rank/v2_filter_eval.md
"""
from __future__ import annotations

import argparse
import collections
import sys
from pathlib import Path

import numpy as np

ROOT = Path(__file__).resolve().parent.parent
sys.path.insert(0, str(ROOT / "rank"))
sys.path.insert(0, str(ROOT / "eval"))
sys.path.insert(0, str(ROOT / "v54"))

# The leak/safe hygiene, the AUC/CI math, the within-round and prospective
# splits, and the efficiency curve are all class-agnostic -- reuse them from
# the V4 filter verbatim rather than forking (the V4 script stays untouched and
# its locked numbers are unaffected).
from eval_v4_filter import (  # noqa: E402
    auc,
    boot_ci,
    efficiency_curve,
    load_v4 as load_samples,
    opcodes,
    prospective_oof,
    within_round,
)


def main(argv=None) -> int:
    ap = argparse.ArgumentParser(description=__doc__,
                                 formatter_class=argparse.RawDescriptionHelpFormatter)
    # The V2 bootstrap writes one file; also accept the rl_mc layout if a
    # sharded V2 run exists. load_samples globs, so a brace-free list is passed
    # as repeated --samples.
    ap.add_argument("--samples", action="append", default=None,
                    help="glob(s) of V2 sample JSONL (repeatable). Default: the "
                         "bootstrap samples plus any gen/rl_mc/SPECTRE_V2_s*/ runs.")
    ap.add_argument("--out", default=str(ROOT / "rank" / "v2_filter_eval.md"))
    ap.add_argument("--device", default="cpu")
    ap.add_argument("--arch", default="x86_64",
                    help="arch for the encoder PDG build (V2 bootstrap is x86-only).")
    a = ap.parse_args(argv)

    patterns = a.samples or [
        str(ROOT / "gen/rl_v2_bootstrap_samples.jsonl"),
        str(ROOT / "gen/rl_mc/SPECTRE_V2_s*/samples.jsonl"),
    ]

    rows, unrun, conflict = [], 0, 0
    for pat in patterns:
        r, u, c = load_samples(pat)
        rows += r
        unrun += u
        conflict += c
    # a sequence can appear in more than one pattern; dedup again across sources
    seen, deduped, cross_conflict = {}, [], 0
    for r in rows:
        k = r["seq"]
        if k in seen:
            if seen[k]["y"] != r["y"]:
                cross_conflict += 1
            continue
        seen[k] = r
        deduped.append(r)
    rows = deduped
    conflict += cross_conflict

    if not rows:
        print("no leak/safe V2 samples found yet -- run gen/rl_v2_bootstrap.sbatch "
              "first (the oracle must actually adjudicate, not read unrunnable).",
              file=sys.stderr)
        # Write a placeholder so the paper build never dangles on a missing file.
        Path(a.out).write_text(
            "# SPECTRE_V2 leak-vs-safe filter (retargeted ranker)\n\n"
            "No adjudicated leak/safe V2 samples found yet. Populate "
            "`gen/rl_v2_bootstrap_samples.jsonl` with a healthy Spectector-"
            "Combined run (sif staged to the compute node, `-v 2`, `-w 50 "
            "--steps 20000`) and re-run `python3 rank/eval_v2_filter.py`.\n")
        return 1

    y = np.array([r["y"] for r in rows])
    rnd = np.array([r["round"] if r["round"] is not None else -1 for r in rows])
    lens = np.array([len(opcodes(r["seq"])) for r in rows], float)
    n_leak, n_safe = int(y.sum()), int((1 - y).sum())

    L = ["# SPECTRE_V2 leak-vs-safe filter (retargeted ranker)", "",
         f"{len(rows)} unique leak/safe sequences "
         f"(LEAK {n_leak} / SAFE {n_safe}; {unrun} unrunnable excluded, "
         f"{conflict} conflicting dropped). Source: Spectector-Combined `-v 2` "
         "oracle labels (gen/rl_v2_bootstrap). RL round is the confounder, so "
         "AUCs are within-round and the learned head uses a prospective "
         "(train rounds $\\le r$, test $r{+}1$) split.", ""]

    if n_leak == 0 or n_safe == 0:
        L += [f"**Only one verdict class present (LEAK={n_leak}, SAFE={n_safe}); "
              "a leak-vs-safe filter is undefined until both exist.** V2's ~0.8% "
              "leak rate means a single bootstrap often yields 0 leaks -- add "
              "rounds, or seed from the i5 hardware V2 campaign.", ""]
        Path(a.out).write_text("\n".join(L) + "\n")
        print("\n".join(L))
        return 0

    L += ["| scorer | within-round AUC | prospective AUC | 95% CI (pooled) |",
          "|---|---|---|---|"]

    def add(name, score, prosp=None):
        wr = within_round(score, y, rnd)
        lo, hi = boot_ci(score, y)
        pr = f"{prosp:.3f}" if prosp is not None else "---"
        L.append(f"| {name} | {wr:.3f} | {pr} | [{lo:.3f}, {hi:.3f}] |")

    add("sequence length (the bar)", lens)

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
        recs = [{"sequence": list(r["seq"]), "arch": a.arch} for r in rows]
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

    rp_len, rand = efficiency_curve(lens, y)
    L += ["", f"{enc_note}", "",
          "## Leaks per oracle call (send the top-scored half to the oracle)", "",
          "| ordering | leak rate in top 50% | vs random |", "|---|---|---|",
          f"| length | {rp_len:.3f} | {rand:.3f} |"]
    if ok.any():
        rp_o, _ = efficiency_curve(np.where(ok, opc_oof, 0.5), y)
        L.append(f"| opcode-bag LR | {rp_o:.3f} | {rand:.3f} |")
    L += ["", "A scorer only helps if its within-round AUC clears 0.5 and its "
          "top-half leak rate clears the base rate. With V2's ~0.8% base rate "
          f"(LEAK {n_leak}/{len(rows)}) these are low-n estimates; re-run as the "
          "bootstrap (or the i5 hardware V2 campaign) adds leaks.", ""]

    Path(a.out).write_text("\n".join(L) + "\n")
    print("\n".join(L))
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
