# Grouping hardware findings by root cause: Osiris's method against ours

## What Osiris does (arXiv 2106.03470, Sec. 4.4 and Appendix A; read from the full text by a research agent)

- Unit: a confirmed (reset, trigger, measurement) triple of single instructions.
- Grouping used for the reported numbers: the instruction-set extension of the trigger and the
  measurement instruction. Category and memory behaviour are named as possible properties, not
  reported as used.
- Automatic, and stated not to remove all duplicates. Going from clusters to named channels is
  manual.
- Scale (Table 7): 27,512–68,597 reported triples per CPU become 16–26 clusters (104–186 when
  the reset instruction is included). 2 known and 4 new channels are reported in the end; the
  paper does not say how clusters map to them.

## The same idea on our 113 minimised cores (`gen/step2_runs/t1_cores.jsonl`)

| Grouping | Groups |
|---|---|
| Canonical core: mnemonics, operand kinds and the pattern of register / displacement reuse (ours) | 87 |
| Template: mnemonics and operand kinds, reuse pattern dropped | 72 |
| Instruction category with memory use, in order (closest to what Osiris describes) | 24 |
| Set of instruction categories (Osiris's granularity) | 6 |

The six coarsest groups: move only (66), branch + compare + move (26), arithmetic + move (8),
branch + compare (7), compare + move (5), arithmetic + branch + move (1).

## Reading

- Osiris's grouping merges far more than ours: 113 cores become 6 groups against our 87. For a
  count of root causes ours is too fine: two cores that differ in one register reuse are counted
  as two causes.
- Osiris's is too coarse for our programs: all 66 "move only" cores, which include both
  load-then-load and load-then-store, fall into one group.
- The middle level, category plus memory use in order (24 groups), keeps load-then-load apart
  from load-then-compare-then-branch and still merges register renamings.

## Decision for the hardware comparison (my call; change if wanted)

Report distinct findings at two levels, both computed automatically from the minimised core:
the canonical core (fine, for "is this a copy of a training program") and the category-and-memory
sequence (coarse, for "how many kinds of leak"). The primary metric of the comparison stays
"distinct minimised cores per campaign"; the coarse count is reported beside it so that an arm
cannot win by producing many register-renamed copies of one leak.

Not done: this was computed on symbolic-oracle cores, since no hardware cores from the new
campaign exist yet. The 24-group level has to be re-derived on hardware cores when they land.
