# Open-weight model choice for the zero-shot and tuned LLM arms (2026-11-13)

Question: which open-weight GLM (Z.ai / Zhipu) or Kimi (Moonshot) model can we run zero-shot
and also tune (LoRA supervised, pairwise loss, GRPO-style RL) on the university cluster, with
the same weights in every arm. Input is 20–200 lines of x86-64 / arm64 assembly.

Everything in Part 1 comes from this repository only. Everything in Part 2 comes from the
publishers' Hugging Face repositories (API metadata, model cards, `config.json`, `LICENSE`)
and the official docs of the training libraries, fetched 2026-11-13. Memory figures marked
"est." are computed here, not stated by a publisher.

## Answer in brief

1. **Top pick: `zai-org/GLM-4.7-Flash`** — 31.2 B parameters (card: "30B-A3B MoE", about 3 B
   active), MIT, 202,752-token context, hybrid reasoning. It needs a 48 GB GPU for 4-bit
   QLoRA (est.) or a whole H200 for 16-bit LoRA (about 60 GB, per Unsloth).
2. **In-family fallback if only small GPUs are available: `zai-org/GLM-Z1-9B-0414`**
   (reasoning) or its non-reasoning sibling `zai-org/GLM-4-9B-0414` — 9.40 B dense, MIT,
   32,768-token context. 4-bit QLoRA fits an 18 GB slice (est.).
3. **Kimi family: nothing fits well.** The current Kimi K-series is 1 T (K2 to K2.7) or
   2.8 T (K3, K3.1 Pro) parameters. The two that can physically load are
   `moonshotai/Kimi-Dev-72B` (a Qwen2.5-72B fine-tune; whole H200 only, slow RL) and
   `moonshotai/Kimi-Linear-48B-A3B-Instruct` (custom code, no documented tuning path).
4. No fallback outside the two families is needed. One is noted in "Open risks" only as a
   contingency if the GLM MoE layers turn out not to quantise.

**Binding constraint:** the repository does not record what a `--gres=gpu:1` job on the
`Teaching` partition is guaranteed to get. Logged jobs received an 11 GB 2080 Ti, a whole
H200 (143,771 MiB reported), or an H200 slice named `MIG 1g.18gb`. The top pick does not fit
the first or the third.

## Part 1 — what the cluster allows (repository only)

| Fact | Value | Source |
|---|---|---|
| Scheduler, head nodes | Slurm; `icf` / `icf2`, behind the Informatics firewall | `eval/cluster/README.md:3-4` |
| GPUs on `Teaching` (default partition) | 2080 Ti (11 GB) ×8 per node on damnii, landonia, opencast; a6000 (48 GB) on landonia11; h200 on saxa | `docs/NEXT_STEPS_2026-09-09.md:61` (from a live `sinfo`, file dated 2026-09-09) |
| GPUs on `ICF-Free` | a40 (48 GB) ×4 (crannog); l40s (48 GB) ×4 (scotia); h200 (141 GB) ×8 (herman) | `docs/NEXT_STEPS_2026-09-09.md:62` |
| GPUs on `Interactive` | 2080 Ti, 2 h limit (landonia01/02) | `docs/NEXT_STEPS_2026-09-09.md:63`; `eval/cluster/README.md:116` |
| `ICF-Research` / `Open-Research` | a40 / l40s / h200 / blackwell, "if you have the access grant" | `docs/NEXT_STEPS_2026-09-09.md:64` |
| Memory actually seen by jobs | `NVIDIA GeForce RTX 2080 Ti, 11264 MiB` (42 log lines); `NVIDIA H200, 143771 MiB` (125 log lines, host saxa) | `eval/cluster_out/*.out`, e.g. `eval/cluster_out/gine_3643960.out:1-3` |
| H200 handed out as a slice | `cuda: NVIDIA H200 MIG 1g.18gb` on saxa, from a plain `--gres=gpu:1` request | `eval/cluster_out/pretrain_3648251.out:2`, `pretrain_3648290.out:2`; request at `gen/pretrain.sbatch:18-19` |
| How to ask for a GPU type | `--partition=ICF-Free --gres=gpu:a40:1` (or `l40s` / `h200`). Typed request on `Teaching`: not recorded | `eval/cluster/train.sbatch:16`; `docs/NEXT_STEPS_2026-09-09.md:66` |
| GPUs per job | Every script asks for exactly one (`--gres=gpu:1`). Maximum allowed per job: **not recorded** | `eval/cluster/train.sbatch:17`, `eval/cluster/array_bundle.sbatch:15`, `gen/pretrain.sbatch:19` |
| Walltime | House rule: "set the maximum time to a few hours". Interactive: 2 h. Scripts request 2 h to 12 h and the 12 h ones produced logs (`kasper_tost_3682720`, `mds_boost_3682779`). Partition maximum: **not recorded** | `eval/cluster/README.md:150`, `:116`; `eval/kasper_tost.sbatch:25`; `eval/mds_boost.sbatch:22` |
| Node-local storage | `/disk/scratch/$USER/…`, per node, not visible from the login node or other nodes; must be cleaned up at job end. Size: **not recorded** | `eval/cluster/README.md:135`, `:149`; `gen/rl_v2_bootstrap.sbatch:44-49` |
| Shared storage | `$HOME` (distributed filesystem); slow for repeated reads; "NOT backed up"; "no hard quota but limited space". Free space: **not recorded** | `eval/cluster/README.md:134-135`, `:147` |
| Large files so far | Apptainer `.sif` kept on `$HOME`, copied to `/disk/scratch` by the job | `gen/rl_v2_bootstrap.sbatch:17-21`, `:57-64`; `docs/GENERATION_MODEL_2026-09-24.md:32-33` |
| Internet on compute nodes | None: "No internet on compute nodes except head-node git/pip" | `docs/NEXT_STEPS_PLAN_2026-09-10.md:6` |
| Internet on head node | Yes ("head node, which has outbound access"); earlier corpus downloads ran there | `eval/cluster/README.md:41`; `docs/NEXT_STEPS_PLAN_2026-09-10.md:89` |
| Containers | No Docker; Apptainer is used | `eval/cluster/README.md:99`; `docs/GENERATION_MODEL_2026-09-24.md:31-33` |
| Python environment | No conda provided; Miniconda in `$HOME`, env `specexec`, Python 3.11, torch cu121. The env sits on the shared filesystem | `eval/cluster/README.md:55-66`, `:162-163` |
| Job RAM / CPU used so far | 4–32 GB, 1–8 CPUs. Per-node maximum: **not recorded** | `#SBATCH` lines in `gen/*.sbatch`, `eval/**/*.sbatch` |
| Fair-share, per-user GPU or job caps, QoS | **not recorded** | — |

House rules (`eval/cluster/README.md:140-163`, commit `6f41ff47b`):

- No jobs on the head node. It takes `sbatch`, one `sacct`/`squeue` call when a result is
  due, and file copies. No Python, no `git status`, no polling loops (`:146`, `:156-158`).
- Do not use the shared filesystem as working space; copy to scratch, write there, copy
  results back once (`:147`).
- Copy small files in batches of 1000 or fewer; bundle before transfer (`:148`).
- Delete scratch files as soon as possible (`:149`).
- Set resource limits; maximum time "a few hours" (`:150`).
- Use array jobs with a `%` throttle; the repo uses `%4` (`:151`).
- Jobs short and fault tolerant (`:152`).
- Repo conventions, not School rules: submit with `--propagate=NONE` (the head-node
  `ulimit -v 512000` otherwise stops torch loading), never commit from the cluster checkout
  (`:159-161`).

Consequences for an LLM job. Weights must be downloaded on the head node (a file copy, but a
60 GB one into a home directory with "limited space" — check with the School first), kept on
`$HOME`, and copied to `/disk/scratch` at the start of each job. Training must checkpoint and
resume inside a few-hour window.

## Part 2 — candidates

Parameter counts are the `safetensors.total` field of the Hugging Face API for each
repository, except where the card states a figure and the stored tensors are packed
(quantised repositories report inflated counts). Release date is the repository `createdAt`.
The `zai-org` listing was read for the newest 100 repositories (back to mid-2024); the
`moonshotai` listing has 20 repositories in total.

### Text models that could conceivably be loaded

| Model | Released | Params (total / active) | Licence | Context | Reasoning | Architecture, loading |
|---|---|---|---|---|---|---|
| `zai-org/GLM-4.7-Flash` | 2026-01-19 | 31.22 B / about 3 B (card: "30B-A3B MoE") | MIT (card tag; no `LICENSE` file in the repo) | 202,752 (`config.json`); Z.ai docs say 200K, 128K output | Hybrid; thinking on by default, can be disabled | `Glm4MoeLiteForCausalLM`, native in transformers v5 (config written by 5.0.0rc0), no custom code |
| `zai-org/GLM-Z1-9B-0414` | 2025-04-08 | 9.40 B dense | MIT | 32,768 | Yes, enforced thinking; card recommends `max_new_tokens` 30000 | `Glm4ForCausalLM`, native (transformers ≥ 4.52) |
| `zai-org/GLM-4-9B-0414` | 2025-04-07 | 9.40 B dense | MIT | 32,768 | No | same |
| `zai-org/GLM-4-32B-0414` | 2025-04-07 | 32.57 B dense | MIT | 32,768 | No | same |
| `zai-org/GLM-Z1-32B-0414` | 2025-04-08 | 32.57 B dense | MIT | 32,768 | Yes | same |
| `zai-org/GLM-4.5-Air` (+ `-Base`) | 2025-07-20 | 110.5 B stored (card: 106 B / 12 B active) | MIT | 128K (card) | Hybrid | `Glm4MoeForCausalLM`, native |
| `moonshotai/Kimi-Dev-72B` | 2025-06-16 | 72.71 B dense | MIT | not stated on card (base model `Qwen/Qwen2.5-72B`) | No | `Qwen2ForCausalLM`, native |
| `moonshotai/Kimi-Linear-48B-A3B-Instruct` (+ `-Base`) | 2025-10-30 | 49.12 B / 3 B | MIT (card tag; no `LICENSE` file) | 1M | No | `KimiLinearForCausalLM`, **custom code** (`trust_remote_code`), needs `fla-core` ≥ 0.4.0, torch ≥ 2.6 |
| `moonshotai/Moonlight-16B-A3B-Instruct` | 2025-02-22 | 15.96 B / 3 B | MIT | 8,192 | No | custom code (DeepSeek-V3 class); released as a demonstration of the Muon optimiser |

### Models far too large for one GPU

| Model | Released | Params (total / active) | Licence | Context | Notes |
|---|---|---|---|---|---|
| `moonshotai/Kimi-K2-Instruct`, `-0905`, `Kimi-K2-Base` | 2025-07 to 2025-09 | **1 T / 32 B** (card); 1.026 T tensors stored | Modified MIT | 128K (first release), 256K (`-0905`) | Not a reasoning model |
| `moonshotai/Kimi-K2-Thinking` | 2025-11-04 | 1 T / 32 B | Modified MIT | 256K | Reasoning; native INT4 weights |
| `moonshotai/Kimi-K2.5`, `K2.6`, `K2.7-Code` | 2026-01-01, 2026-04-14, 2026-06-11 | 1 T / 32 B | Modified MIT | 256K | Multimodal, reasoning; INT4 repository is about 595 GB |
| `moonshotai/Kimi-K3` | 2026-06-13 | **2.8 T** (activated figure not extracted) | Kimi K3 License | 1M | Always-on reasoning; MXFP4 repository is about 1.56 TB |
| `moonshotai/Kimi-K3.1-Pro` | 2026-11-02 | 2.8 T / 104 B | Kimi K3.1-Pro License | 1,048,576 | As K3 |
| `zai-org/GLM-4.5`, `GLM-4.6`, `GLM-4.7` | 2025-07-20, 2025-09-29, 2025-12-22 | 357–358 B stored (card: 355 B / 32 B) | MIT | 128K (4.5), 200K (4.7, Z.ai docs) | Card: LoRA needs H100 ×16 |
| `zai-org/GLM-5`, `GLM-5.1`, `GLM-5.2` | 2026-02-11, 2026-04-03, 2026-06-16 | 753–754 B stored (GLM-5 card: 744 B / 40 B) | MIT | 1M (5.2 card) | Reasoning |
| `zai-org/GLM-5.3` | 2026-08-25 | 753 B stored | GLM-5.3 License | 1M used in the card's evaluations | Reasoning (`reasoning_effort`) |
| `zai-org/GLM-5.3-Flash` | 2026-08-25 | 320 B / 18 B (card) | MIT | not stated on card | Multimodal, reasoning. 4-bit weights alone are about 149 GiB (est.), more than one H200 |

**The recollection that Kimi K2 is about a trillion parameters is correct**: every K2-series
card (K2 to K2.7) states "Total Parameters 1T, Activated Parameters 32B". K3 and K3.1 Pro
are 2.8 T.

Not text-in/text-out and left out: GLM-4.5V / 4.6V / 4.1V, GLM-OCR, GLM-Image, GLM-TTS,
GLM-ASR, AutoGLM-Phone, CogView / CogVideoX, Kimi-VL-A3B, Kimi-Audio, MoonViT. Older
restricted-licence GLM repositories (`glm-4-9b-chat-hf`, `codegeex4-all-9b`, `glm-edge-*`)
are superseded by the MIT 0414 series.

### Licences (from the `LICENSE` files)

- **MIT** (GLM-4.x, GLM-5 to 5.2, GLM-5.3-Flash, GLM 0414 series, Kimi-Dev, Kimi-Linear,
  Moonlight): no limit on research use or on redistributing tuned weights. The GLM-4.5 card
  says the models "can be used commercially and for secondary development". GLM-4.7-Flash
  and Kimi-Linear declare MIT in the card metadata but ship no `LICENSE` file.
- **Modified MIT** (Kimi K2 to K2.7): MIT plus an attribution rule for products with over
  100 million monthly users or over 20 million US dollars monthly revenue. No effect on us.
- **Kimi K3 / K3.1-Pro License**, **GLM-5.3 License**: fine-tuning and redistribution are
  granted explicitly; the extra conditions apply to large "Model as a Service" businesses
  and to very large commercial products. No effect on research use.
- **glm-4 licence** (`glm-4-9b-chat-hf`, older): academic research is free, but any
  distributed tuned model must have "glm-4" at the start of its name and carry "Built with
  glm-4"; military use is barred. Avoid; the 0414 models are MIT.

### Official fine-tuning support

- GLM-4.5 card: LoRA through LLaMA-Factory, GLM-4.5 on H100 ×16 and GLM-4.5-Air on H100 ×4
  (or H20 96 GiB ×16 / ×4), batch size 1. That is the only tuning recipe in a GLM card.
- GLM-4.7-Flash card: inference only (vLLM, SGLang, transformers). The tuning recipe is
  third-party: the Unsloth docs say it is supported with transformers v5, "16-bit LoRA
  fine-tuning of GLM-4.7-Flash will use around 60GB VRAM", an A100 40 GB can run out of
  memory, and the MoE router layer is left frozen by default.
- GLM-5.2 and GLM-5.3 cards link Unsloth guides; those models are out of reach here anyway.
- Kimi cards: `Kimi-K2-Base` is described as the starting point "for fine-tuning and custom
  solutions"; no recipe or hardware figure is given. Kimi-Linear, Kimi-Dev and Moonlight
  cards say nothing about tuning.

### GRPO library support (official docs)

- **TRL `GRPOTrainer`** (Hugging Face docs, main branch). "Only causal language models are
  supported." Accepts `peft_config`, and `quantization_config` "for QLoRA training". Custom
  reward functions are plain Python callables that receive `prompts`, `completions` and
  every extra dataset column as keyword arguments and return a list of floats, which is what
  a checkable reward needs. `trust_remote_code` defaults to false. "Compatibility with all
  LLMs is not guaranteed." The reference model is not loaded when `beta` is 0 (the default).
  vLLM generation either shares the training GPU (colocate, `vllm_gpu_memory_utilization`
  0.3 by default) or runs on separate GPUs (server mode). The page's own runs use
  Qwen2.5-0.5B on 8 GPUs and Qwen2.5-72B on four 8-GPU nodes plus a fifth for vLLM; it gives
  no single-GPU memory figures. The page names `zai-org/GLM-4.7` in one example; I did not
  confirm the context.
- **Unsloth RL guide.** Shows a `GRPOConfig` (the TRL class name; the page does not name the
  trainer). Stated sizes: "With 15GB VRAM, Unsloth allows you to transform any model up to
  17B parameters"; for 4-bit QLoRA "the model parameters = the amount of VRAM you will
  need"; 16-bit LoRA "will use at minimum 4x more VRAM". Use a model of at least 1.5 B
  parameters; wait "at least 300 steps" for the reward to move; at least 500 rows. Official
  GRPO notebooks go up to gpt-oss-20b and Phi-4 (14 B) on single GPUs. **No GLM or Kimi
  model has a GRPO notebook.**
- **verifiers** (Prime Intellect). The README describes it as a library "for creating
  environments to train and evaluate LLMs" and points to `prime-rl` for training. It states
  no hardware or model sizes.
- **Pairwise loss.** No library is needed: a custom loop over a PEFT-wrapped causal LM in
  transformers. This works for any natively supported architecture and is one more reason
  to avoid custom-code models.

So single-GPU GRPO is documented at 3 B to 20 B parameters on 15–24 GB cards with 4-bit
weights. Nobody documents GRPO on GLM-4.7-Flash, on any Kimi model, or on a 30 B MoE on one
GPU. For the top pick that step is untested ground.

## Memory arithmetic (estimates)

Weights only: parameters × bytes per parameter ÷ 2^30. bf16 is 2 bytes, 8-bit is 1,
4-bit is 0.5. Real 4-bit loads are larger because embeddings, norms and the output head stay
at 16 bits (for GLM-4.7-Flash, 154,880 × 2,048 ≈ 0.32 B parameters ≈ 0.6 GiB per matrix).
Cards: 2080 Ti 11,264 MiB = 11.0 GiB; H200 143,771 MiB = 140.4 GiB; a6000 / a40 / l40s
nominal 48 GB (not measured in the repo); H200 slice nominal 18 GB.

| Model | Params | bf16 | 8-bit | 4-bit | Publisher or library figure |
|---|---|---|---|---|---|
| GLM-4.7-Flash | 31.22 B | 58.2 GiB | 29.1 GiB | 14.5 GiB | Unsloth: about 18 GB at 4-bit (GGUF, inference); about 60 GB for 16-bit LoRA |
| GLM-Z1-9B / GLM-4-9B-0414 | 9.40 B | 17.5 GiB | 8.8 GiB | 4.4 GiB (about 6 with 16-bit embeddings) | none |
| GLM-4-32B / Z1-32B-0414 | 32.57 B | 60.7 GiB | 30.3 GiB | 15.2 GiB | none |
| Kimi-Linear-48B-A3B | 49.12 B | 91.5 GiB | 45.7 GiB | 22.9 GiB | none |
| Kimi-Dev-72B | 72.71 B | 135.4 GiB | 67.7 GiB | 33.9 GiB | none |
| Moonlight-16B-A3B | 15.96 B | 29.7 GiB | 14.9 GiB | 7.4 GiB | none |
| GLM-4.5-Air | 110.47 B | 205.8 GiB | 102.9 GiB | 51.4 GiB | card: LoRA on H100 ×4 |
| GLM-5.3-Flash | 320 B | 596 GiB | 298 GiB | 149 GiB | none |

Training adds LoRA parameters (small), optimiser state for them (small), and activations.
Inputs here are short: 200 lines of assembly at roughly 10–15 tokens a line is about 3k
tokens plus the prompt, so activations with gradient checkpointing are a few GiB at batch
size 4–8. GRPO adds generation of a group of completions per prompt; with reasoning left on,
each can run to a thousand tokens or more. Working budgets (est.):

| Model, mode | Budget (est.) | 2080 Ti 11 GiB | H200 slice 18 GB | 48 GB card | whole H200 140 GiB |
|---|---|---|---|---|---|
| GLM-4.7-Flash, 4-bit inference | 18–20 GiB | no | no | yes | yes |
| GLM-4.7-Flash, 4-bit QLoRA / pairwise / GRPO | 24–36 GiB | no | no | yes, tight for GRPO | yes |
| GLM-4.7-Flash, bf16 inference | about 60 GiB | no | no | no | yes |
| GLM-4.7-Flash, bf16 LoRA / GRPO | 60–80 GiB (Unsloth: about 60 GB) | no | no | no | yes |
| GLM-Z1-9B, 4-bit inference | about 7 GiB | yes | yes | yes | yes |
| GLM-Z1-9B, 4-bit QLoRA / GRPO | 10–14 GiB (Unsloth rule: about 9.4 GB plus context) | marginal | yes | yes | yes |
| GLM-Z1-9B, bf16 LoRA | about 38 GiB (Unsloth "4×" rule) | no | no | yes | yes |
| Kimi-Dev-72B, 4-bit QLoRA | 45–60 GiB | no | no | no | yes |
| Kimi-Linear-48B, bf16 | about 95 GiB | no | no | no | yes, if it trains at all |

"Same weights in every arm" also means the same precision. If tuning is 4-bit QLoRA, run
the zero-shot arm on the same 4-bit load, not on bf16.

## Ranked recommendation

1. **`zai-org/GLM-4.7-Flash`.** The only current-generation model in either family that fits
   one GPU. MIT, native transformers class, hybrid reasoning, 200K context, a documented LoRA
   path. Condition: a 48 GB card (4-bit) or a whole H200 (16-bit).
2. **`zai-org/GLM-Z1-9B-0414`** (or `GLM-4-9B-0414` if a non-reasoning model is wanted).
   Fallback when only 11 GB cards or 18 GB slices are available. Dense, so 4-bit loading and
   LoRA are routine, and its size is inside the range where single-GPU GRPO is documented.
   Costs: a 19-month-old model and a 32K context (ample for 200 lines).
3. **`zai-org/GLM-4-32B-0414` / `GLM-Z1-32B-0414`.** Same memory as the top pick, dense
   instead of MoE. Use if the GLM-4.7-Flash expert layers do not work with 4-bit loading or
   PEFT. Older and weaker on the card's own benchmarks.
4. **`moonshotai/Kimi-Dev-72B`.** The only workable Kimi-family option: standard Qwen2
   class, MIT. Rejected as first choice because it needs a whole H200 even at 4-bit for
   tuning, GRPO rollouts on a 72 B dense model inside a few-hour job will be very slow, and
   it is a Qwen2.5-72B fine-tune for repository issue resolution, not a Kimi architecture.

Rejected, with the deciding constraint:

| Model | Deciding constraint |
|---|---|
| Kimi K2, K2-Thinking, K2.5, K2.6, K2.7-Code | 1 T parameters; the INT4 repository alone is about 595 GB against 140 GiB on the largest GPU |
| Kimi K3, K3.1-Pro | 2.8 T parameters; about 1.56 TB of weights |
| GLM-5, 5.1, 5.2, 5.3 | about 750 B parameters |
| GLM-5.3-Flash | 320 B; 4-bit weights about 149 GiB, over one H200, and a multi-GPU allowance is not recorded |
| GLM-4.5, 4.6, 4.7 | 355 B; the card's own LoRA recipe is H100 ×16 |
| GLM-4.5-Air | 106 B; card LoRA recipe is H100 ×4; 4-bit weights about 51 GiB would load on a whole H200 but leave an untested, slow tuning setup |
| Kimi-Linear-48B-A3B | custom modelling code and a custom attention kernel, no documented LoRA, quantisation or GRPO path, and TRL's default refuses remote code. bf16 fits only a whole H200 |
| Moonlight-16B-A3B | optimiser-research release with an 8K context and custom code; weaker than the 9 B GLM options with nothing in return |
| `glm-4-9b-chat-hf`, `codegeex4-all-9b`, `glm-edge-*` | restrictive glm-4 licence (naming and attribution duties on tuned weights); superseded by the MIT 0414 models |

## What must be staged to shared storage in advance

Compute nodes have no internet, so all of this goes to `$HOME` from the head node and is
copied to `/disk/scratch/$USER/…` by each job, following `gen/rl_v2_bootstrap.sbatch:44-64`.

- **Weights.** `zai-org/GLM-4.7-Flash` is 62.9 GB on the Hub (bf16 safetensors);
  `GLM-Z1-9B-0414` is 18.8 GB. Download a pinned revision and record the commit hash. Store
  the model as its few large shards; the rule about batches of 1000 small files then does
  not bite. Copying 63 GB from the slow shared filesystem to scratch is paid on every job.
- **Tokenizer, chat template, `generation_config.json`** from the same revision.
- **Python packages**, installed on the head node into the env or carried as wheels:
  transformers v5 (the GLM-4.7-Flash card installs from git main; its config was written by
  5.0.0rc0), `peft`, `trl`, `accelerate`, `bitsandbytes`, `safetensors`, optionally `vllm`.
  Whether transformers v5 works with the existing torch cu121 build was not checked.
- **Offline switches** in the job: `HF_HUB_OFFLINE=1`, `TRANSFORMERS_OFFLINE=1`, `HF_HOME`
  on scratch, and loading from the local path.
- **Our data**: the pair set and prompts as one bundled file, as in `array_bundle.sbatch`.
- **Outputs**: LoRA adapters only (tens to hundreds of MB) copied back; never the merged
  model. Checkpoint the adapter and optimiser state often enough to resume in a new job.

## Open risks

1. **GPU allocation is unknown.** See "Binding constraint". Also unknown: whether
   `nvidia-smi` inside a slice reports the parent card's 143,771 MiB, in which case some of
   the "whole H200" log lines were really 18 GB slices.
2. **4-bit loading of the GLM-4.7-Flash MoE layers is unverified.** No primary source shows
   bitsandbytes plus PEFT on `Glm4MoeLiteForCausalLM`. Unsloth documents 16-bit LoRA only.
   If it fails, the choices are a whole H200 at 16 bits, or the dense 32 B / 9 B models.
3. **GRPO on a 30 B MoE on one GPU is undocumented.** Documented single-GPU GRPO stops at
   about 20 B with 4-bit weights. Expect slow rollouts without vLLM; colocated vLLM needs a
   second copy of the weights in memory, which only a whole H200 can hold.
4. **Reasoning tokens.** GLM-4.7-Flash thinks by default and the card evaluates with up to
   131,072 new tokens. For GRPO, cap or disable thinking, and use the same setting in the
   zero-shot arm. Unsloth advises keeping at least 75% reasoning examples in supervised data
   to preserve the reasoning ability.
5. **Walltime.** A few-hour limit against several hundred GRPO steps means multi-job runs
   with resume; the partition maximum is not recorded.
6. **Home space.** 63 GB of weights in a home directory with "limited space" and no backup.
7. **Licence file.** GLM-4.7-Flash declares MIT in its card metadata only.
8. **Contingency outside the requested families.** Only if both GLM options fail: the
   models with official single-GPU GRPO notebooks in the Unsloth docs (for example
   gpt-oss-20b, Phi-4 14 B, Qwen3 8 B). Their licences and sizes were not checked here.

## What the user must supply (not in the repo)

- What `--gres=gpu:1` on `Teaching` guarantees, and the gres type string for the a6000 and
  for a whole (non-MIG) H200 there.
- Whether this account can submit to `ICF-Free` (a40 / l40s 48 GB, h200 ×8), and its limits.
- Maximum GPUs per job, partition maximum walltime, per-user job and GPU caps.
- Free space in `$HOME` and the size of `/disk/scratch` on the GPU nodes.
- Whether the School accepts a 60 GB download on the head node.
- RAM available per job on the GPU nodes (loading 63 GB of weights needs host memory too).

## Search log

All accessed 2026-11-13. No search-engine queries were issued; every request was a direct
fetch of a publisher or library page. No project, user or result names were sent.

| Source | What it was used for |
|---|---|
| `https://huggingface.co/api/models?author=zai-org&sort=createdAt&direction=-1&limit=100` | list of Z.ai repositories, dates, licence tags |
| `https://huggingface.co/api/models?author=moonshotai&sort=createdAt&direction=-1&limit=100` | list of Moonshot repositories (20) |
| `https://huggingface.co/api/models/<id>` for 30 repositories (GLM-5.3, 5.3-Flash, 5.2, 5.1, 5, 4.7, 4.7-Flash, 4.6, 4.5, 4.5-Air, 4.5-Air-Base, GLM-4-32B-0414, Z1-32B-0414, Z1-9B-0414, GLM-4-9B-0414, glm-4-9b-chat-hf, codegeex4-all-9b, glm-edge-4b-chat; Kimi-K3.1-Pro, K3, K2.7-Code, K2.6, K2.5, K2-Thinking, K2-Instruct-0905, K2-Instruct, Kimi-Linear-48B-A3B-Instruct, Kimi-Dev-72B, Kimi-VL-A3B-Thinking-2506, Moonlight-16B-A3B-Instruct) | parameter counts, storage size, licence, architecture class, creation date |
| `https://huggingface.co/<id>/raw/main/README.md` for the same 30 | model cards |
| `https://huggingface.co/<id>/raw/main/LICENSE` for GLM-5.3, GLM-5.3-Flash, GLM-4.7-Flash (absent), glm-4-9b-chat-hf, Kimi-K3.1-Pro, Kimi-K2.6, Kimi-Linear-48B-A3B-Instruct (absent) | licence terms |
| `https://huggingface.co/<id>/raw/main/config.json` for GLM-4.7-Flash, GLM-5.3-Flash, Kimi-Linear-48B-A3B-Instruct, GLM-Z1-9B-0414, GLM-4-32B-0414, Moonlight-16B-A3B-Instruct | context length, layer and expert counts, transformers version |
| `https://docs.z.ai/guides/llm/glm-4.7` | context and output limits, thinking switch |
| `https://huggingface.co/docs/trl/main/en/grpo_trainer` (first 100,000 of 116,108 characters read) | GRPO trainer capabilities and limits |
| `https://unsloth.ai/docs/get-started/reinforcement-learning-rl-guide` | single-GPU GRPO sizes and rules of thumb |
| `https://unsloth.ai/docs/models/glm-4.7-flash` | LoRA memory for GLM-4.7-Flash, transformers v5 requirement |
| `https://github.com/PrimeIntellect-ai/verifiers` | scope of the verifiers library |

Not done: the full text of the Kimi K3 licence was not read (the K3.1-Pro licence was); the
activated-parameter figure for K3 was not extracted; LLaMA-Factory's current model list was
not checked for GLM-4.7-Flash; no model was loaded or run.
