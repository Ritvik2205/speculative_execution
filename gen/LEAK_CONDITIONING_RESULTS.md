# Leak-conditioning: results (A+B → 5a → 5b → step 6 → triage)

Status: **arc complete.** A leak-conditioning token, trained on hardware-labelled
matched pairs, steers generation to oracle-confirmed *unmitigated* attacks. The
win is real and significant **per adjudicable gadget**; converting it to raw
discovery yield is capped by the symbolic oracle's instruction coverage, not by
the token. Spec: `gen/LEAK_CONDITIONING_SPEC.md`. Model: `gen/generator_leakcond.pt`.

## What was built

- **A — `<MIT_{leak,safe,unknown}>` token** (`gen/generator.py`): mirrors the
  optional `<LEN_*>` machinery; `--leak-cond` off is byte-identical to the
  pre-leak-cond generator (proven, `gen/check_leak_cond.py` ALL PASS). Prefix
  `cls, arch, mit, len`; sample default `mit=leak`, encode default `unknown`.
- **B — contrastive corpus** (`gen/build_leakcond_corpus.py`): the 821 HW
  fence-variants (leaking arm → `leak`, mitigated twin → `safe`, **class
  preserved** — not relabelled BENIGN) + the 725 HW pool (→ `leak`). Group-held
  out by base violation-id (31/154). Leakage guard: variant leak arms are
  transforms of pool originals (0 byte-identical overlap), so a held-out base is
  withheld from **every** source incl. pool. v54 base stamped BENIGN→safe,
  attack→unknown.
- Retrain from scratch: loss 3.07→0.88 / 20 epochs; `gen/generator_leakcond.pt`.
- **RL lever**: `rl_from_oracle.py --mit {leak,safe,unknown}` (no-op for a
  non-leak-cond generator).

## Results

### 5a — structural gate (does the token move output?) — YES, 4/4
Mean fence-token count, `mit=leak` → `mit=safe`, n=200/class:

| class | fence leak→safe | %-with-fence leak→safe | opcode JSD | exact overlap |
|---|---|---|---|---|
| V1 | 0.40 → 9.0 | 20% → 84% | 0.17 | 0.000 |
| V4 | 1.73 → 17.6 | 15% → 86% | 0.18 | 0.000 |
| MDS | 3.44 → 21.8 | 22% → 90% | 0.15 | 0.000 |
| L1TF | 3.0 → 31.5 | 28% → 98% | 0.29 | 0.005 |

`mit=leak` = fence-sparse; `mit=safe` = heavily fenced; distributions fully
separate. First mitigation-awareness knob across all 4 HW classes.

### 5b — oracle leak-rate (Spectector), per adjudicable gadget
| class | arm | adjudicable | leak_rate | Wilson CI |
|---|---|---|---|---|
| **V4** | leak | 20 | **0.80** | 0.58–0.92 |
| **V4** | safe | 49 | **0.04** | 0.01–0.14 |
| V1 | leak | 20 | 1.00 | 0.84–1.0 |
| V1 | safe | 53 | 0.91 | 0.80–0.96 |

**V4: decisive, non-overlapping CIs — the token controls whether a V4 gadget
leaks, oracle-confirmed.** V1: inconclusive, *harness-confounded* — the
Spectector V1 victim template (`if(i<len) v=arr[i]; probe[v*64]`) carries the
bounds-check-bypass itself, so the spliced body + its fences don't gate the
template's speculative path; V1 leaks either way. V4's template routes the leak
*through* the body (store→stale-load→transmit), so body fences gate it.

### Step 6 — net yield (confirmed LEAK per *sample*, folds in realization cost)
n=80/arm; baseline = `mit=unknown` (neutral, same weights):

| class | arm | leak_rate(adj) | net_yield/K | CI |
|---|---|---|---|---|
| V4 | leak | 0.71 | 0.1875 | 0.117–0.287 |
| V4 | unknown | 0.17 | 0.1125 | 0.060–0.200 |
| V4 | safe | 0.05 | 0.0375 | 0.013–0.104 |
| V1 | leak | 0.97 | 0.36 | 0.27–0.47 |
| V1 | unknown | 0.96 | **0.85** | 0.76–0.91 |

V4 net yield +1.7× (0.19 vs 0.11) but CIs overlap (z≈1.3, n.s. at n=80). V1 net
yield *hurt* (−0.49) — V1 leaks regardless of mit, so `mit=leak` only adds the
realization penalty. The per-adjudicable win does not fully survive to
per-sample because `mit=leak` sends ~60–75% of gadgets to UNRUNNABLE.

### Triage — WHY mit=leak gadgets are UNRUNNABLE (the net-yield ceiling)
Reason histogram (V4, n=40 leak+unknown): **52 × `unsupported_ins≥1`**, 1 × timeout.
Not compile errors, not loops. Spectector hit ≥1 instruction outside its model
(the Revizor-idiom `bt`/`bts`/`bsf`/`cmov`/`lock…` that fill fence-sparse leak
gadgets), and **one unsupported instruction voids the whole verdict**
(`unsupported_ins==0` gate). Many discarded gadgets were already adjudicated
`status='data'` (= leaking) — real leaks thrown away over one unmodelled
instruction. `mit=leak` is worse because fence-sparse gadgets pack more exotic
payload; `mit=safe`/`unknown` dilute with modelled lfences.

## Conclusion (the honest headline)

1. **Leak-conditioning is a validated, oracle-grounded control over whether the
   generator emits mitigated or unmitigated attacks** — significant for V4
   per-adjudicable (0.80 vs 0.04), structurally confirmed for all 4 classes.
2. **Net discovery yield is capped by Spectector's instruction coverage, not by
   the token.** The oracle models a conditional-branch subset; the generator
   (trained on real hardware) emits full x86, so most fence-sparse gadgets carry
   ≥1 unmodelled instruction and are discarded. This is an *oracle* property.
3. **V1 cannot be tested in the current harness** (body-independent template).

## Caveats
- Single checkpoint/seed; saturated structural result but a multi-seed retrain
  would harden the oracle numbers.
- `mit=safe` learned to carpet-bomb lfences (echoes the `fence_all` training
  arm), not one well-placed fence; fine for our goal (the useful arm is
  `mit=leak`), but upweight `twin`/`shifted` for realistic single-fence safes.
- x86-only (that is where the HW labels are); arm64/riscv64 stay `unknown`.

## Follow-up B (guarded, NOT yet done): recover net yield

The ceiling is the `unsupported_ins==0` gate voiding verdicts. A guarded relax
could reclaim the yield **without** biasing the generator:

- Treat `status in {data,control}` as LEAK even with `unsupported_ins>0`
  **only if** the unsupported instruction is provably **not on the speculative
  leak path** — i.e. Spectector still derived the leak witness without it.
  Requires parsing which instruction was skipped and confirming the data/control
  observation does not depend on it (else a mis-modelled instruction could
  manufacture a false leak).
- Or run the upstream path with `--skip-uns --parse-uns` (skip-and-continue) and
  re-validate against the current V1/V4 numbers to confirm it does not inflate
  leaks before adopting.
- **Do not** mask Spectector-unsupported mnemonics at generation (rejected
  option A): it makes the generator emit "Spectector-shaped" gadgets, defeating
  the point of training on real hardware.

Until B is validated, report the **per-adjudicable** leak-rate as the result and
state net yield as oracle-coverage-limited.

## Reproduce
```
sbatch gen/check_leak_cond.sbatch              # A no-op proof
sbatch gen/train_leakcond_generator.sbatch     # B corpus + retrain
sbatch gen/eval_leak_conditioning.sbatch       # 5a structural gate
sbatch gen/eval_leak_conditioning_oracle.sbatch# 5b oracle leak-rate
sbatch gen/eval_leak_netyield.sbatch           # step 6 net-yield A/B
sbatch gen/triage_unrunnable.sbatch            # UNRUNNABLE reason histogram
```
