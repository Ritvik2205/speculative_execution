# 02 — Open-weight model without training, all non-public pairs

Status: resolved
Type: task
Blocked by: nothing

## Question

Does `zai-org/GLM-Z1-9B-0414`, with no training, rank the leaking side higher on the non-public sets, single side and forced choice, with the same prompts as the closed model?

## Before running

Verify from the model card: parameter count, licence, context length, chat template, how reasoning output is delimited. Verify the downloaded files against the published checksums. Confirm the prompt text is byte-identical to the closed-model run.

## Done when

Rows for the full 2,120 non-public pairs and for the 240-pair sample (for comparison with the pilot), 3 repeats with fixed seeds, intervals over hardware programs, weights revision recorded.

Spec: `../spec.md`.

## Comments

### 2026-11-13 — runner built, waiting on the cluster (Claude)

Checked against the publisher's own listing (huggingface.co API, fetched directly, saved as
`eval/pairs/data/glm_z1_9b_manifest.json`): 9,400,279,040 parameters, 16-bit floats, licence
MIT, revision `b221b06fefb2…`, sha256 of the four weight files and the tokenizer.
From the model card: sampling temperature 0.6, top-p 0.95, top-k 40; needs
`transformers>=4.51.3`; a changed position setting is advised above 8,192 input tokens; the
chat template opens the reply with `<think>`. The card does not state a context length and
does not say how the end of thinking is marked; the runner assumes `</think>` and the smoke
test shows whether that holds.

Built: `eval/pairs/score_llm_local.py` (same system text, prompts and parser as the closed
model; only text after `</think>` is read; prompts over 7,000 tokens recorded as skipped;
shards by job key; resumable) and `eval/cluster/llm_local.sbatch` (a6000 by name, 3 h, saves
the ledger every 5 minutes and when the time limit nears, clears scratch). Five new tests;
the job script was rehearsed on the laptop with stand-ins for Python and Slurm (normal exit,
resume, time-limit signal).

Not yet tested: loading the model and generating. That is what the smoke job is for. It stops
with an error if the weights do not match the manifest, if the loaded parameter count
differs, or if the chat template tokenises differently as text.

Size of the run: single side 8,235 generations, forced choice 13,854, all 2,310 pairs,
3 repeats. Throughput is unknown until the smoke job reports it; shard count follows from that.

Owner steps: install `transformers` and `accelerate` in the `specexec` environment; copy
`bundle_llm.tar` and `llm_local.sbatch` to `~/specexec_jobs/`; submit the smoke job.

### 2026-11-13 — smoke passed; speed problem; moving to vLLM (Claude)

Smoke (job 3717514, A6000): weights match the publisher's sha256; 9,400,279,040 parameters
loaded; template check passed; `</think>` present in 23 of 24 answers, the 24th hit the
4,096-token cap mid-reasoning and is recorded as no answer; all 23 parsed. Answers: median
about 830 output tokens, mean about 1,220. 22 of 23 probabilities between 0.7 and 0.9 (24
answers, not a result).

Benchmark (job 3717661, longest real prompts, 1,452 tokens): 145 tokens/s at batch 32,
168 at 64, peak 33.5 GiB. A first benchmark (job 3717615) used Linux prompts up to 12,845
tokens that the run never sends; its numbers are void. With padding to the longest answer per
batch, the transformers backend would take about 56 GPU-hours for single side alone.

Owner chose vLLM (continuous batching). Checked: vLLM's supported-models page lists
`Glm4ForCausalLM`; vLLM 0.33.0 pins torch 2.14.0 and its install page asks for a fresh
environment, wheels built with CUDA 12.9 (no driver minimum stated). Built: `vllm` backend in
`score_llm_local.py` (prompt ids from the transformers tokenizer, checked unchanged by vLLM;
one seed per prompt; its own job keys so its answers never mix with transformers answers),
`eval/cluster/setup_vllm_env.sh`, `BACKEND` and `CONDA_ENV` in `llm_local.sbatch`; driver
version now printed. Not yet run.

### 2026-11-13 — vLLM smoke passed (Claude)

Correction to the entry above: vLLM 0.33.0, torch 2.14.0 (`+cu130`) and torchaudio 2.11.0 on
PyPI link CUDA 13 (`libcudart.so.13`, checked with readelf), not CUDA 12.9. Two failed starts,
both fixed: (1) job 3717689, the cu129 extra index had pulled `torchaudio 2.11.0+cu129` (CUDA
12), which `transformers` imports → replaced with the PyPI wheel, extra index removed from
`setup_vllm_env.sh`; (2) job 3717700, FlashInfer's top-k/top-p sampler tried to JIT-compile
with no `nvcc` on the node → `VLLM_USE_FLASHINFER_SAMPLER=0` in `llm_local.sbatch`. vLLM's
sampler (`v1/worker/gpu/sample/sampler.py`) never uses the fused sampler for requests with an
explicit seed, and every request here has one, so no real answer changes.

Smoke (job 3717762, A6000, driver 595.91, `--sample 30 --limit 256`): 256 answers in 182 s,
321,172 tokens, 1,763 tokens/s (about 10x the transformers backend). Startup about 6 minutes
(160 s reading weights from Lustre, 50 s compile). KV cache 607,008 tokens.
- 250 stopped on EOS 151336 with `</think>` present; 6 hit the 4,096-token cap mid-reasoning
  (2.3%; transformers smoke 1 of 24).
- 248 of 256 parsed. The 2 other misses end `PROBABILITY: 0.8.` with a trailing full stop,
  which the shared parser (`score_llm._PROB`, anchored at line end) rejects. Parser left as is,
  so the rows stay comparable with the closed-model pilot; these count as no answer.
- Probabilities: 240 of 248 between 0.7 and 0.95, 5 below 0.5. The same picture as the
  transformers smoke.
- The 24 jobs of the transformers smoke are all in this set (8 prompts x 3 repeats). Answers
  agree in range but not token for token (different samplers and random streams), as
  expected; only vLLM rows will be reported.

Full non-public run sized from this rate: single side 7,101 generations ≈ 8.9M tokens ≈ 85 min;
forced choice 4,240 generations. To be submitted as 2 shards per protocol.

### 2026-11-14 — full non-public run at cap 4,096; cap wrong; rerun prepared (Claude)

First full submission (jobs 3717771/2) died at argument parsing: the pasted command wrapped
after `--exclude-`, so the job saw `--exclude-` plus a stray `public`. Fixed by an
`EXCLUDE_PUBLIC=1` setting in `llm_local.sbatch`. Resubmitted as jobs 3718815 (single, 2
shards, 3 repeats) and 3718816 (choice, 2 shards): all completed in 55–62 min, about 2,000
tokens/s; 2,120 pairs, 7,101 + 4,240 answers, ledgers in `eval/cluster_out/glmz1_vllm/`.

Cap problem: answers were capped at 4,096 new tokens, taken from the model card's code example;
the card's settings table says `max_new_tokens` 30000 ("leaves enough tokens for thinking").
Capped mid-reasoning: forced choice 1,946 of 4,240 (36–65% per set; median answer 3,538 tokens);
single side 545 of 7,101 (2–3% on counterfactual, nofence, variants; 9–15% on injected), plus
194 answers ending in a form the parser rejects. Forced choice at this cap is not reportable.

Single side at cap 4,096 (preliminary, 2,113 of 2,120 pairs scored; pair AUC / both sides right
at 0.5 / mean score leak vs safe): counterfactual 0.474 / 0.000 / 0.83 vs 0.83; nofence 0.500 /
0.000 / 0.81 vs 0.81; variants 0.525 / 0.000 / 0.83 vs 0.83; injected inject 0.629 / 0.185;
fence 0.514 / 0.077; reorder 0.466 / 0.077. The open model does not rank the headline sets.
Only 2–3% of those answers were capped, so a longer cap is unlikely to change these three rows.

Rerun prepared: per-prompt cap min(30000, 32768 − prompt length) with `--max-model-len 32768`
(the model's `max_position_embeddings`; prompts stay ≤ 7,000 tokens as before); runs at another
cap get their own job keys (`effort_for`, e.g. `card-sampling-vllm-max30000`), so the cap-4,096
ledgers stay a separate record; each row records its `max_tokens`. Test added; 39 pass. New
bundle `~/specexec_jobs/bundle_llm_cap.tar`: only `score_llm_local.py` differs from the
previous bundle (sha1 checked per file on the cluster).

### 2026-11-15 — rerun at cap 30,000 in; open model does not rank the hardware sets (Claude)

Jobs 3719150 (single side, 4 shards, 3 repeats) and 3719151 (forced choice, 4 shards, 1 repeat,
both orders): all COMPLETED, 40–91 min each. Ledgers fetched to
`eval/cluster_out/glmz1_vllm_30k/`; score files `eval/pairs/data/llm_{single,choice}_glmz1_30k.jsonl`;
report `eval/pairs/LLM_OPEN.md` (`python3 -m eval.pairs.llm_local_report`; intervals resample
programs, test added, 40 pass).

Cut off at the cap: single side 6 of 7,101, forced choice 37 of 4,240 (was 545 and 1,946 at cap
4,096). No readable answer: 245 and 58. Forced choice picked A 2,077 times, B 2,105.

Pair statistic [95% interval over programs], single side | forced choice:
- counterfactual (76): 0.566 [0.45–0.68] | 0.263 [0.19–0.34]
- nofence (92): 0.538 [0.44–0.64] | 0.543 [0.47–0.61]
- variants (970): 0.473 [0.43–0.52] | 0.657 [0.64–0.68]
- injected inject (364): 0.613 [0.56–0.66] | 0.902 [0.88–0.92]
- injected fence (357): 0.471 [0.42–0.52] | 0.780 [0.75–0.81]
- injected reorder (261): 0.513 [0.45–0.58] | 0.485 [0.44–0.53]

Both sides right at 0.5, single side: 1/76, 1/92, 2/970 on the hardware sets. The model calls
nearly everything leaking (mean score about 0.8 on both sides).

On the closed model's own 30 pairs per set the open model is lower in every single-side cell
except `nofence` (indicative only: 30 pairs).

Consequence for the spec (section 3 says the sentence changes to what the model shows): the
second sentence of the headline does not hold for the open model. Single side, the primary
protocol, it does not rank any hardware set. Not yet explained: forced choice on
`counterfactual` is below 0.5 (the model picks the mitigated side).

Not done from the "Done when" list: forced choice has 1 repeat, not 3.

Owner decision needed: reword the headline, or wait for the larger model (ticket 03).

### 2026-11-15 — owner decision

Headline reworded in `../spec.md` section 1. Larger model goes ahead as ticket 03.
