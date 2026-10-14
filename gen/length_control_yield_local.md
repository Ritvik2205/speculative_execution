# Length-controlled yield — local probe (adjudicability fixes)

**Local emulated oracle** (arm64 host, amd64 Spectector under qemu — the venue
that failed ~everything before the fixes), `generator_lencond.pt`,
`--target-len med`, **round 0 (no fine-tuning)**, n=30 (V1 15 + V4 15).

| metric | cold base (pre-fix) | fixes + med length |
|---|---:|---:|
| adjudicable | 6% (112/119) | **90% (27/30)** |
| leaks | 0 | **16/30 (53%)** |
| SPECTRE_V1 leak yield | 0 | **15/15 = 1.00** |
| SPECTRE_V4 | all unrunnable | 11 safe + 1 leak + 3 unrunnable |

Leak gadget length: mean 14.8, range 7–32.

## Reading
- Steps 1–2 (splice-safety: no stranding CF, ret stripped at splice; realizer
  forward-label) + Step 4 (length token → med) lift cold adjudicability from 6%
  to 90% and V1 leak yield from 0 to 1.0 at round 0 — no retraining of the
  reward, no fine-tuning round yet.
- V4 at **med** adjudicates mostly SAFE (1 leak): V4 leaks concentrate at LONG
  length (prior loop data: S 0.00 / M 0.18 / L 0.58). The length token makes
  this a knob — `--target-len med` for V1 leaks + V4 negatives, `long` for V4
  leaks. SAFE V4 gadgets are useful detector/filter negatives, not waste.
- Caveat: local emulated oracle, small n, round 0. The cluster run
  (`gen/rl_lencond.sbatch`) is authoritative for the yield numbers; this probe
  only shows the fixes convert the previously-all-unrunnable base into a mostly-
  adjudicable, leaking one.
