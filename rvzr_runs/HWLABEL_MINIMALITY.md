# Minimality of real leaking gadgets (Revizor instruction-removal pass)

Source: `/home/ritvik/rvzr_hwlabel_cf` (173 violation dirs with a minimize status). `body` = non-instrumentation instructions in the measured region; `essential` = those the removal pass could not delete while the violation still reproduced on hardware. `reduction` = 1 - essential/body.

| class | dirs (min ran) | fence pass ran | median body | median essential | median reduction |
|---|---|---|---|---|---|
| L1TF | 60/64 | 62/64 | 16.0 | 2.0 | 88% |
| MDS | 26/33 | 26/33 | 21.0 | 10.5 | 49% |
| SPECTRE_V1 | 44/54 | 44/54 | 18.0 | 5.5 | 69% |
| SPECTRE_V4 | 21/22 | 21/22 | 47 | 14 | 70% |

Total: 151/173 violation dirs had the instruction pass complete. Dirs where it did not run are shown in the fraction, not averaged away.

## Smallest essential count per class

| class | min essential | at body | group |
|---|---|---|---|
| L1TF | 2 | 16 | revizor_l1tf_violation-260811-080043 |
| MDS | 3 | 21 | revizor_mds_violation-260918-150902 |
| SPECTRE_V1 | 4 | 18 | revizor_spectre_v1_violation-260918-175049 |
| SPECTRE_V4 | 7 | 47 | revizor_spectre_v4_violation-260907-191158 |

## Provenance and caveats (run of 2026-11-02..04)

- Inputs: minimize replays each violation's RECORDED `input_*.bin`
  (`rvzr_minimize_recorded.py`); stock `rvzr minimize` regenerates inputs and
  reproduced only 4/173. With replay, 151/173 complete.
- Sample sizes: 25 SPECTRE_V1 dirs were minimized at rvzr's default
  `executor_sample_sizes` [10,50,100,500]; the other 126 at [10,50,100]
  (`status.json: sample_sizes`). Every variant built from the result is
  re-measured by `run` at the full defaults.
- `cf_nonleak` (lfence next to instructions the removal pass deleted) does NOT
  always keep leaking: 3/3-leak vs 0/3 = V1 24/11, L1TF 32/23, MDS 2/6, V4 0/19.
  The cap is not the cause: on V1, the only class with both settings,
  full-size dirs fail more often (8/23) than capped ones (3/14). "Instruction X
  is not needed for the leak" does not imply "a fence beside X is harmless":
  an lfence anywhere between the essential instructions can close the window
  (all 19 V4: any fence between the store and the bypassing load stops SSB).
  So `essential` above bounds the instructions a leak needs, not where a fence
  is safe; the cf_nonleak labels are hardware outcomes and are correct as labels.
