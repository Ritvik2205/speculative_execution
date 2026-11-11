# Step 2 status — 2026-11-11

Follows `docs/NEXT_STEPS_2026-11-10.md` step 2 (smallest leaking sequences, novelty) and the
victim work it forced. All numbers are Spectector verdicts on gate-only victims (the body must
carry the leak), x86_64, SPECTRE_V1 unless stated. Raw rows are under `gen/step2_runs/`.

## Headline

**On every V1 victim built so far, the generator leaks at the same rate as length-matched benign
code that is processed the same way.** The lifts reported earlier came from comparing against a
benign row that had its conditional branches stripped.

| body source (n=100 each, 3 independent runs) | leak / n | attacker-indexed | self-gated |
|---|---|---|---|
| benign, slot stream, branches stripped (old bar) | 0.32 / 0.21 / 0.29 | all | 0 |
| **benign, slot stream, conditional branches kept** | **0.62 / 0.60 / 0.62** | 0.03–0.05 | 0.56–0.59 |
| generator, `leak` token (`generator_indexed.pt`) | 0.63 | 0.05 | 0.58 |
| generator v3, `leak` token (attacker-indexed only) | 0.58 | 0.01 | 0.57 |
| generator v3, `selfgated` token | 0.67 | 0.04 | 0.63 |
| random tokens | 0.04–0.06 | 0 | all |

Source: `split_c3.md`, `c3_*.md`. Wilson 95% intervals are about ±0.10 at these n; none of the
generator rows is separable from the branch-keeping benign row.

What this means: under Spectector's policy (all memory secret, registers public) a conditional
branch followed by a load whose value reaches an address is a violation. Ordinary compiled code
does that about 60% of the time in a ~25-instruction window. The generator reproduces the rate
of its training distribution; it does not find leaks at a higher rate than real code contains
them.

## What was built and measured, in order

1. **Minimiser and novelty test** (`gen/minimality_gate.py`): ddmin to a 1-minimal core with the
   oracle as the predicate; core identity is the slot stream; novelty is "embeds in no training
   window as an ordered subsequence under a consistent renaming".
2. **First victim ("sni")**: leaks minimise to a 2-instruction load → dependent-address chain
   through registers unrelated to the attacker index (`minimality_sni.md`). The step-1 loop lift
   of +0.14 was the loop learning pointer chases.
3. **V4 store-bypass victim**: whole-function assembly, adjudicated with Spectector-Combined
   `-v 4`. Truth table passes (safe under `-v 1`, leak under `-v 4`, fence safe, no-store control
   safe). Leak rates by source: see `v4_gate_sources.md`.
4. **Attacker-indexed victim** (`victim="indexed"`): the body runs on both sides of the bounds
   check, so anything the architectural run already exposes is not a leak. A first version
   (sequential double run with a save area) gave false leaks through stores aliasing the save
   area; its numbers are retracted and its artefacts are named `_v0_saverestore`.
5. **Loop on the indexed victim** (5 seeds, 6 rounds, k=60): round 5 − round 0 = +0.06, whole-run
   mean − round 0 ≈ +0.02 (per seed +0.08, −0.01, −0.06, +0.02, +0.06). Fresh samples from the
   five fine-tuned checkpoints: 0.65–0.73 against 0.67 for the base generator. No loop lift.
6. **Minimal cores on the indexed victim** (`minimality_indexed.md`): generator cores are median
   4 instructions, and 46/60 (round 0) and 50/60 (round 5) do not involve the attacker register.
   The shape is `jcc; load; dependent load; label`.
7. **Control victim** (`victim="unindexed"`: same frame, register in bounds, no outer bounds
   check). A leak there comes from the body's own branch. Split of all existing leaks
   (`split_indexed.md`): about 90% of generator leaks are self-gated.
8. **Corpus relabel with the control** (`gen/data/indexed_train_v3.jsonl`): of 430 V1 training
   windows that leak on the indexed victim, 13 are attacker-indexed and 417 self-gated (all
   classes: 34 and 533).
9. **Fair benign bar** (`benign_slot_jcc`): the benign sampler had been dropping every
   conditional branch. With them kept, benign matches the generator (table above).

## Retractions

- "Generator 0.60–0.66 vs benign 0.26 on the indexed victim" — the benign row had no branches.
- "All generator leaks go through the attacker register" — that field recorded which register
  the body named, not whether the leak needed it.
- "Leak conditioning adds +0.16" (0.60 `leak` vs 0.44 `safe`) stands as a measurement, but both
  sit at or below the branch-keeping benign rate, so it is steering between ordinary-code
  shapes, not toward a rarer target.
- Every yield figure on the v0 save/restore victim.

## What self-gated does and does not mean

Self-gated is not "fake". A window holding its own bounds check, a load and a dependent load is
the textbook V1 gadget, and it is self-gated by construction. The class mixes complete gadgets
with any guarded pointer dereference, and Spectector's default policy cannot tell them apart:
it has no notion of which memory is out of bounds. The control victim separates "needs the
host's bounds check" from "brings its own branch", nothing finer.

## Consequence for the plan

The symbolic oracle with its default policy is not a discriminating target for V1: real code
already saturates it. Three ways forward, in order of preference:

1. **Hardware as the judge** (step 3, i5): emit generator output in Revizor's program shape and
   compare violation rate per test case with Revizor's own random generator at equal budget.
   Revizor's contract comparison does not flag ordinary guarded dereferences. Needs the i5.
2. **A stricter Spectector policy**: mark only a designated secret region as high and require
   the speculative observation to depend on it (policy file instead of all-memory-secret). This
   can be done locally and would give the minimiser and the loop a target benign code does not
   hit 60% of the time.
3. **Use the pipeline as a labeller, not a generator**: the oracle, the minimiser and the
   three-way label (safe / self-gated / attacker-indexed) already give a developer-facing
   answer for a given window, including the smallest leaking core. That part works today.

## New code this round

- `gen/synth/spectector_gadgets.py`, `gen/decode.py`: `victim="unindexed"` control.
- `gen/split_indexed_leaks.py`: splits leaks by speculation source.
- `gen/build_indexed_corpus.py`: `--control`, `--only-leaks-of`, label `selfgated`.
- `gen/generator.py`, `gen/train_generator.py`: vocabulary carries extra conditioning labels.
- `gen/eval_gate_controls.py`: `benign_slot_jcc` row (conditional branches kept).
- `gen/eval_v4_gate_sources.py`: V4 victim leak rate by source.
- Tests: `tests/gen` 425 passed, 8 skipped.

## Known gaps

- Generator sampling in `eval_gate_controls.py` is not torch-seeded; benign length matching
  follows the sampled lengths, so benign rows vary run to run (0.21–0.36 for the old bar).
- A body carrying both leak kinds is counted self-gated.
- Benign and generated bodies both send every conditional branch to the end of the body; real
  branch targets are not preserved by the slot stream.

## V4 store-bypass victim, leak rate by source (`gen/step2_runs/v4_gate_sources.md`)

n=100 windows per source through the slot stream, Spectector-Combined `-v 4`.

| source | victim store present | adjudicable | leak / n |
|---|---|---|---|
| training windows labelled SPECTRE_V4 | yes | 19 | 0.04 |
| training windows labelled SPECTRE_V4 | no | 19 | 0.04 |
| training windows labelled SPECTRE_V1 | yes | 99 | 0.71 |
| training windows labelled SPECTRE_V1 | no | 97 | 0.23 |
| benign (branches stripped) | yes | 98 | 0.20 |
| benign (branches stripped) | no | 98 | 0.05 |

- 81 of 100 V4-labelled windows are not adjudicated: the analysis hits the step limit and times
  out (rc 124). Of the 19 that are, 4 leak.
- V1-labelled windows leak far more on the store-bypass victim than V4-labelled ones. The corpus
  label SPECTRE_V4 does not predict store-bypass leakage on this victim.
- The benign row here still has branches stripped; it needs the branch-keeping row before any V4
  generation claim. No V4 generator was trained.

## Addendum (same day): stricter oracle, and the hardware comparison prepared

### Tainted victim (`victim="tainted"`, control `tainted_ctl`)

All non-attacker registers and the memory they can reach start concrete (Spectector initial
configuration, named in the victim source and picked up by `oracle/spectector_oracle.py`); only
memory reached through the attacker's pointer is symbolic. Truth table: 27/27
(`tests/gen/test_gate_tainted.py`). Guarded pointer chases through uncontrolled registers are
safe; attacker-pointer gadgets leak, bare or behind their own branch; the control catches
addresses built outside the concrete world ("escapes").

| source (n=100) | leak | attacker-dependent | escape |
|---|---|---|---|
| benign, slot stream, branches kept | 0.46 | 0.43 | 0.02 |
| benign, slot stream, branches stripped | 0.25 | 0.24 | 0.00 |
| generator (`generator_indexed.pt`, `leak`) | 0.28 | 0.15 | 0.13 |
| generator v3 (`leak`) | 0.22 | 0.12 | 0.10 |
| random tokens | 0.00 | 0.00 | 0.00 |

Source: `t1_controls.md`, `t1_split.md`. The generator is below benign here too. The benign rows
get the best of up to six attacker-register candidates and the generator names one, so the gap
overstates the difference; the same candidate search on generator output is not yet run. Half of
the generator's leaks on this victim are escapes.

### Hardware comparison (step 3, H3) — built, not yet run

- `gen/revizor_native.py`: native Revizor programs as unit tokens (an instruction plus its
  instrumentation lines) and a factored shape + register stream; all 173 local originals
  round-trip.
- `gen/revizor_arms.py`: arms `learned` (class-conditioned transformer; copies of training
  programs dropped — about half of all samples were copies), `unigram`, `mutation`
  (shuffle / splice), `replay` (the known violators). 12,173 programs under `hw/gen_vs_random/`
  for SPECTRE_V1, SPECTRE_V4, MDS, L1TF; every one is accepted by Revizor's own parser and
  assembler (upstream sca-fuzzer, 2026-10-30, run locally without the executor).
- `oracle/revizor/scripts/run_gen_vs_random.sh`: on the i5, generates the random arm with
  `rvzr generate` under the same config and runs every program through the same
  `rvzr reproduce -t <program> -n 100`, arms interleaved, resumable.
- Training data caveat: only the 173 hardware-label originals are available locally in native
  form (54 V1, 22 V4, 33 MDS, 64 L1TF), so the learned arm is trained on those, not on the
  552-program pool that lives on the i5.

Fair-candidate check (from the same rows, no new oracle calls): scoring each benign window on
its FIRST attacker candidate only (mean 2.6 candidates per window otherwise) gives
branch-keeping benign 0.37 leak / 0.34 attacker-dependent, branch-stripped 0.21 / 0.20. The
generator's 0.15 attacker-dependent is still below both, so the candidate search does not
explain the gap.

Update: the learned arm is now trained on the full 552-program train pool (native programs from
the i5, `--pool-root`; 0 records missing, 0 overlap with the 173 held-out programs) for 10
epochs, the count that minimises loss on the held-out programs (5: 4.23, 10: 4.12, 20: 4.37,
40: 6.05, 80: 8.22 nats/token; at 80 epochs 68% of V1 samples were copies of training
programs, at 10 none). 12,552 programs, all accepted by Revizor's parser.

### Minimal cores on the tainted victim (`gen/step2_runs/t1_cores.md`)

113 attacker-dependent leaks minimised (1-minimal, Spectector as the test), each core re-checked
on the control.

| source | cores | body median | core median | core range | distinct | core safe on control |
|---|---|---|---|---|---|---|
| benign, raw | 21 | 25 | 3 | 2–4 | 18 | 21/21 |
| benign, slot stream | 24 | 25 | 2 | 2–4 | 22 | 24/24 |
| benign, slot stream, branches kept | 40 | 28 | 4 | 2–6 | 34 | 40/40 |
| generator | 15 | 26 | 4 | 2–6 | 15 | 15/15 |
| generator v3 | 12 | 33 | 4 | 2–5 | 12 | 12/12 |

Every core is attacker-dependent by construction of the check (113/113 safe once the attacker
value is removed). The shapes are what a developer would recognise: load through the attacker
pointer then use the value as an address (`movq 16(%r15), %rsi; movb %dl, (%rsi,%rcx)`), or
load through it then branch on the value. Benign and generated code yield the same shapes; the
generator's are not smaller or different in kind.
