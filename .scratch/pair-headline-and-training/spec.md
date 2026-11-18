# Headline and pair-training experiment — decisions of 2026-11-13

Outcome of a question-by-question session with the project owner on one question: what is the
paper's headline now that a language model with no task training ranks pairs better than our
trained models? Every decision below was put to the owner and accepted. Facts gathered by
background agents are listed in section 6 with their status; none of them is to be quoted
before it is checked at the step that uses it.

Supporting reports written the same day (each needs checking before citing):
`docs/LLM_SPECTRE_PAIRED_EVAL_PRIOR_WORK_2026-11-13.md`,
`docs/PUBLISHED_DETECTOR_CANDIDATES_2026-11-13.md`,
`docs/OPEN_MODEL_CHOICE_2026-11-13.md`, `docs/PAIR_SPLIT_AUDIT_2026-11-13.md`.

## 1. Headline

The paper stays a measurement paper with a benchmark (`docs/PLAN_2026-11-11_post_review.md`,
section 3). It does not become "language models detect Spectre gadgets".

Working text (reworded 2026-11-15 after the open-model run, `eval/pairs/LLM_OPEN.md`):

> Detectors trained on existing Spectre-gadget data score at or below chance on minimal pairs
> that differ only in the leak. So does an open-weight language model with no task training: it
> calls nearly every sequence leaking. A closed model ranks a sample of the same pairs correctly
> but cannot decide them, and nothing separates pairs without a fence. We release the pairs,
> three sets labelled on silicon, and test whether training on pairs closes the gap.

- Text of 2026-11-13, replaced: "A language model with no task training ranks the same pairs
  correctly but cannot decide them". It held for the closed model's 240-pair pilot only. The
  open 9B model, single side, has every hardware-set interval across 0.5 (ticket 02).
- The closed-model clause rests on 30 pairs per set and a mix of two served models; it stays a
  supporting row and is dropped from the headline if the full run (parked) is never made.
- If the larger open model (ticket 03) ranks the hardware sets, the open-model sentence is
  written per model size.
- The untrained open model at chance is the baseline for the training experiment (section 4).
- The cause-naming form ("the existing data teaches that a fence means a leak") is the aim. It
  weakens to "consistent with" if the training experiment is not finished at submission, or if
  the mechanism confound in section 4 prevents a clean reading.
- The comparison of a learned generator against random fuzzing on hardware stays in the paper
  as a separate, secondary result outside the headline.

## 2. Claims and wording

1. The language-model claim is about ranking only (share of pairs where the leaking side scores
   higher). The yes/no failure (both sides right in few pairs) is stated in the same sentence.
2. Single side is the primary protocol; forced choice is secondary.
3. Do not write "rules beat the language model". On the model's own 240 pairs each rule wins
   only on the set built around its token (`eval/pairs/LLM.md`).
4. The benchmark as a whole is not called "hardware-labelled". Wording: minimal-pair
   benchmark; three sets labelled on hardware, three by a speculative oracle, two from kernel
   fix commits.
5. Headline numbers come from `nofence` and `counterfactual`. `variants` is secondary and is
   always shown beside the positional fence rule. The Linux sets are a sanity row for every
   detector (a length rule nearly solves them).
6. Novelty is claimed for the domain only (speculative-execution leaks, assembly input,
   hardware or oracle labels), with "to our knowledge", and only after ticket 08. The pair
   statistic and the length shortcut are prior art and are credited.
7. µLAM is cited as related work with no numeric comparison.

## 3. Evidence required

- **Open-weight model, no training:** `zai-org/GLM-Z1-9B-0414` on all non-public pairs. This
  is the model that carries the second sentence of the headline. If it ranks worse than the
  closed model did, the sentence changes to what it shows.
- **Larger open model:** `zai-org/GLM-4.7-Flash`, no training, as an extra row. It replaces the
  9B model in every arm only if a one-job smoke test shows it loads and takes a LoRA step.
- **Closed model:** the 240-pair pilot is a supporting row marked as such. The full run is
  parked: `.scratch/litreview2-additions/issues/07-llm-baseline-full-run.md` (needs funding).
- **Published detector:** FastSpec. Its shipped checkpoint must first reproduce the paper's
  figure on FastSpec's own test split; if it does not, retrain from their code and say which
  was scored. Spectre-V1 pairs are its headline row; other classes are shown as outside its
  stated scope. Contact with the authors waits until results exist.

## 4. Training experiment

Question: does training on pairs fix the failure, and for which kind of model?

Arms, all declared before running:
1. Few examples in the prompt, no weight change (language model only).
2. Supervised LoRA on leak/safe labels; the same labels added to graph-model training.
3. Pairwise loss (margin on leaking-minus-safe score within a pair), both models.
4. GRPO with reward for calling both sides right, partial for one (language model only).

Not in this paper: distilling a closed model's rationales into the open model.

Split (from the audit, accepted):
- Regenerate the injected pairs. Hosts and gadget cores are each split 60/20/20 by hash and
  each part is built only from its own hosts and cores.
- Two new length-neutral kinds replace `fence` and `inject` as training data: barrier outside
  the core against inside it; a same-mnemonic decoy with the data dependency broken.
- No hardware pair in training or model selection.
- Version 2 as built (accepted 2026-11-15): train 1,792, val 311, test barrier 219 / decoy 105 /
  reorder 129. Test `decoy` rests on 4 core templates and is reported as 4 templates, not 105
  independent pairs.
- Test: the same kinds on test hosts and cores; `reorder` held out whole; hardware primary
  (`nofence`, `counterfactual`); `variants` secondary; Linux sets as sanity rows.
- Intervals are resampled over hardware programs, not pairs.
- The current `pairs_injected.jsonl` is kept as version 1; its `fence` row stays in the paper
  as the exhibit of the learned shortcut, not as test data.

Success bar, fixed now: on held-out hardware pairs, single side, `counterfactual` above the
mechanism rule (0.671 on the full set), both-sides-right above the untrained model, `nofence`
reported whatever it is. Read separately on the Spectre-V1 row and the all-mechanism row.

Known limit, stated in advance: all oracle-labelled training pairs are Spectre V1 and most
hardware test pairs are other mechanisms. A failure on non-V1 pairs cannot separate "training
on pairs does not help" from "wrong mechanism in training".

## 5. Order

Tickets in `issues/`, in this order: 01 rule columns; 02 open model without training;
03 smoke test of the larger model; 04 FastSpec; 05 regenerate pairs; 06 arms 1–3; 07 GRPO;
08 prior-work completion; 09 author contact (on hold); 10 paper text.

## 6. Facts carried from agents, to verify when used

| fact | source | status |
|---|---|---|
| No prior paired evaluation of language models on Spectre gadgets | prior-work report | search only; no full-text search of IEEE Xplore, ACM DL, Scholar |
| Cichoń and Dmitruk (arXiv 2609.32890) has the pair statistic and a length rule at 0.875 | prior-work report | not read by the main session |
| µLAM runs no Spectre experiment and no paired test | prior-work report | read by agent from an archived copy |
| FastSpec ships a checkpoint; it has 8 layers against 3 in its config | detector report | not verified |
| GLM-Z1-9B is 9.4 B parameters, MIT; GLM-4.7-Flash 31 B, MIT | model report | not verified |
| Injected and hardware pairs share no content; held-out kinds overlap; hardware sets are one pool of 158 programs | split audit | not re-run |
| A second hardware pool exists (1,668 pairs, 215 programs, none shared with the first); rules and never-trained language models only | ticket 11, `eval/pairs/POOL2.md` | measured 2026-11-18 |
| Teaching partition offers a6000 (48 GB), H200 slices of 18 and 71 GB, one whole H200; limit 20 jobs, 2 days | owner's `sinfo` output, 2026-11-13 | verified by owner |
| School guidance: download models in advance to the shared filesystem, run offline | computing.help.inf.ed.ac.uk/cluster-networking | read through a summariser; owner to open the page |
