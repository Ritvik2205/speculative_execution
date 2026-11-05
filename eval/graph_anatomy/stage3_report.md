# Stage 3 report — model INPUT features (summary first, full tables below)

Reproduce: `python3 eval/graph_anatomy/stage3_features.py && python3 eval/graph_anatomy/stage3_analysis.py`
(features built by the repo's own `GINEDatasetV47._process_record`, B1 recipe: spec builder, strip_bp, hand node features).

## Verdict

1. **Synthetic class signal is mostly trigger/probe opcodes that never occur on real Revizor gadgets.**
   85/115 per-graph input dims are dead on all 949 real gadgets (constant, or fire <1% vs >=5% synthetic).
   15 of the top-20 synthetic-separating features are dead; 68.7% of total synthetic separation (KW eps^2) and
   55% (Gini) / 58% (permutation) of RF importance sit in dead dims. Top-ranked: has_clflush (eps^2 0.79; fires on
   83% syn MDS, 93% syn L1TF, 0% real), clflush_load, CACHE_TEMPORAL edges, op_CACHE/is_cache_probe, mfence,
   rdtsc/TIMING, lfence/FENCE_BOUNDARY edges, verw (only syn MDS), call/ret/nop/stack (Revizor programs have none).
   `has_page_probe_load` is ~0 even in synthetic L1TF (3%) and 0 on real; `has_indexed_load`/`indexed_load_norm`
   are 0 on every x86 row, synthetic and real (the `_INDEXED_LOAD` regex is ARM-bracket only — a latent bug).
2. **Transfer collapse is reproduced at the input level, no GNN needed.** RF on synthetic per-graph inputs:
   0.961 synthetic CV bal.acc -> 0.250 on real (all 725 predicted SPECTRE_V1). Dropping dead dims: 0.938 syn,
   0.430 real (still 0/116 V4). Handcrafted-58 alone: 0.947 syn -> 0.250 real (all V1).
3. **Every real gadget is out of distribution.** 100% fall outside their own synthetic class range (mean 5-12 dims),
   >=97% outside the 4-class union; median 1-NN distance 8.6-11.0 vs 1.9 synthetic-to-synthetic. Nearest synthetic
   centroid AND 1-NN is SPECTRE_V1 for 949/949 real gadgets (real code = dense indexed ALU/cmov, mem_INDEXED 0.30 vs
   0.01-0.06 synthetic; no stack/call/ret) — this is the mechanism behind "everything -> V1".
4. **Shared corpus MDS vs L1TF: inputs carry no class.** 87/115 dims constant; only 5/58 handcrafted dims vary.
   1 feature has a seed-group CI excluding 0 (op_SHIFT, d=-0.39 [-0.67,-0.09]; expected ~6 by chance among 28).
   GroupKFold bal.acc: LR hc58 0.439 [0.35,0.53] p=0.87; RF hc58 0.399; all per-graph inputs LR 0.462, RF 0.277
   (chance 0.50). Synthetic-trained MDS-vs-L1TF RF predicts L1TF for 130/130 (bal.acc 0.500).
   Only V1 is separable on real, via conditional branches (op_BRANCH_COND eps^2 0.86 shared) — real MDS/L1TF/V4 have none.
5. Per-class-config real corpus shows spurious separability (unique_opcode_fraction eps^2 0.45) that vanishes under the
   shared menu (0.00): per-class real separability is an instruction-menu confound. arch_id is constant (x86) everywhere.

# Stage 3 — model INPUT features: synthetic class signal vs real Revizor gadgets

Built with the repo's own `GINEDatasetV47._process_record` (use_spec_builder=True, strip_bp=True, node_feature_mode='hand' = locked B1 recipe) via `stage3_features.py`; nothing re-implemented. Rows: synthetic x86 2093 (4 Revizor classes: 1012), per-class real 725, shared 224.

## 1. Every input the model sees

| block | dims | contents |
|---|---|---|
| node features (per node) | 41 | 19 opcode-category one-hot (op_LOAD, op_STORE, op_BRANCH_COND, op_BRANCH_UNCOND, op_CALL, op_CALL_INDIRECT, op_RET, op_JUMP_INDIRECT, op_COMPARE, op_ARITHMETIC, op_LOGIC, op_SHIFT, op_FENCE, op_CACHE, op_TIMING, op_MOVE, op_STACK, op_NOP, op_OTHER); 5 mem-access one-hot (mem_NONE, mem_STACK, mem_HEAP, mem_INDEXED, mem_INDIRECT); num_dest_regs, num_src_regs; 14 spec flags (is_serializing, is_cache_probe, is_branch, is_indirect_branch, is_memory_access, is_timing_source, is_secret_source, is_transmitter, is_lfence, is_mfence_or_sfence, is_verw, is_prefetch, is_nontemp_load, is_gather); pos_enc |
| edges | 9 types | edgefrac_DATA_DEP, edgefrac_CONTROL_FLOW, edgefrac_SPEC_CONDITIONAL, edgefrac_SPEC_INDIRECT, edgefrac_SPEC_RETURN, edgefrac_MEMORY_ORDER, edgefrac_CACHE_TEMPORAL, edgefrac_FENCE_BOUNDARY, edgefrac_RSB_CHAIN (+ edge_weight) |
| handcrafted inline | 58 | frac_nop, frac_ret, frac_retq, frac_call, frac_callq, frac_bl, frac_blr, frac_br, frac_cmp, frac_cmn, frac_test, frac_tst, frac_ldr, frac_ldp, frac_str, frac_stp, frac_movq, frac_movl, frac_clflush, frac_clflushopt, frac_rdtsc, frac_rdtscp, frac_lfence, frac_mfence, frac_sfence, frac_verw, frac_movntdqa, frac_adrp, frac_x86_only, frac_arm_only, frac_indirect, frac_branch, frac_load, frac_store, max_nop_run_norm, call_ret_pair_norm, indexed_load_norm, clflush_load_norm, branch_after_cmp_norm, indirect_then_load_norm, unique_opcode_fraction, has_rdtsc, has_verw, has_movntdqa, has_lfence, has_clflush, has_indirect, has_nop_run_3plus, has_indexed_load, has_call_ret_pair, has_clflush_load, ret_call_ratio, nop_ret_ratio, indirect_cond_ratio, load_store_ratio, calls_attack_fn, has_page_probe_load, page_probe_density |
| global | 5 | g_nop_frac, g_indirect_frac, g_ret_frac, g_verw_frac, g_movntdqa_frac |
| arch_id | 1 (embedding) | x86_64=0 for every synthetic-x86 and every real row -> carries zero class information here |

Node features enter the GNN per node; below they are summarised per graph as the mean over valid nodes (`nodemean_*` = fraction of nodes with that category/flag), plus per-graph edge-type fractions and n_nodes.

## 2. Which features carry class in synthetic training, and do they exist on real gadgets?

Separation = Kruskal-Wallis epsilon^2 across the 4 Revizor classes (MDS/L1TF/V1/V4) on synthetic x86 (0 = no separation, 1 = perfect). nz = fraction of rows where the feature is non-zero. 'dead' = constant on all 949 real rows, or fires on <1% of real rows while firing on >=5% of synthetic.

| rank | feature | syn eps2 | real eps2 (per-class cfgs) | shared eps2 | syn nz (MDS/L1TF/V1/V4) | real nz (MDS/L1TF/V1/V4) | real rows outside syn p1-p99 | dead |
|---|---|---|---|---|---|---|---|---|
| 1 | `has_clflush` | 0.786 | 0.000 | 0.000 | 0.83/0.93/0.01/0.03 | 0.00/0.00/0.00/0.00 | 0.00 | DEAD |
| 2 | `frac_clflush` | 0.720 | 0.000 | 0.000 | 0.80/0.91/0.01/0.03 | 0.00/0.00/0.00/0.00 | 0.00 | DEAD |
| 3 | `edgefrac_SPEC_CONDITIONAL` | 0.697 | 0.130 | 0.134 | 0.21/0.21/0.97/0.01 | 0.00/0.00/0.18/0.00 | 0.00 |  |
| 4 | `has_clflush_load` | 0.687 | 0.000 | 0.000 | 0.76/0.84/0.01/0.03 | 0.00/0.00/0.00/0.00 | 0.00 | DEAD |
| 5 | `clflush_load_norm` | 0.663 | 0.000 | 0.000 | 0.76/0.84/0.01/0.03 | 0.00/0.00/0.00/0.00 | 0.00 | DEAD |
| 6 | `edgefrac_CACHE_TEMPORAL` | 0.641 | 0.000 | 0.000 | 0.81/0.91/0.07/0.03 | 0.00/0.00/0.00/0.00 | 0.00 | DEAD |
| 7 | `nodemean_op_BRANCH_COND` | 0.604 | 0.878 | 0.863 | 0.27/0.33/0.99/0.03 | 0.00/0.00/0.94/0.00 | 0.00 |  |
| 8 | `nodemean_op_CACHE` | 0.603 | 0.000 | 0.000 | 0.83/0.93/0.08/0.03 | 0.00/0.00/0.00/0.00 | 0.00 | DEAD |
| 9 | `nodemean_flag_is_cache_probe` | 0.603 | 0.000 | 0.000 | 0.83/0.93/0.08/0.03 | 0.00/0.00/0.00/0.00 | 0.00 | DEAD |
| 10 | `nodemean_op_COMPARE` | 0.601 | 0.043 | 0.000 | 0.27/0.38/1.00/0.03 | 0.93/0.77/0.80/0.98 | 0.00 |  |
| 11 | `frac_mfence` | 0.549 | 0.000 | 0.000 | 0.85/0.58/0.04/0.03 | 0.00/0.00/0.00/0.00 | 0.00 | DEAD |
| 12 | `has_rdtsc` | 0.509 | 0.000 | 0.000 | 0.33/0.60/0.01/0.84 | 0.00/0.00/0.00/0.00 | 0.00 | DEAD |
| 13 | `nodemean_op_TIMING` | 0.505 | 0.000 | 0.000 | 0.32/0.60/0.01/0.84 | 0.00/0.00/0.00/0.00 | 0.00 | DEAD |
| 14 | `nodemean_flag_is_timing_source` | 0.505 | 0.000 | 0.000 | 0.32/0.60/0.01/0.84 | 0.00/0.00/0.00/0.00 | 0.00 | DEAD |
| 15 | `frac_rdtsc` | 0.503 | 0.000 | 0.000 | 0.24/0.51/0.01/0.84 | 0.00/0.00/0.00/0.00 | 0.00 | DEAD |
| 16 | `nodemean_flag_is_mfence_or_sfence` | 0.499 | 0.000 | 0.000 | 0.89/0.58/0.08/0.06 | 0.00/0.00/0.00/0.00 | 0.00 | DEAD |
| 17 | `nodemean_flag_is_transmitter` | 0.447 | 0.185 | 0.015 | 0.64/0.77/0.95/0.09 | 0.00/0.39/0.43/0.81 | 0.00 |  |
| 18 | `nodemean_op_FENCE` | 0.361 | 0.000 | 0.000 | 0.89/0.91/0.33/0.97 | 0.00/0.00/0.00/0.00 | 0.00 | DEAD |
| 19 | `nodemean_flag_is_serializing` | 0.361 | 0.000 | 0.000 | 0.89/0.91/0.33/0.97 | 0.00/0.00/0.00/0.00 | 0.00 | DEAD |
| 20 | `nodemean_op_STORE` | 0.334 | 0.123 | 0.000 | 0.96/0.99/0.55/1.00 | 0.00/0.17/0.20/0.53 | 0.00 |  |
| 21 | `nodemean_mem_HEAP` | 0.324 | 0.105 | 0.000 | 0.99/0.97/0.98/1.00 | 0.00/0.25/0.24/0.00 | 0.00 |  |
| 22 | `edgefrac_FENCE_BOUNDARY` | 0.316 | 0.000 | 0.000 | 0.89/0.91/0.33/0.88 | 0.00/0.00/0.00/0.00 | 0.00 | DEAD |
| 23 | `frac_movq` | 0.311 | 0.096 | 0.000 | 1.00/0.99/0.53/1.00 | 0.00/0.07/0.13/0.34 | 0.00 |  |
| 24 | `nodemean_flag_is_secret_source` | 0.298 | 0.185 | 0.015 | 0.64/0.77/0.95/0.09 | 0.00/0.39/0.43/0.81 | 0.00 |  |
| 25 | `unique_opcode_fraction` | 0.284 | 0.454 | 0.000 | 1.00/1.00/1.00/1.00 | 1.00/1.00/1.00/1.00 | 0.00 |  |
| 26 | `nodemean_op_SHIFT` | 0.274 | 0.057 | 0.014 | 0.76/0.93/0.91/0.60 | 0.00/0.12/0.08/0.26 | 0.00 |  |
| 27 | `has_lfence` | 0.240 | 0.000 | 0.000 | 0.61/0.60/0.28/0.97 | 0.00/0.00/0.00/0.00 | 0.00 | DEAD |
| 28 | `edgefrac_SPEC_RETURN` | 0.238 | 0.000 | 0.000 | 0.40/0.39/0.14/0.67 | 0.00/0.00/0.00/0.00 | 0.00 | DEAD |
| 29 | `has_verw` | 0.221 | 0.000 | 0.000 | 0.25/0.00/0.00/0.00 | 0.00/0.00/0.00/0.00 | 0.00 | DEAD |
| 30 | `frac_verw` | 0.221 | 0.000 | 0.000 | 0.25/0.00/0.00/0.00 | 0.00/0.00/0.00/0.00 | 0.00 | DEAD |
| 31 | `g_verw_frac` | 0.221 | 0.000 | 0.000 | 0.25/0.00/0.00/0.00 | 0.00/0.00/0.00/0.00 | 0.00 | DEAD |
| 32 | `nodemean_flag_is_verw` | 0.221 | 0.000 | 0.000 | 0.25/0.00/0.00/0.00 | 0.00/0.00/0.00/0.00 | 0.00 | DEAD |
| 33 | `frac_lfence` | 0.197 | 0.000 | 0.000 | 0.61/0.60/0.28/0.97 | 0.00/0.00/0.00/0.00 | 0.00 | DEAD |
| 34 | `nodemean_flag_is_lfence` | 0.196 | 0.000 | 0.000 | 0.61/0.60/0.28/0.97 | 0.00/0.00/0.00/0.00 | 0.00 | DEAD |
| 35 | `frac_x86_only` | 0.188 | 0.013 | 0.054 | 1.00/1.00/0.99/1.00 | 1.00/1.00/1.00/1.00 | 0.00 |  |

Dead-on-real features: **85/115**. Of the top-20 synthetic-separating features, **15** are dead on real. Share of total synthetic eps2 mass in dead features: **68.7%**.

Dead list: `frac_nop`, `frac_ret`, `frac_retq`, `frac_call`, `frac_callq`, `frac_bl`, `frac_blr`, `frac_br`, `frac_cmp`, `frac_cmn`, `frac_test`, `frac_tst`, `frac_ldr`, `frac_ldp`, `frac_str`, `frac_stp`, `frac_clflush`, `frac_clflushopt`, `frac_rdtsc`, `frac_rdtscp`, `frac_lfence`, `frac_mfence`, `frac_sfence`, `frac_verw`, `frac_movntdqa`, `frac_adrp`, `frac_arm_only`, `frac_indirect`, `frac_load`, `frac_store`, `max_nop_run_norm`, `call_ret_pair_norm`, `indexed_load_norm`, `clflush_load_norm`, `branch_after_cmp_norm`, `indirect_then_load_norm`, `has_rdtsc`, `has_verw`, `has_movntdqa`, `has_lfence`, `has_clflush`, `has_indirect`, `has_nop_run_3plus`, `has_indexed_load`, `has_call_ret_pair`, `has_clflush_load`, `ret_call_ratio`, `nop_ret_ratio`, `indirect_cond_ratio`, `load_store_ratio`, `calls_attack_fn`, `has_page_probe_load`, `page_probe_density`, `g_nop_frac`, `g_indirect_frac`, `g_ret_frac`, `g_verw_frac`, `g_movntdqa_frac`, `nodemean_op_CALL`, `nodemean_op_CALL_INDIRECT`, `nodemean_op_RET`, `nodemean_op_JUMP_INDIRECT`, `nodemean_op_FENCE`, `nodemean_op_CACHE`, `nodemean_op_TIMING`, `nodemean_op_STACK`, `nodemean_op_NOP`, `nodemean_mem_STACK`, `nodemean_mem_INDIRECT`, `nodemean_flag_is_serializing`, `nodemean_flag_is_cache_probe`, `nodemean_flag_is_indirect_branch`, `nodemean_flag_is_timing_source`, `nodemean_flag_is_lfence`, `nodemean_flag_is_mfence_or_sfence`, `nodemean_flag_is_verw`, `nodemean_flag_is_prefetch`, `nodemean_flag_is_nontemp_load`, `nodemean_flag_is_gather`, `edgefrac_SPEC_INDIRECT`, `edgefrac_SPEC_RETURN`, `edgefrac_CACHE_TEMPORAL`, `edgefrac_FENCE_BOUNDARY`, `edgefrac_RSB_CHAIN`, `arch_id`

### Named suspects (mean value per class; synthetic x86 -> per-class real -> shared)

| feature | MDS syn / real / shared | L1TF syn / real / shared | SPECTRE_V1 syn / real / shared | SPECTRE_V4 syn / real / shared |
|---|---|---|---|---|
| `frac_clflush` | 0.033 / 0.000 / 0.000 | 0.043 / 0.000 / 0.000 | 0.000 / 0.000 / 0.000 | 0.002 / 0.000 / 0.000 |
| `has_clflush` | 0.832 / 0.000 / 0.000 | 0.925 / 0.000 / 0.000 | 0.013 / 0.000 / 0.000 | 0.029 / 0.000 / 0.000 |
| `frac_rdtsc` | 0.012 / 0.000 / 0.000 | 0.035 / 0.000 / 0.000 | 0.000 / 0.000 / 0.000 | 0.046 / 0.000 / 0.000 |
| `has_rdtsc` | 0.329 / 0.000 / 0.000 | 0.600 / 0.000 / 0.000 | 0.009 / 0.000 / 0.000 | 0.843 / 0.000 / 0.000 |
| `frac_lfence` | 0.029 / 0.000 / 0.000 | 0.040 / 0.000 / 0.000 | 0.014 / 0.000 / 0.000 | 0.054 / 0.000 / 0.000 |
| `has_lfence` | 0.615 / 0.000 / 0.000 | 0.600 / 0.000 / 0.000 | 0.279 / 0.000 / 0.000 | 0.971 / 0.000 / 0.000 |
| `frac_verw` | 0.019 / 0.000 / 0.000 | 0.000 / 0.000 / 0.000 | 0.000 / 0.000 / 0.000 | 0.000 / 0.000 / 0.000 |
| `has_verw` | 0.255 / 0.000 / 0.000 | 0.000 / 0.000 / 0.000 | 0.000 / 0.000 / 0.000 | 0.000 / 0.000 / 0.000 |
| `frac_mfence` | 0.050 / 0.000 / 0.000 | 0.027 / 0.000 / 0.000 | 0.002 / 0.000 / 0.000 | 0.002 / 0.000 / 0.000 |
| `has_movntdqa` | 0.056 / 0.000 / 0.000 | 0.000 / 0.000 / 0.000 | 0.000 / 0.000 / 0.000 | 0.000 / 0.000 / 0.000 |
| `has_clflush_load` | 0.758 / 0.000 / 0.000 | 0.844 / 0.000 / 0.000 | 0.013 / 0.000 / 0.000 | 0.029 / 0.000 / 0.000 |
| `clflush_load_norm` | 0.092 / 0.000 / 0.000 | 0.108 / 0.000 / 0.000 | 0.001 / 0.000 / 0.000 | 0.005 / 0.000 / 0.000 |
| `has_page_probe_load` | 0.000 / 0.000 / 0.000 | 0.031 / 0.000 / 0.000 | 0.098 / 0.000 / 0.000 | 0.029 / 0.000 / 0.000 |
| `page_probe_density` | 0.000 / 0.000 / 0.000 | 0.001 / 0.000 / 0.000 | 0.008 / 0.000 / 0.000 | 0.001 / 0.000 / 0.000 |
| `has_indexed_load` | 0.000 / 0.000 / 0.000 | 0.000 / 0.000 / 0.000 | 0.000 / 0.000 / 0.000 | 0.000 / 0.000 / 0.000 |
| `indexed_load_norm` | 0.000 / 0.000 / 0.000 | 0.000 / 0.000 / 0.000 | 0.000 / 0.000 / 0.000 | 0.000 / 0.000 / 0.000 |
| `calls_attack_fn` | 0.000 / 0.000 / 0.000 | 0.000 / 0.000 / 0.000 | 0.000 / 0.000 / 0.000 | 0.000 / 0.000 / 0.000 |
| `frac_call` | 0.007 / 0.000 / 0.000 | 0.007 / 0.000 / 0.000 | 0.002 / 0.000 / 0.000 | 0.000 / 0.000 / 0.000 |
| `frac_callq` | 0.029 / 0.000 / 0.000 | 0.025 / 0.000 / 0.000 | 0.008 / 0.000 / 0.000 | 0.040 / 0.000 / 0.000 |
| `frac_ret` | 0.007 / 0.000 / 0.000 | 0.008 / 0.000 / 0.000 | 0.034 / 0.000 / 0.000 | 0.010 / 0.000 / 0.000 |
| `frac_retq` | 0.061 / 0.000 / 0.000 | 0.051 / 0.000 / 0.000 | 0.033 / 0.000 / 0.000 | 0.078 / 0.000 / 0.000 |
| `frac_movq` | 0.178 / 0.000 / 0.005 | 0.165 / 0.003 / 0.004 | 0.084 / 0.005 / 0.006 | 0.249 / 0.005 / 0.010 |
| `frac_nop` | 0.061 / 0.000 / 0.000 | 0.046 / 0.000 / 0.000 | 0.028 / 0.000 / 0.000 | 0.139 / 0.000 / 0.000 |
| `g_verw_frac` | 0.019 / 0.000 / 0.000 | 0.000 / 0.000 / 0.000 | 0.000 / 0.000 / 0.000 | 0.000 / 0.000 / 0.000 |
| `g_movntdqa_frac` | 0.002 / 0.000 / 0.000 | 0.000 / 0.000 / 0.000 | 0.000 / 0.000 / 0.000 | 0.000 / 0.000 / 0.000 |
| `nodemean_op_CACHE` | 0.035 / 0.000 / 0.000 | 0.044 / 0.000 / 0.000 | 0.004 / 0.000 / 0.000 | 0.002 / 0.000 / 0.000 |
| `nodemean_op_TIMING` | 0.017 / 0.000 / 0.000 | 0.041 / 0.000 / 0.000 | 0.000 / 0.000 / 0.000 | 0.047 / 0.000 / 0.000 |
| `nodemean_op_FENCE` | 0.087 / 0.000 / 0.000 | 0.068 / 0.000 / 0.000 | 0.018 / 0.000 / 0.000 | 0.058 / 0.000 / 0.000 |
| `nodemean_flag_is_cache_probe` | 0.035 / 0.000 / 0.000 | 0.044 / 0.000 / 0.000 | 0.004 / 0.000 / 0.000 | 0.002 / 0.000 / 0.000 |
| `nodemean_flag_is_timing_source` | 0.017 / 0.000 / 0.000 | 0.041 / 0.000 / 0.000 | 0.000 / 0.000 / 0.000 | 0.047 / 0.000 / 0.000 |
| `nodemean_flag_is_lfence` | 0.029 / 0.000 / 0.000 | 0.040 / 0.000 / 0.000 | 0.014 / 0.000 / 0.000 | 0.054 / 0.000 / 0.000 |
| `nodemean_flag_is_verw` | 0.019 / 0.000 / 0.000 | 0.000 / 0.000 / 0.000 | 0.000 / 0.000 / 0.000 | 0.000 / 0.000 / 0.000 |
| `nodemean_flag_is_transmitter` | 0.034 / 0.000 / 0.022 | 0.041 / 0.017 / 0.025 | 0.091 / 0.017 / 0.016 | 0.007 / 0.019 / 0.031 |
| `nodemean_flag_is_secret_source` | 0.053 / 0.000 / 0.022 | 0.058 / 0.017 / 0.025 | 0.087 / 0.017 / 0.016 | 0.007 / 0.019 / 0.031 |
| `nodemean_mem_INDEXED` | 0.035 / 0.301 / 0.336 | 0.045 / 0.329 / 0.331 | 0.061 / 0.307 / 0.316 | 0.008 / 0.286 / 0.349 |
| `nodemean_mem_STACK` | 0.086 / 0.000 / 0.000 | 0.105 / 0.000 / 0.000 | 0.055 / 0.000 / 0.000 | 0.184 / 0.000 / 0.000 |

### How much synthetic class signal lives in dead features (model-based)

RandomForest (300 trees) on the per-graph input summary, 4 classes, chance 0.25. syn CV = 5-fold stratified on synthetic; syn->real = train on all synthetic x86 of these 4 classes, test on real.

| feature set | dims | synthetic CV bal.acc | syn->real (725) bal.acc | syn->shared (224) bal.acc | syn->real predicted counts MDS/L1TF/V1/V4 |
|---|---|---|---|---|---|
| all inputs | 115 | 0.961 | 0.250 | 0.250 | 0/0/725/0 |
| live-on-real only | 30 | 0.938 | 0.430 | 0.319 | 218/314/193/0 |
| dead-on-real only | 85 | 0.915 | 0.250 | 0.250 | 0/0/725/0 |
| handcrafted58 all | 58 | 0.947 | 0.250 | 0.250 | 0/0/725/0 |
| handcrafted58 live | 5 | 0.838 | 0.231 | 0.244 | 35/5/683/2 |

RF Gini importance mass on dead-on-real features: **55.4%**; permutation-importance mass (in-sample): **57.9%**.
Top-15 Gini features: `edgefrac_SPEC_CONDITIONAL` 0.046, `has_clflush` 0.043 (DEAD), `nodemean_op_COMPARE` 0.043, `edgefrac_CACHE_TEMPORAL` 0.037 (DEAD), `frac_clflush` 0.035 (DEAD), `clflush_load_norm` 0.034 (DEAD), `nodemean_op_BRANCH_COND` 0.034, `nodemean_op_CACHE` 0.032 (DEAD), `nodemean_flag_is_transmitter` 0.031, `nodemean_flag_is_cache_probe` 0.030 (DEAD), `frac_mfence` 0.028 (DEAD), `nodemean_mem_HEAP` 0.026, `nodemean_flag_is_secret_source` 0.024, `nodemean_op_SHIFT` 0.024, `frac_rdtsc` 0.024 (DEAD)

## 3. Shared corpus: MDS vs L1TF (one Revizor menu+shape)

n = 130 (MDS 66, L1TF 64), 20 seed groups (class+seed, `eval/shared_config.seed_group`).

Per-feature Cohen's d (MDS - L1TF) with 95% seed-group cluster-bootstrap CIs (2000 reps). 87/115 features are constant on the shared MDS+L1TF rows; 1 have a CI excluding 0.

| feature | d | 95% CI | mean MDS | mean L1TF |
|---|---|---|---|---|
| `nodemean_op_SHIFT` | -0.39 | [-0.67, -0.09] | 0.0023 | 0.0055 |
| `nodemean_op_BRANCH_UNCOND` | +0.31 | [-0.03, +0.64] | 0.0142 | 0.0105 |
| `nodemean_flag_is_branch` | +0.31 | [-0.03, +0.64] | 0.0142 | 0.0105 |
| `nodemean_op_ARITHMETIC` | +0.23 | [-0.06, +0.54] | 0.2378 | 0.2224 |
| `nodemean_op_MOVE` | -0.20 | [-0.60, +0.17] | 0.1205 | 0.1294 |
| `frac_x86_only` | +0.19 | [-0.08, +0.46] | 0.3859 | 0.3753 |
| `nodemean_pos_enc` | +0.18 | [-0.19, +0.55] | 0.5000 | 0.5000 |
| `nodemean_op_LOAD` | -0.16 | [-0.55, +0.17] | 0.0215 | 0.0253 |
| `nodemean_flag_is_secret_source` | -0.16 | [-0.55, +0.17] | 0.0215 | 0.0253 |
| `nodemean_flag_is_transmitter` | -0.16 | [-0.55, +0.17] | 0.0215 | 0.0253 |
| `n_nodes` | -0.16 | [-0.57, +0.24] | 42.1061 | 42.7812 |
| `nodemean_num_src_regs` | +0.14 | [-0.24, +0.54] | 0.2781 | 0.2758 |
| `frac_movq` | +0.13 | [-0.09, +0.34] | 0.0052 | 0.0038 |
| `nodemean_mem_INDEXED` | +0.13 | [-0.31, +0.58] | 0.3362 | 0.3311 |
| `nodemean_op_OTHER` | -0.11 | [-0.46, +0.21] | 0.0992 | 0.1045 |
| `nodemean_mem_HEAP` | -0.11 | [-0.44, +0.24] | 0.0090 | 0.0107 |
| `nodemean_flag_is_memory_access` | -0.10 | [-0.42, +0.19] | 0.0299 | 0.0327 |
| `nodemean_mem_NONE` | -0.08 | [-0.50, +0.31] | 0.6548 | 0.6582 |
| `frac_branch` | +0.08 | [-0.30, +0.47] | 0.0550 | 0.0526 |
| `nodemean_op_STORE` | +0.07 | [-0.16, +0.31] | 0.0084 | 0.0074 |

GroupKFold(5) by seed group, balanced accuracy (chance 0.50), 95% group-bootstrap CI, p = group-level label-permutation test (200 perms). Non-constant handcrafted dims on these rows: 5/58.

| features | model | bal.acc | 95% CI | perm p | null p95 |
|---|---|---|---|---|---|
| handcrafted58 | LR | 0.439 | [0.352, 0.528] | 0.865 | 0.585 |
| handcrafted58 | RF | 0.399 | [0.299, 0.502] | 0.750 | 0.546 |
| handcrafted58+global5 | LR | 0.439 | [0.352, 0.531] | 0.830 | 0.584 |
| handcrafted58+global5 | RF | 0.407 | [0.318, 0.495] | 0.800 | 0.552 |
| all per-graph inputs (hc+gl+nodemean+edgefrac+n_nodes) | LR | 0.462 | [0.374, 0.550] | 0.710 | 0.585 |
| all per-graph inputs (hc+gl+nodemean+edgefrac+n_nodes) | RF | 0.277 | [0.181, 0.379] | 0.990 | 0.539 |

Robustness: grouping by seed number alone (MDS and L1TF from the same generator seed never split) -> LR handcrafted58 bal.acc 0.400.

Synthetic-trained RF (MDS vs L1TF only, handcrafted58) applied to shared: bal.acc 0.500; confusion rows MDS/L1TF -> pred MDS/L1TF [[0, 66], [0, 64]].
Synthetic-trained RF (MDS vs L1TF only, all per-graph inputs) applied to shared: bal.acc 0.507; confusion rows MDS/L1TF -> pred MDS/L1TF [[4, 62], [3, 61]].

## 4. Out-of-distribution check

Ranges = synthetic x86 min..max over the 4 classes. 'own class' = the real gadget's own label. Nearest = z-scored (synthetic mean/std) Euclidean distance, centroid and 1-NN, over all per-graph inputs.

| set | class | n | outside own-class range (any dim) | mean #dims outside own-class | outside 4-class union (any dim) | mean #dims outside union | nearest centroid MDS/L1TF/V1/V4 | 1-NN MDS/L1TF/V1/V4 | median 1-NN dist (syn->syn LOO median) |
|---|---|---|---|---|---|---|---|---|---|
| real | MDS | 160 | 1.00 | 7.8 | 1.00 | 3.7 | 0/0/160/0 | 0/0/160/0 | 11.0 (1.9) |
| real | L1TF | 229 | 1.00 | 7.7 | 1.00 | 3.4 | 0/0/229/0 | 0/0/229/0 | 9.2 (1.9) |
| real | SPECTRE_V1 | 220 | 1.00 | 4.6 | 0.97 | 2.0 | 0/0/220/0 | 0/0/220/0 | 8.6 (1.9) |
| real | SPECTRE_V4 | 116 | 1.00 | 11.9 | 1.00 | 4.0 | 0/0/116/0 | 0/0/116/0 | 8.9 (1.9) |
| shared | MDS | 66 | 1.00 | 7.6 | 1.00 | 3.8 | 0/0/66/0 | 0/0/66/0 | 9.1 (1.9) |
| shared | L1TF | 64 | 1.00 | 8.1 | 1.00 | 3.9 | 0/0/64/0 | 0/0/64/0 | 9.0 (1.9) |
| shared | SPECTRE_V1 | 87 | 1.00 | 5.2 | 1.00 | 2.4 | 0/0/87/0 | 0/0/87/0 | 8.7 (1.9) |
| shared | SPECTRE_V4 | 7 | 1.00 | 11.3 | 1.00 | 3.9 | 0/0/7/0 | 0/0/7/0 | 9.4 (1.9) |

Dims most often outside the own-class synthetic range:

- real|MDS: `frac_movq` 1.00, `nodemean_op_LOGIC` 1.00, `nodemean_mem_INDEXED` 1.00, `nodemean_num_src_regs` 1.00, `nodemean_flag_is_branch` 1.00, `nodemean_flag_is_memory_access` 1.00, `nodemean_num_dest_regs` 0.89, `frac_branch` 0.47
- real|L1TF: `ret_call_ratio` 1.00, `g_ret_frac` 1.00, `nodemean_op_RET` 1.00, `nodemean_op_LOGIC` 1.00, `nodemean_num_src_regs` 0.96, `edgefrac_DATA_DEP` 0.91, `nodemean_flag_is_branch` 0.74, `nodemean_op_OTHER` 0.24
- real|SPECTRE_V1: `nodemean_op_LOAD` 0.99, `nodemean_flag_is_memory_access` 0.95, `nodemean_op_LOGIC` 0.93, `nodemean_num_src_regs` 0.80, `nodemean_mem_INDEXED` 0.58, `edgefrac_DATA_DEP` 0.18, `nodemean_op_ARITHMETIC` 0.06, `nodemean_flag_is_branch` 0.06
- real|SPECTRE_V4: `frac_movq` 1.00, `nodemean_op_STORE` 1.00, `nodemean_op_LOGIC` 1.00, `nodemean_mem_HEAP` 1.00, `nodemean_num_src_regs` 1.00, `nodemean_flag_is_branch` 1.00, `nodemean_flag_is_memory_access` 1.00, `edgefrac_DATA_DEP` 1.00
- shared|MDS: `nodemean_op_LOGIC` 1.00, `nodemean_mem_INDEXED` 1.00, `nodemean_num_src_regs` 1.00, `nodemean_flag_is_branch` 1.00, `frac_movq` 0.97, `nodemean_num_dest_regs` 0.89, `nodemean_flag_is_memory_access` 0.64, `nodemean_op_ARITHMETIC` 0.44
- shared|L1TF: `ret_call_ratio` 1.00, `g_ret_frac` 1.00, `nodemean_op_RET` 1.00, `nodemean_op_LOGIC` 1.00, `nodemean_num_src_regs` 1.00, `nodemean_flag_is_branch` 1.00, `edgefrac_DATA_DEP` 1.00, `frac_branch` 0.33
- shared|SPECTRE_V1: `nodemean_op_LOAD` 1.00, `nodemean_flag_is_memory_access` 1.00, `nodemean_op_LOGIC` 0.98, `nodemean_num_src_regs` 0.92, `nodemean_mem_INDEXED` 0.67, `edgefrac_DATA_DEP` 0.39, `nodemean_flag_is_branch` 0.15, `nodemean_num_dest_regs` 0.05
- shared|SPECTRE_V4: `frac_movq` 1.00, `nodemean_op_STORE` 1.00, `nodemean_op_LOGIC` 1.00, `nodemean_mem_HEAP` 1.00, `nodemean_mem_INDEXED` 1.00, `nodemean_num_dest_regs` 1.00, `nodemean_num_src_regs` 1.00, `nodemean_flag_is_branch` 1.00
