# Generator adjudicability fix — concrete plan (2026-10-14)

## Problem (measured)
Cold sampling of `generator_expanded.pt` produces gadgets the x86 oracle cannot
adjudicate: on the cluster yield check, **112/119 unrunnable, 0 leak** (V1 0/60,
V4 7/61). Root cause, confirmed by inspecting a generated `.c`:
1. **`retq` mid-body** — the spliced transmit (`shl $6; movb (probe)`) lands
   *after* the return, so the leak sink is unreachable.
2. **`jae .+2`** — the realizer gives label-free branches a self-relative target
   (`branch_self_rel`), which jumps into the middle of the next instruction →
   garbage control flow the upstream (conditional-branch) Spectector rejects.
Separately, **leak yield rises with length** (V1 0.18/0.81/0.84, V4
0.00/0.18/0.58 for S/M/L): short gadgets rarely hold a full secret→transmit
chain. Adjudicability itself is a *loop* property (V1 0.51 cold → 1.00 round 4),
not cold.

## Sequence (cheap/deterministic first, then training)

### Step 1 — class-aware splice-safety decode mask  *(no retraining)*  ← START HERE
New `gen/splice_safety.py`, mirroring `gen/arch_purity.py`: attach a per-class
DISALLOW id tensor that `CondTransformerLM.sample()` applies alongside the
arch mask. Forbidden opcodes are class-conditioned on what each oracle models:
- **Conditional-branch classes** {SPECTRE_V1, SPECTRE_V4, L1TF, MDS}: forbid
  `ret`-family, unconditional `jmp`/`jmpq`, and indirect (`*reg`/`*mem`)
  `call`/`jmp`. Keep forward conditional branches, direct calls, loads/stores,
  arithmetic — the shape the upstream oracle models and the victim template
  expects.
- **Indirect-mechanism classes** {SPECTRE_V2, BHI, INCEPTION}: the indirect
  branch *is* the mechanism → keep indirect call/jmp; forbid `ret` (not theirs).
- **RETBLEED**: `ret` *is* the mechanism → keep it; mask nothing CF-related.
Acceptance: generated V1/V4 bodies contain no `ret` / no `.+N`-bound indirect
transfer; sampler still emits non-trivial sequences (not collapsed).

### Step 2 — realizer branch-reachability gate  *(no retraining)*
In `gen/realize.py` `realize_sequence`: when a conditional branch would take
`branch_self_rel` (`.+2`), instead target a **label defined at the end of the
gadget** (a forward skip) — assemblable *and* a forward conditional branch the
PHT model adjudicates. After splice, reject any sequence whose secret→transmit
sink is unreachable (same reachability notion as the pre-oracle gate), so it
never reaches the oracle.
Acceptance: re-run the cold cluster yield check — cold adjudicability for V1/V4
rises materially above the current ~6%; the `.+2` and mid-body-ret unrunnables
disappear.

### Step 3 — GRPO with oracle reward  *(retraining; supervisor-endorsed)*
Replace/augment rejection-sampling SFT with GRPO: reward = +1 leak, 0 safe,
**−1 unrunnable**. Teaches the base model to avoid unadjudicable output (raises
*cold* yield + cuts wasted oracle calls), unlike selection-only SFT. Never the
classifier as reward (that hurt and was dropped) — oracle verdict only.
Acceptance: cold (round-0) adjudicable rises vs the current base; same or better
confirmed-leak yield at convergence; fewer oracle calls per confirmed leak.

### Step 4 — length / graph-size conditioning token  *(retraining; also the diversity ask)*
Add `<LEN_short|med|long>` to the prompt. Generate at M/L for yield, short for
diversity (short `safe` gadgets are useful detector/filter negatives, not
waste). Turns the length↔yield tension into a controllable knob and closes the
paper's diversity story.
Acceptance: requested-bucket hit rate high; leak yield per requested bucket
matches the loop's length profile; diversity (unique-rate/similarity) holds.

## Intrinsic, not chased
Very short gadgets (≤~6 instr) physically cannot hold secret→transmit, so some
short-bucket leak scarcity remains. Managed by Step 4 (short = negatives), not
eliminated.

## Status
- [ ] Step 1 (in progress)
- [ ] Step 2
- [ ] Step 3
- [ ] Step 4
