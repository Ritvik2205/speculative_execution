# Multiclass Revizor campaign — i5-8300H (Coffee Lake), Step D

`oracle/revizor/scripts/run_multiclass_campaign.sh --classes "SPECTRE_V4 MDS L1TF SPECTRE_V1" --n-seeds 10 --n 1000 --inputs 100 --timeout 900`

- Run: 2026-10-22 18:48 → 2026-10-23 08:07 BST (60 fuzz runs, each timeout-bound at ~900 s)
- Seeds (fresh, recorded in `oracle/revizor/scripts/used_seeds.txt`):
  `820893681 1718623055 730885033 289614005 798148980 2033941039 1488696803 1180028810 1424566955 1377434235`
- Box state: SMT on (script toggles it off only for the V4 SMT-off control, then restores),
  `spec_store_bypass: Mitigation: Speculative Store Bypass disabled via prctl`, kernel 7.0.0-38-generic
- Raw output (not committed, 4.6M log mostly progress bars):
  `/home/ritvik/rvzr_runs/campaign_261022_184849.log`, run root `/home/ritvik/rvzr_runs/mc_261022_184849/`

## Violation dirs per class/seed

| seed | SPECTRE_V4 | MDS | L1TF | SPECTRE_V1 |
|---|---:|---:|---:|---:|
| 820893681 | 7 | 7 | 7 | 9 |
| 1718623055 | 6 | 8 | 8 | 9 |
| 730885033 | 5 | 8 | 8 | 9 |
| 289614005 | 7 | 8 | 7 | 9 |
| 798148980 | 5 | 7 | 7 | 9 |
| 2033941039 | 6 | 8 | 8 | 9 |
| 1488696803 | 3 | 7 | 7 | 9 |
| 1180028810 | 4 | 8 | 8 | 9 |
| 1424566955 | 7 | 8 | 7 | 9 |
| 1377434235 | 7 | 8 | 8 | 9 |
| **total** | **57** | **77** | **75** | **90** |

## SPECTRE_V4 controls

| control | violations (10 seeds) | reading |
|---|---:|---|
| unmitigated | 57 (3–7/seed) | baseline |
| SSBP patch **on** | **0** (0 on every seed) | the store-bypass mitigation closes it → violations are genuine SSB |
| SMT **off** | 58 (2–7/seed) | essentially unchanged → not an SMT cross-thread artifact |

## New gadgets ingested

`convert_revizor_gadgets.py --roots rvzr_runs /home/ritvik/rvzr_runs` (both roots: the earlier
campaigns `mc_260918_*` / `mc_260925_*` live under `/home/ritvik/rvzr_runs`, so a repo-only root
would have dropped them — the converter overwrites its outputs). Verified the new files are a
strict superset of the old ones by sequence before overwriting.

| class | before | after | change |
|---|---:|---:|---:|
| MDS | 83 | 160 | +77 |
| L1TF | 155 | 229 | +75 new, −1 `bugs/` |
| SPECTRE_V1 | 130 | 220 | +90 |
| SPECTRE_V4 | 55 | 116 | +61 |
| **total** | 423 | 725 | **+303 new, −1** |

**`bugs/` exclusion.** Revizor writes `<workdir>/bugs/violation-*/` when its own model fails a
self-check ("Fast path contract traces do not match the full traces") — not a hardware-confirmed
violation. The converter previously globbed these in as real gadgets. It now skips any path with a
`bugs` component. Effect: the campaign's 2 L1TF `bugs/` programs are not ingested (so +75, not the
+77 `count_new_gadgets.py` reports, which also counts them), and 1 pre-existing L1TF record from
`mc_260918_104145/l1tf/1679342772/bugs/` (already tagged `campaign: "bugs"`) is removed. Verified by
sequence that this is the only record dropped; everything else is a strict superset.
V4 has fewer unique additions than dirs (115 matched incl. SMT-off → 61 unique) because the SMT-off
control re-runs the same seeds and so regenerates the same programs.

## Notes

- **MDS 77 violations** across all 10 seeds is consistent with `MDS_REFUZZ_RESULTS.md`: the channel
  is live on this box; the 0/6 replay in `REPRODUCE_RESULTS.md` is recorded-input fragility.
- **SPECTRE_V1 = exactly 9 on every seed** despite widely varying test-case counts (120–389, all
  timeout-bound). All 90 dedup as unique programs, so these are not repeats, but the constant count
  is unexplained and worth a look before leaning on V1 per-seed yields.
