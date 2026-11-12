# 01 — Second microarchitecture for the hardware labels

Status: needs-triage
Type: grilling
Blocked by: nothing (decision between the project owner and Claude; deliberately kept out of the
2026-11-12 supervisor update)

## Question

Every hardware label in the project (806 fence variants, the 1,138 hardware pairs in
`eval/pairs/data/pairs_hw.jsonl`, the base rates, the queued generator comparison) comes from one
CPU, an i5-8300H. Do we ask for a second machine, and if so for what?

## What to settle

1. Is a single-CPU benchmark defensible if stated as a limitation, or does the benchmark claim
   need a second microarchitecture?
2. If a second machine: which one helps most?
   - AMD Zen (Ryzen / EPYC): covers AMD-specific behaviour (RETBLEED / INCEPTION / V2 classes that
     the i5 campaign does not give us).
   - Older Intel (pre-2018 microcode): keeps more of the unpatched behaviour.
   Requirements as stated to the supervisor earlier: bare-metal Linux, root and bootloader access
   for kernel boot flags, not a VM (needs performance counters), ~8 GB RAM, ~30 GB disk.
3. Scope on a second machine: relabel a subset of the pair benchmark only (cheap, tests label
   portability), or repeat the generator comparison too?
4. Capacity on the current i5: one job at a time, ~2.5 GB free disk, full comparison not yet
   timed. Does a second machine also relieve the queue, or only add labels?
5. What is already available: the supervisor mentioned old desktops with unknown CPUs. Check
   what they are before asking for anything new.
6. Whether to grow the hard pair sets (92 fence-free, 76 counterfactual) with hardware time
   before or after the generator comparison.

## Notes

- Do not raise this with the supervisor until 1–3 are settled here.
- Related: `docs/PLAN_2026-11-11_post_review.md` section 3 (contribution 1) and section 4 A.

## Comments
