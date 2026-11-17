# 06 — Few-shot, supervised LoRA and pairwise loss, on the open model and the graph model

Status: in-progress
Type: task
Blocked by: nothing (02, 03, 05 resolved)

## Question

Does training on pairs lift held-out hardware pairs above the bar in the spec, and does it do so for both kinds of model?

## Done when

A table with one row per arm and model, 10 seeds where the model is seeded, the bar from the spec applied as written, Spectre-V1 and all-mechanism rows separate.

Spec: `../spec.md`.

## Comments

### 2026-11-14 — requirement from the v2 checks (Claude)

Every injected core uses `%r15`, the victim's tainted pointer. Before training, rename it
consistently on both sides of each pair to a register neither side uses (a fresh choice per
pair), so a model cannot learn the name `%r15` in place of "a fence precedes the pointer's
uses". Ticket 05, 2026-11-14 comment.

### 2026-11-16 — language-model arms built; timing job submitted (Claude)

Model: `zai-org/GLM-4.7-Flash` (ticket 03 verdict: loads, generates, takes a LoRA step at 16-bit
on the 71 GB slice).

Built, tests first (43 pass):

- `eval/pairs/train_data.py` — renames `%r15` and its sub-registers on both sides of a pair to
  one of `r8`..`r14` that neither side uses; the choice is fixed per pair. Train 1,789 renamed,
  3 dropped (no free register); val 311; test 453; no line names `r15` afterwards. The choice is
  not uniform: `r14` is the free register in about half the pairs.
- `eval/pairs/train_llm.py` — arms `zero`, `fewshot`, `lora`, `pairwise`; a fresh adapter per
  seed inside one job; writes score files that `score.py` reads.
- `eval/cluster/train_llm.sbatch`.

Decisions taken to make the arms affordable. Each is open to the owner:

1. **Readout.** Ticket 03 measured 4.9 tokens/s and an answer still inside its reasoning after
   768 tokens. Sampled reasoning over 2,120 pairs per seed is not affordable. Every arm
   therefore asks for one word with reasoning switched off (the chat template's
   `enable_thinking=False`) and scores sigmoid(logit `LEAK` − logit `SAFE`). The untrained row
   for this experiment is the `zero` arm under the same readout, not the 9B model's
   sampled-reasoning row in `LLM_OPEN.md`. Both are reported; they are not the same protocol.
2. **Supervised arm** trains on that two-way logit (binary cross-entropy), not on generated text.
3. **Pairwise arm** is the margin alone (1.0 on the logit gap), as the spec states it. It puts
   no pressure on the 0.5 cutoff, so it can pass the ranking bar and fail both-sides-right.
4. **Few-shot** shows both sides of 4 training pairs; a seed is a different draw of the 4.
5. **No early stopping.** Steps are fixed in advance; version-2 val is reported, not used.

Not yet decided: training pairs and epochs per seed, and whether 10 seeds fit. That waits for
the timing job (3724538: 24 training pairs, 12 pairs per evaluation set, untrained row first),
which prints seconds per training item and per scored sequence.

Also found: the pinned vLLM 0.33.0 lists `Glm4MoeLiteForCausalLM` in its model registry, so the
sampled-reasoning baseline for this model may be runnable through vLLM (not tested). The graph
model's arms are not built yet.

### 2026-11-16 — graph-model arms built; one-seed smoke submitted (Claude)

Owner accepted the five decisions above ("decisions fine").

Built, tests first (45 pass):

- `eval/pairs/train_gine_pairs.py` — writes, under `eval/pairs/data/v2/`:
  `gine_train_labels.jsonl` (v57 train 4,068 records + both sides of 1,789 pairs = 7,646),
  `gine_train_pairs.jsonl` (3,578 records alternating leaking side, safe side) and the renamed
  val (311) and test (453) pairs for scoring. A pair's two sides and all pairs on one host share
  a `group`, so the trainer's validation carve-out never splits a pair.
- `v54/train_gine_v38.py` — new `--pair-data`, `--pair-margin` (1.0), `--pair-lambda` (1.0),
  `--pair-batch` (16 pairs). Every training step adds the mean hinge on
  logit(LEAK) − logit(SAFE) between the two sides of a pair. Nothing changes without the flag.
- `eval/cluster/submit_v2_pairs.sh` — arms `labels`, `pairwise`, and `plain` (no training:
  rescoring of the ten existing `v57_plain` checkpoints on the same pair files, as the
  no-pairs row).

Arms on the graph model:

| arm | training records | pair term |
|---|---|---|
| plain (existing) | v57 | none |
| labels | v57 + pair sides as LEAK / SAFE | none |
| pairwise | v57 | margin 1.0, weight 1.0 |

In the `labels` arm the validation carve-out (early stopping) includes version-2 training
pairs. No hardware pair is in it.

Not runnable on the laptop (no torch_geometric): the trainer change is tested only by the
smoke. Smoke, seed 0: jobs 3724549 (labels), 3724550 (pairwise), 3724551 (plain). The other
nine seeds go only after these three are read.

### 2026-11-17 — graph-model smoke clean; nine more seeds submitted (Claude)

Seed 0, all three jobs COMPLETED (9 to 15 min each); every checkpoint reproduced its own test
accuracy before scoring (difference 0). 3,074 pairs scored per job.

v57 test accuracy, seed 0: plain 0.971, labels 0.956, pairwise 0.971 (same count correct as
plain; the pair scores differ on all 6,148 sides, so the pair term did act).

One seed, ranking / both sides right at 0.5. Not a result yet:

| row | pairs | rule | plain | labels | pairwise |
|---|---|---|---|---|---|
| counterfactual, all | 76 | 0.671 | 0.250 / 0.00 | 0.316 / 0.03 | 0.816 / 0.00 |
| counterfactual, Spectre V1 | 19 | 0.737 | 0.211 / 0.00 | 0.579 / 0.11 | 0.474 / 0.00 |
| nofence, all | 92 | 0.549 | 0.424 / 0.00 | 0.587 / 0.00 | 0.533 / 0.00 |
| variants, all | 970 | 0.996 | 0.910 / 0.00 | 0.558 / 0.03 | 0.472 / 0.00 |
| injected v2 test, barrier | 219 | – | 0.516 / 0.06 | 0.936 / 0.76 | 0.922 / 0.52 |
| injected v2 test, decoy (4 templates) | 105 | – | 0.571 / 0.00 | 0.952 / 0.51 | 0.952 / 0.04 |
| injected v2 test, reorder (held out whole) | 129 | – | 0.516 / 0.00 | 0.822 / 0.51 | 0.899 / 0.04 |

Seeds 1 to 9 submitted for all three arms: 27 jobs, the last is 3724659, four lanes.
`python3 -m eval.pairs.train_report` writes the table once they are fetched.

### 2026-11-17 — graph model, 10 seeds per arm (Claude)

All 30 jobs done; every checkpoint reproduced its own test accuracy before scoring. Table:
`eval/pairs/TRAIN_ARMS.md` (`python3 -m eval.pairs.train_report`). v57 test accuracy over ten
seeds: labels 0.958 ± 0.010, pairwise 0.958 ± 0.009.

Ranking ± sd over seeds / both sides right at 0.5:

| row | pairs | rule | plain | labels | pairwise |
|---|---|---|---|---|---|
| counterfactual, all | 76 | 0.671 | 0.247 ± 0.200 / 0.00 | 0.308 ± 0.138 / 0.04 | 0.703 ± 0.208 / 0.02 |
| counterfactual, Spectre V1 | 19 | 0.737 | 0.258 ± 0.171 / 0.00 | 0.516 ± 0.085 / 0.14 | 0.416 ± 0.094 / 0.04 |
| nofence, all | 92 | 0.549 | 0.484 ± 0.050 / 0.00 | 0.546 ± 0.027 / 0.00 | 0.580 ± 0.055 / 0.00 |
| variants, all | 970 | 0.996 | 0.763 ± 0.151 / 0.00 | 0.566 ± 0.020 / 0.13 | 0.509 ± 0.059 / 0.04 |
| injected v2 test, barrier | 219 | – | 0.498 ± 0.029 / 0.06 | 0.933 ± 0.015 / 0.74 | 0.915 ± 0.034 / 0.40 |
| injected v2 test, decoy (4 templates) | 105 | – | 0.688 ± 0.095 / 0.00 | 0.910 ± 0.031 / 0.55 | 0.968 ± 0.021 / 0.03 |
| injected v2 test, reorder (held out whole) | 129 | – | 0.629 ± 0.114 / 0.00 | 0.798 ± 0.037 / 0.49 | 0.917 ± 0.031 / 0.03 |

`counterfactual, all`, each seed:
- plain: 0.25 0.11 0.12 0.71 0.42 0.11 0.34 0.04 0.20 0.18
- labels: 0.32 0.51 0.28 0.21 0.18 0.24 0.57 0.24 0.38 0.16
- pairwise: 0.82 0.78 0.43 0.79 0.78 0.80 0.82 0.78 0.21 0.83

Reading:

- Held-out injected pairs are learned by both arms, including `reorder`, a kind never trained on.
- Hardware, all mechanisms: the pairwise arm passes the bar as written (0.703 > 0.671 and
  0.02 > 0.00), by a margin smaller than its seed spread. Eight seeds sit at 0.78 to 0.83, two
  fall to 0.43 and 0.21. Both-sides-right is 0.02: it ranks, it does not decide.
- Hardware, Spectre V1 only (19 pairs, 11 programs): both arms fail. This is the mechanism the
  training pairs cover, so the all-mechanism pass is not explained by the training mechanism.
  Not yet explained.
- The labels arm does not rank `counterfactual`.
- `variants` falls from 0.763 to 0.566 and 0.509: both arms lose what the plain model had there.
- `nofence` stays near 0.5 in every arm.

### 2026-11-17 — language-model timing and three jobs (Claude)

Timing job 3724538 (24 training pairs): load 3,350 s; 0.79 s per training item; 0.05 to 0.10 s
per scored sequence; longest prompt 693 tokens; peak 58.5 GiB. One epoch over all 3,578 sides
is about 47 minutes and one full evaluation about 10, so ten seeds fit in one job per arm.

Two changes after reading its log:

1. The model's own 16-bit logits tie: the readout check printed gaps of 0.5 and 0.0. The gap is
   now computed in 32-bit from the input of the output layer.
2. `LEAK` is two tokens for this tokenizer (`LE` + …), `SAFE` one. The answer words are now
   `YES` / `NO`; the job stops before loading if either is not a single token.

Fixed before running: all 1,789 training pairs, 1 epoch, learning rate 1e-4, rank 8,
accumulation 8, 10 seeds. Jobs, 16 h limit each: 3727628 (`lora`, untrained row first),
3727629 (`pairwise`), 3727630 (`fewshot`, 4 pairs in the prompt). Score files are written per
seed to `~/specexec_jobs/train_llm_<job>/`.
