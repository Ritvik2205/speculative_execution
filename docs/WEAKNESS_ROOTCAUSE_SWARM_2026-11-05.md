# Paper weaknesses — root-cause map (6-agent swarm, 2026-11-05)

Six read-only haiku agents, one weakness each, structural analysis + recorded
model outputs (no GINE inference — torch_geometric absent locally). They
converge on a single root cause. Numbers are the agents', from the committed
jsonl / eval artifacts.

## THE unifying root cause: the label is the trigger-opcode / config-menu, not the structure

The synthetic class label is **gated on trigger opcodes at dataset-build time**
(`v54/build_dataset.py:238-262`): MDS requires verw|movntdqa|clflush, L1TF
clflush|rdtsc, V4 lfence|rdtsc, etc. So synthetic positives **carry their
trigger by construction** (gate satisfied by 161/161 MDS, 160/160 L1TF, 136/140
V4). The model can learn "class = has trigger opcode" and hit 95%+ in-dist.

Real Revizor gadgets contain **zero** of those triggers — verw, movntdqa,
clflush, shl-page-probe, rdtsc, lfence are **0 across all 725 real attack
gadgets** (pure integer-GPR contract-fuzz programs). So a synthetic-trained,
trigger-keyed model has **no signal on real data** and collapses to the nearest
synthetic neighbour. That neighbour is V1: real gadgets are 33-43% and-ops and
synthetic **V1 is the and-richest synthetic class (3.9%)**, so every real class
lands nearest synthetic-V1 → the "everything → V1" attractor (MDS 73.9%, L1TF
56.2%, V4 72.7%, V1 68.5% → V1, `w3_embed_on`). `allhw` (real data in training)
recovers V1 to 97.8% — so it is a **coverage/distribution gap, not model
capacity**. The transfer failure, the opcode-bar tie, and the opcode shortcut
are three views of this one fact.

## Per-weakness findings

### Synth→real transfer (H1, H2) — distribution gap, confirmed
- Real vs synthetic V1 are near-disjoint: real = andq 28.8% + lock + `.bb_`/
  `.macro.measurement_end` markers, mask-chain + `(%r14,…)` sandbox in 100% of
  real / 0% of synthetic; synthetic = textbook Kocher (cmp/jae/array1/array2/
  shl $9).
- The mask+r14 scaffold is **class-uniform** (100% every real class) so carries
  no class signal; markers ruled out (real V4 has 0 markers, still 73%→V1);
  length secondary (real V4 78 instr, still →V1). The **and-density magnitude**
  is what points everything at V1.

### Class/config confound (H3) — confirmed, and it is config-menu-driven
- V1 is the **only** class with conditional branches (jcc 206/220, 0 in the
  other 509). MDS is a **restricted menu** (absence of {add,mov,lea,…16} ⇒ MDS,
  160/160, 0 FP). Vocabularies **nested**: MDS(29) ⊂ L1TF(69) ⊂ V1(88), V4(47)
  ⊂ L1TF. Class ID ≈ which instructions the campaign config allowed.
- **Opcode bar is config-driven and shared-config BREAKS it**: per-class real
  configs → opcode LR 0.97; **shared-config corpus → 0.41**
  (`eval/shared_config_report.md`; shared-config data exists at
  `eval/data/revizor_*_shared.jsonl`, 224 records — so the confound-breaker was
  run, correcting the earlier "not run" note). Under shared config no single
  opcode exceeds F1 0.49.
- **Where structure actually matters: L1TF vs V4.** No exclusive opcodes;
  opcode-only decision list = 0.84 overall but **L1TF recall 0.56** (85/229
  L1TF→V4). This is the one pair where GINE graph/dataflow could earn value over
  a bag of opcodes.

### Mitigation awareness / interior-fence rule (H6) — a BENIGN construction confound
- Real BENIGN = `synth_mitigated_twin` records, **all contain lfence**; real
  attacks have **0 lfence**. "lfence present ⇒ BENIGN" scores **F1 0.99** on
  real. So the interior-fence rule (0.991) beats every learned model **by
  construction** — the benign class is literally "the attack + an lfence." This
  reframes the mechanism-vs-shape result: the fence rule wins because benign was
  built by adding a fence, not because the model lacks structure.
  *(This touches the parallel session's mechanism-vs-shape area — flagged to
  them, not edited here.)*

### Learned-vs-hand V2 regression (H4) — real, but not the stated cause
- V2 regression is real: **both−hand −12.8pp** (10-seed, survives Bonferroni,
  CI [−23.9,−1.7]); **learned-only −17.4pp** (5-seed). The paper/memory
  **−9.55pp (p=0.029) could NOT be verified** (`eval/v56_multiseed/results.tsv`
  malformed) → sec:learned should cite −12.8pp or −17.4pp from a real source.
- Hypothesis (sparse indirect signal) **refuted**: V2 is **100% indirect**
  (~1.2/gadget), dense; hand indirect features (`frac_indirect`, `has_indirect`)
  **stay in the fusion comparison**, so the drop isn't from losing them. The
  indirect cue is **shared** (BHI 100%, INCEPTION 66%); density only modestly
  splits (V2 0.052 / BHI 0.074 / INCEPTION 0.092). Better hypothesis: learned
  features **blur the V2↔BHI/INCEPTION boundary**. Confirm via the confusion
  partner (only a PNG exists).

### Cross-ISA riscv transfer (H5) — length + coverage, not riscv-vs-own-size
- The "held-out riscv bigger than its own training" premise is **false**
  (holdout median 39 vs riscv-train 36). The gap is vs x86/arm64 **windows**
  (39 vs 28; p90 63 vs 33).
- **Length is a strong error correlate** (zero-shot run): acc by bucket 0.70
  (≤20) → 0.09 (41-60) → 0.00 (>120); Spearman −0.55; survives within-class
  (L1TF short 0.72 vs long 0.02). **Class coverage rivals it**: SPECTRE_V2 has
  2 riscv train records (median 230 instr) vs 12 held-out; BENIGN absent from
  the holdout entirely (benign-FP unmeasurable there). Can't separate length
  from ISA — no arm64 matched-length control; locked-model per-gadget preds not
  saved.

## Paper-accuracy flags (for coordination, not edited here)
1. **sec:learned −9.55pp V2 is unverifiable** → cite −12.8pp (both−hand, 10-seed
   Bonferroni) or −17.4pp (learned-only, 5-seed).
2. **interior-fence-rule-beats-models is a benign-construction confound** (benign
   = attack + lfence) — the mechanism-vs-shape section (parallel session) should
   frame it as such, not as "the model has no structure."
3. **shared-config confound-breaker exists** (`eval/shared_config_report.md`,
   opcode bar 0.97→0.41) — the gaps-doc "shared-config not run" line is stale;
   the class/config confound IS broken by it.

## What would actually move the numbers
- **Transfer**: not fixable model-side. Either put real data in training (allhw
  → 97.8%) or remove the synthetic trigger-opcode label gate so synthetic stops
  encoding "class = trigger". Deeper: synthetic and real must share an
  instruction distribution (shared-config direction).
- **Benign confound**: benign must differ from attacks by more than a fence,
  else any model/rule wins trivially by fence-detection.
- **Structure claim**: evaluate GINE specifically on **L1TF-vs-V4** (the one
  opcode-inseparable pair) — that is where a graph model can beat the bag.
- **V2**: separate the three indirect classes (V2/BHI/INCEPTION), don't add
  indirect features.
- **riscv**: log locked-model per-gadget preds + an arm64 matched-length control
  to split length from ISA; fix the V2/benign train-coverage holes.

## Method caveats (all agents)
Mnemonic-level only (no operand/dataflow/ordering); no GINE inference (pyg
absent) so "nearest to V1" is inferred from opcode frequencies not model
activations; trigger-opcode lists are the agents' own, not a verified copy of
the paper's masked set; the paper's nop-ablation (97.8→0 etc.) was NOT
reproduced. Real corpus is single-campaign per class; held-out n (33/64/54/22)
differs from the full-file n (160/229/220/116).
