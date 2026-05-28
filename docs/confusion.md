
⏺ Now I have a clear picture. Let me synthesize the findings.

  Here's the pair-by-pair breakdown of where similarity lies and what's actionable in v35:

  ---
  Confused Pair Analysis

  Pair 1: RETBLEED vs INCEPTION (hardest — 0 features with d>1.2)

  Where they're similar: Literally everywhere. The diagnosis found:
  - Only 6 features with d>0.8 (out of 193)
  - Best discriminator: ret_count (d=0.94) — RETBLEED has ~2.7 rets vs INCEPTION's ~1.6
  - Second best: retbleed_vs_inception_score (d=0.89) — an engineered feature already trying to separate them
  - Key opcode differences: RETBLEED has more ret/retq/pushq/popq/leave (deeper call/ret chains), INCEPTION has more cmpl/jmpq/blr/ldr
  (indirect branch patterns)

  What differs (the 2-5 instruction "core"): RETBLEED exploits RSB underflow via deep call/ret nesting (callq→...→retq→popq→retq chains),
  while INCEPTION uses indirect branch + phantom speculation (blr/jmpq * to trained targets). The discriminative n-grams confirm this:
  - RETBLEED: retq→popq (d=0.85), retq→popq→retq (d=0.74), leave→retq (d=0.68)
  - INCEPTION: lbb0_2:→callq (d=0.63), _rchain: label (d=0.63), cmpl (d=0.67)

  But the boilerplate tail drowns this signal. Both share identical _barrier:→dsb→ret→_rd:→mrs→... epilogues that constitute 50-70% of the
   graph.

  Pair 2: L1TF vs SPECTRE_V1 (moderate — 11 features with d>1.2)

  Where they're similar: Both are "conditional branch → memory access → indexed load (leak)" patterns. Shared boilerplate is high.

  What actually differs:
  - L1TF has cache flush ops: cache_flush_count (d=1.26), has_l1_cache_interaction (d=1.26), l1tf_cache_timing_pattern (d=0.90)
  - SPECTRE_V1 has conditional branches: has_conditional_branch (d=1.42), cfg_has_branch (d=1.41)
  - L1TF uses timing instructions: has_timing_instruction (d=1.12) — mrs/rdtsc for timing reads
  - Discriminative opcodes: L1TF has _barrier: (1.3% vs 0%), _rd: (0.9% vs 0%), mrs (1.5% vs 0%); V1 has cmpl (0% vs 1.6%), movl/movzbl
  (more x86 comparison patterns)

  Pair 3: BHI vs SPECTRE_V2 (moderate — 14 features with d>1.2)

  Where they're similar: Both poison branch target buffers via indirect branches.

  What differs: BHI samples are longer (24 vs 18 instructions), more x86-heavy (129 vs 79 x86). The key discriminators are:
  - BHI has cache ops: cache_flush_count (d=1.63), has_cache_instruction (d=1.63)
  - BHI has conditional branches: cfg_has_branch (d=1.33)
  - V2 has more boilerplate: _barrier: (2.7% vs 0.6%), dsb (3.7% vs 0.7%), _main_func: (3.2% vs 0.4%)
  - Architecture skew: V2 has 60% ARM64 vs BHI's 34%

  Pair 4: MDS vs SPECTRE_V4 (easiest — 108 features with d>0.8)

  Where they're similar: Both involve store→load memory ordering.

  What differs massively: V4 is 100% x86, MDS is mixed. V4 has heavy boilerplate: _rd: (d=3.82!), _barrier:→dsb (d=3.24), ldr→str→ldp
  (d=3.43). These aren't attack features — they're measurement infrastructure features. The model is "cheating" by detecting V4 via its
  unique boilerplate signature, not its actual vulnerability pattern.

  ---
  What Can We Change in v35

  Given the diagnosis, there are two changes to the data pipeline and one to the model that are grounded in the evidence:

  1. Strip Boilerplate Before Graph Construction (highest impact)

  The smoking gun across all pairs: the most discriminative "features" are boilerplate labels (_barrier:, _rd:, _main_func:) and
  measurement instructions (dsb, mrs, rdtsc). The model is separating classes based on which measurement harness was used, not the attack
  itself.

  Specifically strip: Everything from the first occurrence of _barrier:, _rd:, __mm_mfence:, __mm_lfence:, __mm_clflush: to end of
  sequence. Also the stack epilogue (add sp, sp, ... → ret at the very end).

  This directly removes the source of false similarity for RETBLEED/INCEPTION and false distinctiveness for MDS/V4.

  2. Add Positional Weighting to Node Features (model change)

  The diagnosis shows the attack-discriminating instructions are at the top of the sequence (first 2-5 instructions), while the
  boilerplate is at the tail. Even after stripping, different sequences will share common setup patterns.

  In the current PDG builder, node features are 34-dim but have no positional information. Adding a relative position encoding
  (instruction index / total length) as an additional node feature would let the GINE layers weight early instructions more heavily. This
  is a 1-dim addition to node_feat_dim (34→35).

  3. Edge Type Attention Weighting (model change, lightweight)

  The diagnosis shows CONTROL_FLOW and DATA_DEP edges are ~80% of all edges and are identical across classes. The discriminative edges are
   SPEC_CONDITIONAL, SPEC_INDIRECT, SPEC_RETURN — which are 2-4% of edges.

  Rather than the failed GATv2 approach (which broke WL-equivalence), add a learnable per-edge-type scaling vector — 8 learnable weights,
  one per edge type, applied after edge encoding but before message passing. This preserves sum aggregation (WL-equivalence) while letting
   the model upweight rare but discriminative edge types.

  # In GINEClassifier.__init__:
  self.edge_type_weight = nn.Parameter(torch.ones(num_edge_types))

  # In encode_graph, after edge encoding:
  edge_type_scale = self.edge_type_weight[edge_type]  # [B, E]
  edge_attr = edge_attr * edge_type_scale.unsqueeze(-1)  # scale edge embeddings

  This is 8 learnable parameters — minimal risk, and the model can learn to amplify SPEC_* edges (types 2-4) that differentiate the
  confused pairs.

  ---
  Want me to implement these changes? I'd recommend starting with the boilerplate stripping since it's the highest-impact intervention and
   addresses the root cause identified across all four confused pairs.