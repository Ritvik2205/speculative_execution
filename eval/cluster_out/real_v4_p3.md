# P3 — held-out real-V4 recall: baseline vs trained-with-real-V4 (mean±95%CI)

Both scored on the seed-disjoint held-out gadgets (eval/data/revizor_v4_heldout.jsonl).

- BEFORE (v55h, no real V4 in train): 0.000±0.000
- AFTER  (v55h + 11 real V4 in train): 1.000±0.000

**Verdict:** folding real V4 into training LIFTS held-out real-V4 recall

_Caveat: held-out is 5 gadgets from a single generator seed — coarse, exploratory._
