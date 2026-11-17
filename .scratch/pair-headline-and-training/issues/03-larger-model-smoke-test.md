# 03 — Does GLM-4.7-Flash load and take a LoRA step on this cluster?

Status: resolved
Type: task
Blocked by: nothing

## Question

On a 71 GB H200 slice at 16-bit, and if that fails on a 48 GB a6000 at 4-bit: does the model load, generate, and complete one LoRA optimiser step?

## Done when

A yes or no with the job log. Yes on either route promotes it to the model for every arm; no leaves the 9B model.

Spec: `../spec.md`.

## Comments

### 2026-11-15 — started on the owner's go-ahead (Claude)

Checked against the publisher's own listing (huggingface.co API and `config.json`, fetched
directly; saved as `eval/pairs/data/glm_47_flash_manifest.json`): 31,221,488,576 parameters,
16-bit floats, licence MIT, revision `7dd20894a642…`, 48 weight files plus tokenizer, 62.5 GB,
sha256 for each. Model class `Glm4MoeLiteForCausalLM`, 47 layers, 64 routed experts, context
202,752; the config was written by transformers 5.0.0rc0 and the cluster's `vllm` environment
has 5.20.2. Card: temperature 1.0, top-p 0.95. The card says vLLM supports this model only on
its main branch; the pinned vLLM 0.33.0 is not yet checked for it, and this ticket does not
need vLLM.

Built: `eval/pairs/lora_smoke.py` (weights against the manifest; load; one real single-side
prompt generated; LoRA rank 8 on the attention projections; one AdamW step with the loss on the
answer tokens; passes only if both losses are finite and the adapter weights moved) and
`eval/cluster/lora_smoke.sbatch` (71 GB H200 slice by name, 90 min; 4-bit on an a6000 by two
overrides). One new test; 41 pass. The model code path cannot be rehearsed on the laptop (no
transformers there): the smoke job is the first real run.

Cluster: `peft 0.21.3`, `accelerate 1.15.0`, `bitsandbytes 0.50.2` installed into `vllm` with
`--no-deps` so torch and transformers stay as they are. Weights downloading to
`~/models/GLM-4.7-Flash` (one stream, low priority, resumable; log
`~/specexec_jobs/glm47_download.log`).

Memory risk known in advance: the weights alone are 62.4 GB at 16-bit on a 71 GB slice.

### 2026-11-15 — first smoke stopped by my own check; resubmitted (Claude)

Download complete: 56 files, every size equal to the manifest (9 files failed on a DNS error in
the first pass; one resume pass fixed them).

Job 3721752 (saxa, `H200 MIG 3g.71gb`, 69.8 GiB): all weight files match the publisher's sha256
(637 s). `Glm4MoeLiteForCausalLM` loaded at 16-bit in 1,947 s, peak 56.5 GiB. Then the job
stopped: loaded 29,943,390,976 parameters against 31,221,488,576 published. Cause, read from
the safetensors headers: the published files hold layer index 47, a 48th layer with `eh_proj`,
`enorm`, `hnorm` and `shared_head` (1,278,094,656 parameters); `config.json` sets 47 layers, so
transformers does not load it. 2,944 parameters of the gap are not accounted for. My check
assumed loaded = published; it now compares against `parameters_loaded` in the manifest, which
carries the note. Cost: one 54-minute job.

So far: load = yes at 16-bit on the 71 GB slice, with about 13 GiB left. Generation and the
LoRA step are not yet seen.

Cost to plan for in ticket 06: 32 minutes to load from the shared filesystem, every job.

Resubmitted as job 3721808 (sha256 pass skipped, files unchanged). Result not yet read: the
connection to the head node dropped at the 40-minute check (`Connection timed out during banner
exchange`). Log: `~/specexec_jobs/lorasmoke_3721808.out`.

### 2026-11-16 — verdict: yes at 16-bit (Claude)

Job 3721808 (saxa, `H200 MIG 3g.71gb`, 69.8 GiB), COMPLETED in 1 h 02 min.
`SMOKE: load=yes generate=yes lora_step=yes`.

| step | result |
|---|---|
| load, 16-bit | 29,943,390,976 parameters as expected; 3,113 s; peak 56.5 GiB |
| generate | 768 tokens in 157 s (4.9 tokens/s) on a 472-token prompt; peak 56.5 GiB |
| LoRA step | rank 8, 2,695,168 trainable parameters, 480 tokens, 13 s; loss 2.4268 → 2.0433; adapter weights moved off zero; peak 56.8 GiB |

`zai-org/GLM-4.7-Flash` is the open model for every training arm. The 4-bit fallback is not
needed and was not run.

Four things the smoke showed that ticket 06 has to plan for:

1. Load time is 32 to 52 minutes per job from the shared filesystem (1,947 s, then 3,113 s for
   the same files). It is the largest cost of a short job.
2. Generation through transformers is 4.9 tokens/s. The 768-token answer was still inside the
   reasoning block: no `</think>`, no probability. Scoring 2,120 pairs by sampled reasoning is
   not affordable on this path; it needs vLLM or a readout that does not generate reasoning.
3. The model names its attention projections `q_a_proj`, `q_b_proj`, `kv_a_proj_with_mqa`,
   `kv_b_proj`, `o_proj`. The smoke matched only `o_proj` (94 tensors). `lora_targets` now knows
   all five; test added. The step above is therefore a step on `o_proj` alone.
4. Memory headroom is about 13 GiB at 480 tokens with gradient checkpointing. Longer sequences
   or a batch above 1 are untested.

Status: resolved
