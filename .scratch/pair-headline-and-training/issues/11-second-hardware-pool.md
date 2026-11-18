# 11 — Second hardware pool from the i5 step 4a labels

Status: resolved
Type: task
Blocked by: nothing

## Question

Do the rule results on the hardware sets hold on a second set of programs that shares none with
the first?

## Decision (owner, 2026-11-18)

Add the step 4a labels as a second hardware split, scored by rules and by language models that
never saw the programs. The first pool (1,138 pairs, 158 programs, part of the 2,310-pair set
the spec fixes) is not changed.

## What was built

- `eval/data/revizor_hwlabel_trainpool.jsonl`: 2,016 labelled records, copied unchanged from
  commit `1430d42b` of the `cluster` branch.
- `python3 -m eval.pairs.build hw2` writes `eval/pairs/data/pool2/pairs_hw_pool2.jsonl`:
  1,668 pairs from 215 programs, in the sets `variants_pool2` (1,360), `counterfactual_pool2`
  (157) and `nofence_pool2` (151). The file is in its own folder because every report reads all
  `pairs_*.jsonl` directly under `eval/pairs/data/`. The builder stops if a program is in both
  pools; none is.
- `python3 -m eval.pairs.pool2_report` writes `eval/pairs/POOL2.md`.

## Result

Ranking score with a 95% interval from resampling programs:

| set | pool | pairs | programs | fewer fences | no interior fence | mechanism rule |
|---|---|---|---|---|---|---|
| variants | first | 970 | 154 | 0.665 | 0.996 [0.993, 0.999] | 0.996 [0.993, 0.999] |
| variants | second | 1,360 | 212 | 0.665 | 0.994 [0.991, 0.997] | 0.994 [0.991, 0.997] |
| counterfactual | first | 76 | 54 | 0.204 | 0.500 | 0.671 [0.608, 0.739] |
| counterfactual | second | 157 | 93 | 0.137 | 0.500 | 0.605 [0.569, 0.648] |
| nofence | first | 92 | 92 | 0.500 | 0.500 | 0.549 [0.522, 0.582] |
| nofence | second | 151 | 151 | 0.500 | 0.500 | 0.526 [0.510, 0.543] |

The pattern holds: the rules are near 1 on `variants`, weak on `counterfactual` and at chance
on `nofence`.

The mechanism rule on the second `counterfactual` set is lower overall because that set is 69%
Spectre V4 (108 of 157 pairs), where the rule is at chance in both pools (0.482 and 0.519). On
Spectre V1 it is 0.737 in the first pool and 0.870 in the second (19 and 23 pairs; the intervals
overlap). Per-class rows are in `POOL2.md`.

## Limits

- 166 of the 215 second-pool programs are named in `v57_leak_train.jsonl`, the training file of
  the graph model and the opcode models (first pool: 0 of 158). No trained scorer is reported on
  the second pool.
- No language model has been scored on it yet. The three queued language-model jobs
  (3727628–30) were submitted before this pool existed and do not score it.
- The variant named `cf_nonleak` leaks on hardware in 94 of 183 second-pool records (58 of 117
  in the first pool). Pairs use the hardware label, not the variant name, so this does not
  affect the scores; the name should not be read as a label.

Spec: `../spec.md`.
