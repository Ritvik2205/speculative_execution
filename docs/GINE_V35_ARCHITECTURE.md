# GINE V35 Architecture

Best model checkpoint: `viz_v35_gine_balanced/gine_best.pt`
Test accuracy: **93.89%** (epoch 95/100, 1,824,666 parameters)
Dataset: `combined_v25_real_benign.jsonl` — 72,000 samples, 9 classes, 80/20 stratified split

## Overview

GINE (Graph Isomorphism Network with Edge features) operates on Program Dependency Graphs (PDGs) built from assembly instruction sequences. Each assembly window is converted into a directed multi-relational graph where nodes are instructions and edges encode semantic relationships between them. The model fuses a graph-structure branch (GINE message passing) with a handcrafted-feature branch (210-dim statistical features) through a balanced dual-path architecture, then classifies into one of 9 vulnerability classes.

There is **no attention mechanism** anywhere in the model. Message passing uses sum aggregation with learnable epsilon weighting — the GINE formulation — which is provably equivalent to the Weisfeiler-Leman graph isomorphism test in expressive power. Global information flow comes from a gated virtual node, not from attention.

## Input Representation

### Node Features (34 dimensions per node)

Each instruction in the assembly window becomes a node with a 34-dimensional feature vector:

| Dims   | Component              | Encoding       | Description                                                                 |
|--------|------------------------|----------------|-----------------------------------------------------------------------------|
| 0–18   | Opcode category        | One-hot (19)   | LOAD, STORE, BRANCH_COND, BRANCH_UNCOND, CALL, CALL_INDIRECT, RET, JUMP_INDIRECT, COMPARE, ARITHMETIC, LOGIC, SHIFT, FENCE, CACHE, TIMING, MOVE, STACK, NOP, OTHER |
| 19–23  | Memory access type     | One-hot (5)    | NONE, STACK, HEAP, INDEXED, INDIRECT                                        |
| 24–25  | Register counts        | Normalized (2) | `min(dest_regs, 3)/3.0`, `min(src_regs, 5)/5.0`                             |
| 26–33  | Speculative flags      | Binary (8)     | is_serializing, is_cache_probe, is_branch, is_indirect_branch, is_memory_access, is_timing_source, is_secret_source, is_transmitter |

Max nodes per graph: **64** (zero-padded with `node_mask`).

### Edge Types (8 types)

The PDG builder produces 8 semantically distinct edge types, each encoded as an integer index and embedded into the hidden dimension via `nn.Embedding(8, 256)`:

| Index | Type               | Description                                                                 | Weight  |
|-------|--------------------|-----------------------------------------------------------------------------|---------|
| 0     | DATA_DEP           | Register def-use chains (Read After Write). Tracks data flow through registers. | 1.0     |
| 1     | CONTROL_FLOW       | Sequential fallthrough between consecutive instructions. Ensures graph connectivity. | 1.0     |
| 2     | SPEC_CONDITIONAL   | Conditional branch to security-relevant targets within the speculative window (10 instructions). Weight = 2.0 for targets with cache probing/timing. | 1.0–2.0 |
| 3     | SPEC_INDIRECT      | Indirect branch/call to all potential targets in the speculative window. Critical for Spectre V2, BHI. | 1.5     |
| 4     | SPEC_RETURN        | Return instruction to security-relevant targets in the speculative window. Relevant for RETBLEED. | 1.5     |
| 5     | MEMORY_ORDER       | Store-to-load forwarding when both use the same base register. Captures memory ordering violations. | 1.0     |
| 6     | CACHE_TEMPORAL     | Cache operation (e.g., CLFLUSH) to subsequent memory access. Models flush-reload side channels. | 2.0     |
| 7     | FENCE_BOUNDARY     | Fence instruction (LFENCE/MFENCE) to next instruction. Models speculation termination. | 1.0     |

Max edges per graph: **512** (zero-padded with `edge_mask`). Edge weights are continuous scalars from the PDG builder that scale messages during aggregation. The `edge_mask` was a critical fix — without it, zero-padded edges (which default to type 0 = DATA_DEP) inflated data dependency statistics.

Speculative window: **10 instructions** — speculative edges connect a branch/return to the next 10 instructions if they are security-relevant (memory access, cache operation, timing instruction).

### Handcrafted Features (210 dimensions)

A separate statistical feature vector is extracted per sample (not per node). These 210 features span 13 categories including opcode n-grams, branch counts, data dependency depth, memory semantics, indirect branch patterns, and vulnerability-specific indicators. They are extracted by `scripts/extract_features_enhanced.py` and encoded via the feature branch.

## Model Architecture

### Stage 1: Encoders

**Node encoder**: `Linear(34, 256) → BatchNorm1d(256) → ReLU`
- Projects raw 34-dim node features into the 256-dim hidden space.

**Edge encoder**: `nn.Embedding(8, 256)`
- Maps each of the 8 edge type indices to a learned 256-dim embedding vector.
- Padded edges are zeroed out via `edge_mask` before they enter message passing.

### Stage 2: GINE Message Passing (4 layers)

Each of the 4 GINE layers performs:

```
message_{u→v} = ReLU(h_u + edge_embed_{u,v}) * edge_weight_{u,v}
agg_v          = SUM_{u ∈ N(v)} message_{u→v}
h_v_new        = MLP((1 + ε) * h_v + agg_v)
h_v            = LayerNorm(h_v + h_v_new)       # residual + norm
h_v            = VirtualNodeUpdate(h_v, vn)      # global context
```

**Per-layer components:**
- **Learnable ε** (`nn.Parameter`): Controls self-loop weight in aggregation. Initialized to 0.
- **MLP**: `Linear(256, 256) → BatchNorm1d → ReLU → Dropout(0.3) → Linear(256, 256)`
- **Post-MLP BatchNorm**: `BatchNorm1d(256)` applied after the MLP.
- **Residual connection**: `h = LayerNorm(h + h_new)` — pre-update `h` is added back and layer-normalized.
- **Node mask**: Padding nodes are zeroed after each layer.

The aggregation is **sum** (scatter-add), not mean or max. Sum aggregation is provably more expressive for graph isomorphism testing.

### Stage 3: Gated Virtual Node (4 update modules)

After each GINE layer, a virtual node aggregates and broadcasts global information:

1. **Aggregate**: Sum all real node features into a single vector: `node_sum = SUM(h * node_mask)`
2. **Update**: `vn_new = MLP(vn + node_sum) + vn` (residual)
   - MLP: `Linear(256, 256) → BatchNorm1d → ReLU → Dropout(0.3) → Linear(256, 256)` then `BatchNorm1d`
3. **Gated broadcast**: `h = h + σ(gate) * vn_new`
   - `gate` is a single learnable scalar parameter initialized to **-2.0** so `σ(-2) ≈ 0.12`
   - This means the model starts with only 12% global influence and learns to increase or decrease it
   - Each of the 4 layers has its own independent gate

The gated virtual node was added to prevent over-smoothing — earlier versions without the gate degraded accuracy by flooding all nodes with the same global representation.

### Stage 4: Jumping Knowledge (JK) Concatenation

All 5 representations (initial encoding + 4 layer outputs) are concatenated per node:

```
h_jk = [h_0 || h_1 || h_2 || h_3 || h_4]    # [batch, max_nodes, 256 * 5 = 1280]
```

This is the `jk_mode = "cat"` setting. JK concatenation preserves multi-scale information: early layers capture local patterns, later layers capture higher-order structural motifs.

### Stage 5: Graph Readout

**Sum pooling** over all valid (non-padding) nodes:

```
graph_repr = SUM(h_jk * node_mask)    # [batch, 1280]
```

Sum pooling was chosen over mean/max because it is provably the most expressive pooling for graph-level classification (per the GIN paper — Xu et al. 2019). It distinguishes multisets that mean/max pooling would conflate.

### Stage 6: Balanced Dual-Path Fusion

Both the graph branch and the handcrafted-feature branch are projected to the same 256-dimensional space so neither dominates the classifier:

**Graph projector**: `Linear(1280, 256) → BatchNorm1d → ReLU → Dropout(0.3)`

**Feature encoder**: `Linear(210, 256) → BatchNorm1d → ReLU → Dropout(0.3) → Linear(256, 256) → BatchNorm1d → ReLU → Dropout(0.3)`
- Two-layer MLP to expand (not compress) the 210-dim features. The handcrafted features are information-dense, so the deeper encoder extracts more abstract representations.

**Concatenation**: `combined = [graph_repr || feat_repr]` → [batch, 512]

### Stage 7: Classifier Head

```
Linear(512, 256) → BatchNorm1d → ReLU → Dropout(0.3) → Linear(256, 9)
```

Outputs 9 raw logits, one per vulnerability class.

### Auxiliary Heads (training only)

**Feature-only auxiliary head**: `Linear(256, 9)`
- Applied to the handcrafted-feature representation *before* fusion with the graph branch.
- Adds an auxiliary CE loss (weight 0.3) so the feature encoder learns discriminative representations independently.
- Not used during inference.

**Projection head** (for contrastive loss): `Linear(512, 256) → ReLU → Linear(256, 128)` then L2-normalized.
- Applied to the fused 512-dim representation.
- Produces 128-dim unit vectors for supervised contrastive learning.
- Not used during inference.

## Loss Function

The total training loss is a weighted sum of three terms:

```
L = L_CE + λ_con * L_SupCon + 0.3 * L_CE_aux
```

with gradient accumulation over 2 mini-batches before each optimizer step.

### 1. Cross-Entropy Loss (L_CE)

Standard cross-entropy with **inverse-frequency class weights**:

```
weight_c = total_train_samples / (num_classes * count_c)
```

Applied to the main classifier output (9 logits from the fused representation).

### 2. Supervised Contrastive Loss (L_SupCon)

Applied to the 128-dim L2-normalized projections. Temperature τ = 0.07.

For each sample *i* in the batch:
```
L_i = -1/|P(i)| * SUM_{p ∈ P(i)} [ sim(z_i, z_p)/τ - log(SUM_{a ≠ i} w_{ia} * exp(sim(z_i, z_a)/τ)) ]
```

where `P(i)` is the set of same-class samples (excluding self) and `sim` is dot product.

**Hard negative mining**: Known confused class pairs receive 2x weight in the contrastive denominator, making the model work harder to separate them:

| Confused Pair             | Rationale                                    |
|---------------------------|----------------------------------------------|
| L1TF ↔ SPECTRE_V1        | Both involve speculative loads past bounds checks |
| L1TF ↔ SPECTRE_V4        | Overlapping memory-order violations          |
| MDS ↔ SPECTRE_V4         | Similar store-to-load patterns               |
| SPECTRE_V1 ↔ SPECTRE_V4  | Both exploit speculative memory access       |
| SPECTRE_V2 ↔ BHI         | Both exploit indirect branch prediction      |
| SPECTRE_V2 ↔ INCEPTION   | Both exploit branch target injection         |
| RETBLEED ↔ INCEPTION     | Both exploit return prediction               |

**Warmup**: λ_con ramps linearly from 0 to 0.5 over the first 10 epochs. This prevents the contrastive loss from destabilizing early training before the encoder has learned meaningful representations.

### 3. Feature Auxiliary Cross-Entropy (L_CE_aux)

Same weighted cross-entropy as L_CE but applied to the feature-only auxiliary head output. Weight: 0.3. This regularizer ensures the handcrafted features contribute independently to classification rather than being dominated by the graph branch.

## Training Configuration

| Parameter            | Value                                      |
|----------------------|--------------------------------------------|
| Optimizer            | AdamW (lr=0.001, weight_decay=0.0001)      |
| LR scheduler         | CosineAnnealingLR (T_max=100)              |
| Batch size           | 32                                         |
| Gradient accumulation| 2 (effective batch size = 64)              |
| Gradient clipping    | Max norm = 1.0                             |
| Epochs               | 100 (early stopping patience = 20)         |
| Best epoch           | 95                                         |
| Dropout              | 0.3 (everywhere)                           |

## Per-Class Performance

| Class                       | Precision | Recall | F1-Score | Support |
|-----------------------------|-----------|--------|----------|---------|
| BENIGN                      | 1.000     | 0.999  | 1.000    | 1600    |
| BRANCH_HISTORY_INJECTION    | 0.839     | 0.920  | 0.878    | 1600    |
| INCEPTION                   | 0.945     | 0.916  | 0.930    | 1600    |
| L1TF                        | 0.879     | 0.902  | 0.890    | 1600    |
| MDS                         | 0.969     | 0.874  | 0.919    | 1600    |
| RETBLEED                    | 0.994     | 0.900  | 0.945    | 1600    |
| SPECTRE_V1                  | 0.852     | 0.938  | 0.893    | 1600    |
| SPECTRE_V2                  | 1.000     | 1.000  | 1.000    | 1600    |
| SPECTRE_V4                  | 1.000     | 1.000  | 1.000    | 1600    |
| **Macro average**           | **0.942** | **0.939** | **0.939** | 14400 |

SPECTRE_V2 and SPECTRE_V4 are classified perfectly. The hardest classes are BHI (F1=0.878), L1TF (0.890), and SPECTRE_V1 (0.893), consistent with the known confused pairs above.

## Key Design Decisions

1. **No attention**: The GINE formulation (sum aggregation + learnable ε + edge features in messages) is provably as expressive as the WL test. Attention would add parameters and risk over-smoothing without provable expressiveness gains for this graph size.

2. **No BiLSTM / no sequence modeling**: Earlier versions (v27–v31) used a BiLSTM after graph encoding. V34/V35 removed it entirely to force the model to learn from graph structure rather than instruction order. The sequential information is already captured by CONTROL_FLOW edges.

3. **Gated virtual node over global attention**: The virtual node provides O(1) global information flow. A learnable gate (initialized weak at 12%) prevents the virtual node from washing out local structural information, which was a problem in earlier ungated versions.

4. **Balanced 256-256 fusion**: Both the graph branch (1280 → 256) and feature branch (210 → 256) are projected to equal dimensionality. Earlier versions compressed features to 64 dims, which meant the graph branch dominated and features contributed little.

5. **Edge mask fix**: Zero-padded edges default to edge type 0 (DATA_DEP). Without an explicit `edge_mask`, these phantom edges inflated data dependency statistics and leaked padding information into the model. The mask zeros out both edge embeddings and messages for non-real edges.

## File References

| File | Description |
|------|-------------|
| `scripts/gine_classifier.py` | Model architecture (GINEClassifier, GINELayer, VirtualNodeUpdate, SupervisedContrastiveLoss) |
| `scripts/pdg_builder.py` | PDG construction from assembly sequences (8 edge types, 34-dim node features) |
| `scripts/train_gine_v34.py` | Training script (dataset, training loop, evaluation, visualization) |
| `viz_v35_gine_balanced/gine_best.pt` | Best model checkpoint (epoch 95) |
| `viz_v35_gine_balanced/gine_metrics.json` | Test metrics and training args |
| `scripts/extract_features_enhanced.py` | 210-dim handcrafted feature extraction |
