# Generator adjudicability fix — consolidated results (2026-10-14)

All numbers from the x86 cluster Spectector oracle (authoritative) unless noted.

## The problem
Cold generations failed the oracle en masse: **6% adjudicable (112/119
unrunnable), 0 leaks**, because of control flow the oracle cannot model / the
splice cannot host (mid-body `ret` stranding the transmit; `.+2` branches into
the middle of an instruction).

## The fixes (no reward retraining)
1. **Splice-safety decode mask** (`gen/splice_safety.py`): forbid stranding CF
   (unconditional direct jumps, indirect transfers) per class; keep each class's
   own mechanism.
2. **Realizer forward-label retarget** (`gen/realize.py`): label-free `.+2`
   branches now skip forward to an end label; the transmit sink stays reachable.
3. **`ret` decoupled** (`gen/splice_safety.py` + `gen.decode.build_gen_body`):
   `ret` is NOT decode-masked (that killed the stop cue and length control); it
   is stripped at splice for non-return-mechanism classes. RETBLEED/RSB keep it.
4. **Length-conditioning token** (`gen/generator.py`, `generator_lencond.pt`):
   `<LEN_short|med|long>`; `--target-len med` keeps gadgets in the adjudicable
   band and makes the model emit COMPLETE gadgets of that length.

## Results (cluster)

### Length-controlled yield loop (`gen/rl_lencond.sbatch` -> `gen/rl_lencond.md`)
`generator_lencond.pt`, 5 rounds x k=60, at two target lengths:

**`--target-len med`:**

| class | per-round validated-leak yield | adjudicable | leak |
|---|---|---:|---:|
| SPECTRE_V1 | 0.967 / 0.900 / 0.967 / 0.967 / 0.900 | 282/300 (94%) | **282/300 (94%)** |
| SPECTRE_V4 | 0.100 / 0.083 / 0.100 / 0.100 / 0.133 | 217/300 (72%) | 31/300 (10%) |

**`--target-len long`:**

| class | per-round validated-leak yield | adjudicable | leak |
|---|---|---:|---:|
| SPECTRE_V1 | 0.917 / 0.867 / 0.983 / 0.950 / 0.917 | 278/300 (93%) | 278/300 (93%) |
| SPECTRE_V4 | 0.400 / 0.317 / 0.467 / 0.450 / 0.350 | 278/300 (93%) | **119/300 (40%)** |

### The length token steers yield
V4 leak yield **0.10 (med) -> 0.40 (long)**, a 4x lift, matching the prior
length profile (V4 leaks concentrate at >16 instr; the long-run leak gadgets
mean 52 instr). V1 stays ~0.93-0.94 at both lengths (V1 leaks across all
lengths). The `<LEN_*>` token is a working yield-steering knob: **med** for V1
leaks + V4 negatives, **long** for V4 leaks. Overall adjudicable: med 83%,
long 93%.

### Before vs after (V1)
| config | adjudicable | leak yield |
|---|---:|---:|
| cold base | 6% | ~0 |
| crude `--max-len 18` (truncation, expanded model) | 0% (42/42 unrun) | 0 |
| **length token + med (lencond)** | **94%** | **0.94** |

## Readings
- The adjudicability-fix chain lifts cold V1 from 6%/~0 to **94% adjudicable /
  0.94 leak at round 0** — no GRPO, no reward retraining. **Step 3 (GRPO) is
  not needed** for V1; the clean base + length control carry it.
- **The `--max-len` lever truncates mid-gadget and BREAKS gadgets** (0%
  adjudicable). The length *token* is the correct mechanism — it emits complete
  gadgets of the target length. Prefer `--target-len` over `--max-len`.
- **V4 leaks are long-length.** med yields mostly SAFE (useful negatives); for
  V4 leaks run `--target-len long`. The length token makes this a knob.
- V1 yield is flat across rounds (already ~0.93 at round 0): the fine-tuning
  loop adds little once the base is clean -- the gain is the fixes, not the loop.

## Follow-ups
- V4 leak run: `TARGET_LEN=long sbatch gen/rl_lencond.sbatch`.
- Fold these into the paper (replace the diversity yield \todo; report the
  6%->94% adjudicability fix and the length knob).
