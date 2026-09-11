# P3 — held-out real-V4 recall + V4 false-positive rate: baseline vs trained-with-real-V4 (mean±95%CI)

Both scored on the seed-disjoint held-out set (eval/data/revizor_v4_heldout.jsonl), which contains BOTH real SPECTRE_V4 positives and fenced (SSBP-mitigated) V4-shaped BENIGN negatives, seed-disjoint from training for both classes.

| metric | BEFORE (v55h, no real V4 in train) | AFTER (v55h + 11 real V4 + 11 fenced BENIGN in train) |
|---|---|---|
| held-out SPECTRE_V4 recall | 0.000±0.000 | 1.000±0.000 |
| V4 false-positive rate (held-out V4-shaped BENIGN predicted non-BENIGN) | 1.000±0.000 | 0.200±0.392 |

**Verdict:** folding real V4 into training LIFTS held-out real-V4 recall

_Caveat: held-out is 5 positives + 5 fenced-BENIGN twins from a single generator seed — coarse, exploratory._
