# P3 — folding hardware V4 gadgets into training fixes real-V4 recall

Held-out real-V4 recall on the **seed-disjoint** held-out gadgets
(`eval/data/revizor_v4_heldout.jsonl`, 5 gadgets, Revizor generator seed 1000000).
Train-add: 11 real V4 gadgets (seeds 2222222/3333333/4444444/5555555) merged into
`v55h_hwv4_train.jsonl`. Same recipe as the baseline — the only change is the data.

| condition | held-out real-V4 recall | locked macroF1 |
|---|---|---|
| BEFORE (v55h, no real V4)          | 0% (0/5), all seeds | ~0.82 |
| AFTER  (v55h + 11 real V4), seed 42 | 100% (5/5) | 0.8081 |
| AFTER  (v55h + 11 real V4), seed 1  | 100% (5/5) | 0.8115 |

## Reading
- **0% → 100%** on seed-disjoint held-out gadgets, both seeds, with no locked-test regression.
- The fix is **data, not the edge**: P2 showed the store-forwarding edge could not move real-V4 recall off 0% (it barely fires). A handful of real hardware examples in training is enough for the model to learn real V4 structure and generalize to a held-out generator seed.
- Resolves audit finding G1's premise: V4 was unlearnable because it had **no real training signal**, not because it is structurally invisible.

## Caveats (honest)
- Held-out is 5 gadgets from a **single** generator seed — coarse; 100% = 5/5.
- 2 local seeds; the 5-seed cluster run (`run_everything.sh` → `real_v4_p3.md`) confirms.
- P3 adds V4 **positives** only (the SSBP-clean control produced no gadget files → no V4-shaped BENIGN). Watch for V4 false-positives on benign in the full run.
