# GINE Experiments: V35 Baseline and All Subsequent Versions

## Table of Contents

1. [Overview](#overview)
2. [Dataset](#dataset)
3. [V35 — Baseline](#v35--baseline)
4. [V35b — Static Edge-Type Reweighting](#v35b--static-edge-type-reweighting)
5. [V35c — GATv2 Attention Message Passing](#v35c--gatv2-attention-message-passing)
6. [V35d — Attention Readout](#v35d--attention-readout)
7. [V37 — Hierarchical Coarse-to-Fine Classification](#v37--hierarchical-coarse-to-fine-classification)
8. [V38 — Boilerplate Stripping + Learnable Edge Scaling + Positional Encoding](#v38--boilerplate-stripping--learnable-edge-scaling--positional-encoding)
9. [V39a — Multi-Label with Aleatoric Uncertainty](#v39a--multi-label-with-aleatoric-uncertainty)
10. [V39b — Deduplicated Dataset](#v39b--deduplicated-dataset)
11. [Results Comparison](#results-comparison)
12. [Key Findings](#key-findings)

---

## Overview

All experiments are built on the GINE (Graph Isomorphism Network with Edge features) architecture for classifying speculative execution vulnerabilities from assembly-level Program Dependency Graphs (PDGs). The v35 baseline achieves **93.89% accuracy** on 9-class classification. Each subsequent version modifies one or more aspects (graph pooling, edge weighting, loss function, data pipeline, classification hierarchy) while keeping other components fixed, enabling controlled comparison.

All versions share the same training data, train/test split (80/20 stratified, random_state=42), and core hyperparameters unless noted otherwise.

---

## Dataset

**File**: `data/combined_v25_real_benign.jsonl`
**Samples**: 72,000 (8,000 per class)
**Classes**: 9 — BENIGN, SPECTRE_V1, SPECTRE_V2, SPECTRE_V4, L1TF, MDS, BHI, RETBLEED, INCEPTION
**Split**: 57,600 train / 14,400 test (stratified)
**Features per sample**: Raw instruction sequence + 210 handcrafted statistical features

**Known data properties**:
- 2,605 exact cross-class duplicates (3.6%) — identical sequences with different labels
- 4,638 opcode-only duplicates (6.4%)
- SPECTRE_V4 is 100% x86_64 architecture
- Confused pairs share >95% structural similarity: L1TF↔V1, BHI↔V2, RETBLEED↔INCEPTION, MDS↔V4

---

## V35 — Baseline

**Accuracy**: 93.89% | **Parameters**: 1,824,666 | **Best epoch**: 95/100
**Files**: `scripts/gine_classifier.py`, `viz_v35_gine_balanced/`

### Architecture Diagram

```
INPUT STAGE
===========

  Instruction Sequence (variable length, max 64)
  ┌──────────────────────────────────────────┐
  │ "ldr w13, [sp, #8]"                     │──┐
  │ "cmp w13, #0"                           │  │
  │ "b.le .LBB0_3"                          │  │ PDGBuilder
  │ "ldr x8, [x9, x13, lsl #3]"            │  │ (8 edge types,
  │ ...                                     │  │  34-dim node features)
  └──────────────────────────────────────────┘  │
                                                ▼
  ┌────────────────────────────────────────────────────────────────┐
  │ PDG: Directed Multi-Relational Graph                          │
  │                                                                │
  │ Nodes: instructions (max 64, zero-padded with node_mask)      │
  │ Node features: 34-dim per node                                │
  │   [0-18]  opcode category one-hot (19 categories)             │
  │   [19-23] memory access type one-hot (5 types)                │
  │   [24-25] normalized register counts (dest/src)               │
  │   [26-33] speculative flags (8 binary)                        │
  │                                                                │
  │ Edges: max 512, zero-padded with edge_mask                    │
  │   8 types: DATA_DEP, CONTROL_FLOW, SPEC_CONDITIONAL,         │
  │            SPEC_INDIRECT, SPEC_RETURN, MEMORY_ORDER,          │
  │            CACHE_TEMPORAL, FENCE_BOUNDARY                      │
  │   Continuous weights from PDGBuilder (vuln-aware scaling)      │
  │                                                                │
  │ Handcrafted features: 210-dim statistical vector              │
  │   (opcode n-grams, branch counts, dependency depth,           │
  │    memory semantics, indirect branch patterns, etc.)           │
  └────────────────────────────────────────────────────────────────┘
                    │                              │
                    ▼                              ▼
           GRAPH BRANCH                    FEATURE BRANCH


GRAPH BRANCH
============

  Node Features [B, 64, 34]
         │
         ▼
  ┌─────────────────────────────────┐
  │ Node Encoder                    │
  │ Linear(34 → 256) → BN → ReLU   │
  └─────────────────────────────────┘
         │
         ▼
  h₀ [B, 64, 256]   ←─── saved for JK
         │
         │   Edge Types [B, 512]
         │        │
         │        ▼
         │   ┌─────────────────────────┐
         │   │ Edge Encoder             │
         │   │ Embedding(8, 256)        │
         │   │ * edge_mask              │
         │   └─────────────────────────┘
         │        │
         │        ▼
         │   edge_attr [B, 512, 256]
         │
         │   Virtual Node init [B, 256] ← nn.Parameter(zeros)
         │        │
  ┌──────┼────────┼──── REPEATED ×4 LAYERS ────────────────────┐
  │      ▼        ▼                                             │
  │  ┌──────────────────────────────────────────────────┐       │
  │  │ GINE Layer k                                     │       │
  │  │                                                  │       │
  │  │ For each edge (u→v):                             │       │
  │  │   msg = ReLU(h_u + edge_attr) * edge_weight      │       │
  │  │   msg = msg * edge_mask                          │       │
  │  │                                                  │       │
  │  │ agg_v = Σ msg  (scatter_add over incoming edges) │       │
  │  │                                                  │       │
  │  │ h_new = MLP((1 + ε) · h_v + agg_v)              │       │
  │  │   where MLP = Linear→BN→ReLU→Dropout→Linear      │       │
  │  │   ε = learnable scalar (per layer)               │       │
  │  │                                                  │       │
  │  │ h_new = BN(h_new) * node_mask                    │       │
  │  └──────────────────────────────────────────────────┘       │
  │      │                                                      │
  │      ▼                                                      │
  │  ┌──────────────────────────────────┐                       │
  │  │ Residual + LayerNorm             │                       │
  │  │ h = LayerNorm(h_prev + h_new)    │                       │
  │  └──────────────────────────────────┘                       │
  │      │                                                      │
  │      ▼                                                      │
  │  ┌──────────────────────────────────────────┐               │
  │  │ Virtual Node Update                      │               │
  │  │                                          │               │
  │  │ vn_new = vn + Σ(h * node_mask)           │               │
  │  │ vn_new = MLP(vn_new) + vn  (residual)    │               │
  │  │   MLP = Linear→BN→ReLU→Dropout→Linear    │               │
  │  │ vn_new = BN(vn_new)                      │               │
  │  │                                          │               │
  │  │ gate = sigmoid(g)  where g init = -2.0   │               │
  │  │        → gate ≈ 0.12 initially           │               │
  │  │                                          │               │
  │  │ h = h + gate · broadcast(vn_new)         │               │
  │  │ h = h * node_mask                        │               │
  │  └──────────────────────────────────────────┘               │
  │      │                                                      │
  │      ▼                                                      │
  │  hₖ [B, 64, 256]  ←─── saved for JK                        │
  │                                                             │
  └─────────────────────────────────────────────────────────────┘
         │
         ▼
  ┌─────────────────────────────────────┐
  │ Jumping Knowledge (JK) Connection   │
  │ Mode: concatenation                 │
  │                                     │
  │ h_jk = cat(h₀, h₁, h₂, h₃, h₄)   │
  │ → [B, 64, 256 × 5 = 1280]          │
  └─────────────────────────────────────┘
         │
         ▼
  ┌─────────────────────────────────────┐
  │ Graph Readout: Sum Pooling          │
  │                                     │
  │ graph_repr = Σ(h_jk * node_mask)    │
  │ → [B, 1280]                         │
  └─────────────────────────────────────┘
         │
         ▼
  ┌─────────────────────────────────────┐
  │ Graph Projector                     │
  │ Linear(1280 → 256) → BN → ReLU     │
  │ → Dropout(0.3)                      │
  │ → [B, 256]                          │
  └─────────────────────────────────────┘
         │
         ▼
  graph_repr [B, 256]


FEATURE BRANCH
==============

  Handcrafted Features [B, 210]
         │
         ▼
  ┌─────────────────────────────────────┐
  │ Feature Encoder                     │
  │ Linear(210 → 256) → BN → ReLU      │
  │ → Dropout(0.3)                      │
  │ → Linear(256 → 256) → BN → ReLU    │
  │ → Dropout(0.3)                      │
  │ → [B, 256]                          │
  └─────────────────────────────────────┘
         │
         ├────────────────────────────────┐
         │                                │
         ▼                                ▼
  feat_repr [B, 256]           ┌─────────────────────┐
                               │ Feature Aux Head     │
                               │ Linear(256 → 9)      │
                               │ → aux_logits [B, 9]  │
                               └─────────────────────┘


FUSION & CLASSIFICATION
=======================

  graph_repr [B, 256]    feat_repr [B, 256]
         │                       │
         └───────┬───────────────┘
                 ▼
  ┌─────────────────────────────┐
  │ Concatenation               │
  │ combined = [graph ; feat]   │
  │ → [B, 512]                  │
  └─────────────────────────────┘
         │
         ├────────────────────────────┐
         │                            │
         ▼                            ▼
  ┌─────────────────────┐  ┌──────────────────────────┐
  │ Classifier           │  │ Projection Head           │
  │ Linear(512 → 256)    │  │ Linear(512 → 256) → ReLU │
  │ → BN → ReLU          │  │ → Linear(256 → 128)      │
  │ → Dropout(0.3)       │  │ → L2-normalize            │
  │ → Linear(256 → 9)    │  │ → proj [B, 128]           │
  │ → logits [B, 9]      │  └──────────────────────────┘
  └─────────────────────┘


LOSS FUNCTION
=============

  L_total = L_CE + λ · L_SupCon + 0.3 · L_feat_aux

  where:
    L_CE        = weighted cross-entropy(logits, labels)
                  class weights = N_total / (9 × N_class)

    L_SupCon    = supervised contrastive loss on proj [B, 128]
                  temperature τ = 0.07
                  hard negative weight = 2.0× for confused pairs
                  7 confused pairs: L1TF↔V1, L1TF↔V4, MDS↔V4,
                    V1↔V4, V2↔BHI, V2↔INCEPTION, RETBLEED↔INCEPTION
                  λ warmup: 0 → 0.5 over first 10 epochs

    L_feat_aux  = cross-entropy(feat_aux_logits, labels)
                  ensures feature branch alone is discriminative

  Optimizer: AdamW (lr=1e-3, weight_decay=1e-4)
  Scheduler: CosineAnnealingLR (T_max=100)
  Gradient accumulation: 2 steps
  Gradient clipping: max_norm=1.0
```

### Per-Class Performance

| Class | Precision | Recall | F1 |
|-------|-----------|--------|----|
| BENIGN | 1.000 | 0.999 | 1.000 |
| BHI | 0.839 | 0.920 | 0.878 |
| INCEPTION | 0.945 | 0.916 | 0.930 |
| L1TF | 0.879 | 0.902 | 0.890 |
| MDS | 0.969 | 0.874 | 0.919 |
| RETBLEED | 0.994 | 0.900 | 0.945 |
| SPECTRE_V1 | 0.852 | 0.938 | 0.893 |
| SPECTRE_V2 | 1.000 | 1.000 | 1.000 |
| SPECTRE_V4 | 1.000 | 1.000 | 1.000 |

**Perfectly classified**: BENIGN, SPECTRE_V2, SPECTRE_V4
**Most confused**: BHI (P=0.84), V1 (P=0.85), L1TF (P=0.88) — low precision means other classes are predicted as these

---

## V35b — Static Edge-Type Reweighting

**Accuracy**: 93.83% (-0.06%) | **Parameters**: 1,824,666 | **Best epoch**: 96/100
**Files**: `scripts/train_gine_v35b_reweighted.py`, `viz_v35b_gine_reweighted/`

### Hypothesis

DATA_DEP (~31%) and CONTROL_FLOW (~52%) edges are uniformly distributed across all 9 classes and carry little discriminative signal. Speculative and semantic edges (2-7% each) vary between classes. Downweighting dominant edges and upweighting rare ones should improve separation.

### Architecture Diagram — Changes from V35

```
  ONLY CHANGE: Static edge weight multipliers applied during PDG preprocessing
  (No model architecture changes)

  Edge Types [B, 512]
       │
       ▼
  ┌───────────────────────────────────────────────────────────┐
  │ Static Edge Weight Multipliers (applied in DataLoader)    │
  │                                                           │
  │ For each edge i with type t and weight w:                 │
  │   edge_weight[i] = w × multiplier[t]                     │
  │                                                           │
  │ Multipliers (fixed, not learned):                         │
  │   DATA_DEP         × 0.3  (down)                         │
  │   CONTROL_FLOW     × 0.5  (down)                         │
  │   SPEC_CONDITIONAL × 1.0                                  │
  │   SPEC_INDIRECT    × 1.0                                  │
  │   SPEC_RETURN      × 1.0                                  │
  │   MEMORY_ORDER     × 1.0                                  │
  │   CACHE_TEMPORAL   × 1.0                                  │
  │   FENCE_BOUNDARY   × 1.0                                  │
  │                                                           │
  │ These scale the continuous edge_weight tensor, which      │
  │ multiplies messages in GINE: msg = ReLU(h_u + e) * w     │
  └───────────────────────────────────────────────────────────┘
       │
       ▼
  (rest of pipeline identical to V35)
```

### Result

Negligible change (-0.06%). Manually chosen static weights do not help because the model's learned representations already implicitly discount non-discriminative edges. The edge embedding layer (Embedding(8, 256)) can learn to produce lower-magnitude embeddings for DATA_DEP and CONTROL_FLOW, achieving the same effect.

### Per-Class Performance

| Class | Precision | Recall | F1 | vs V35 F1 |
|-------|-----------|--------|----|-----------|
| BHI | 0.871 | 0.902 | 0.886 | +0.008 |
| L1TF | 0.832 | 0.922 | 0.875 | -0.015 |
| SPECTRE_V1 | 0.853 | 0.933 | 0.891 | -0.002 |

---

## V35c — GATv2 Attention Message Passing

**Accuracy**: 93.56% (-0.33%) | **Parameters**: 2,612,122 | **Best epoch**: 100/100
**Files**: `scripts/train_gine_v35c_attention.py`, `viz_v35c_gine_attention/`

### Hypothesis

Replacing GINE's sum aggregation with GATv2 multi-head attention allows the model to dynamically weight neighbor contributions. Instead of treating all neighbors equally, the model can learn to attend to security-critical neighbors (e.g., the cache probe instruction downstream of a branch).

### Architecture Diagram — Changes from V35

```
  CHANGE: GINE message passing replaced with GATv2 attention

  V35 (GINE):                        V35c (GATv2):
  ─────────────────                   ─────────────────────────────────
  msg = ReLU(h_u + e_uv)             For each edge (u→v):
  agg_v = Σ msg (sum)                  concat = [W·h_u ∥ W·h_v ∥ e_uv]
  h_v = MLP((1+ε)·h_v + agg_v)        attn_raw = LeakyReLU(a^T · concat)
                                       α_uv = softmax(attn_raw) over N(v)
  Sum aggregation:                     agg_v = Σ α_uv · W·h_u  (4 heads)
  All neighbors weighted              h_v = MLP(agg_v)
  equally (WL-equivalent)
                                     Attention aggregation:
                                     Neighbors weighted by learned
                                     pairwise importance (NOT WL-equivalent)

  Parameters increase:
    V35:  1,824,666
    V35c: 2,612,122  (+787,456, +43%)

  Everything else unchanged: virtual node, JK cat, sum pooling,
  dual-path fusion, same loss function
```

### Result

**Worse than baseline** (-0.33%). GATv2 attention broke the WL-test equivalence guarantee that makes GIN/GINE provably maximally expressive for graph isomorphism. For this task, where structurally identical graphs need to be distinguished (confused pairs have >95% edge overlap), attention over neighbors adds parameters without adding discriminative power. The model overfits slightly (train 93.9% vs test 93.56% at epoch 100, never early-stopped).

### Per-Class Performance

| Class | Precision | Recall | F1 | vs V35 F1 |
|-------|-----------|--------|----|-----------|
| BHI | 0.856 | 0.897 | 0.876 | -0.002 |
| L1TF | 0.845 | 0.912 | 0.877 | -0.013 |
| MDS | 0.982 | 0.865 | 0.920 | +0.001 |
| SPECTRE_V1 | 0.832 | 0.933 | 0.880 | -0.013 |

---

## V35d — Attention Readout

**Accuracy**: 93.76% (-0.13%) | **Parameters**: 2,152,859 | **Best epoch**: 94/100
**Files**: `scripts/gine_classifier_v35d.py`, `scripts/train_gine_v35d_attn_readout.py`, `v35d_export/`

### Hypothesis

Instead of modifying message passing (which broke WL-equivalence in v35c), add attention only at the graph readout stage. GINE message passing remains unchanged (sum aggregation, WL-equivalent). A learned attention layer computes per-node importance scores and produces a weighted sum, mixed with the original sum pooling via a learned gate.

### Architecture Diagram — Changes from V35

```
  ONLY CHANGE: Graph readout stage (after JK, before graph projector)

  V35 Sum Pooling:              V35d Attention Readout:
  ────────────────               ─────────────────────────────────

  h_jk [B, 64, 1280]           h_jk [B, 64, 1280]
       │                              │
       ▼                              ├──────────────────────┐
  graph = Σ(h_jk * mask)             ▼                      ▼
  → [B, 1280]               ┌─────────────────┐    ┌────────────────┐
                             │ Attention Pool   │    │ Sum Pool       │
                             │                  │    │ Σ(h * mask)    │
                             │ score_i =        │    │ → [B, 1280]    │
                             │   a^T·tanh(W·h_i)│    └────────────────┘
                             │ α_i = softmax    │           │
                             │   (masked)       │           │
                             │ attn = Σ(α_i·h_i)│           │
                             │ → [B, 1280]      │           │
                             └─────────────────┘           │
                                      │                     │
                                      ▼                     ▼
                             ┌──────────────────────────────────┐
                             │ Gated Mixture                    │
                             │ g = sigmoid(gate)                │
                             │   gate init = 0.0 → g = 0.5     │
                             │                                  │
                             │ graph = g·attn + (1-g)·sum       │
                             │ → [B, 1280]                      │
                             └──────────────────────────────────┘

  Attention parameters:
    W: Linear(1280 → 256)     +327,936
    a: Linear(256 → 1)        +256
    gate: scalar              +1
    Total: +328,193 params

  GINE message passing: UNCHANGED (sum aggregation, WL-equivalent)
  Virtual node, JK, fusion, loss: UNCHANGED
```

### Result

Marginal decrease (-0.13%). The attention gate learned a value of ~0.82, meaning the model preferred attention readout over sum pooling. However, the per-class results show this didn't help the confused pairs. The attention readout can focus on "important" nodes, but when two classes have the same important nodes (same branch instruction, same cache probe), attention readout cannot distinguish them.

### Per-Class Performance

| Class | Precision | Recall | F1 | vs V35 F1 |
|-------|-----------|--------|----|-----------|
| BHI | 0.810 | 0.922 | 0.862 | -0.016 |
| INCEPTION | 0.943 | 0.914 | 0.928 | -0.002 |
| L1TF | 0.898 | 0.899 | 0.899 | +0.009 |
| MDS | 0.978 | 0.870 | 0.921 | +0.002 |
| RETBLEED | 0.997 | 0.899 | 0.946 | +0.001 |
| SPECTRE_V1 | 0.850 | 0.934 | 0.890 | -0.003 |

---

## V37 — Hierarchical Coarse-to-Fine Classification

**Accuracy**: 93.42% (-0.47%) | **Coarse accuracy**: 95.11% | **Parameters**: 2,287,010 | **Best epoch**: 99/120
**Files**: `scripts/gine_classifier_v37.py`, `scripts/train_hierarchical_gine_v37.py`, `v37_export/`

### Hypothesis

The confused pairs share structural identity at the 9-class level but belong to distinct mechanism groups. A hierarchical approach first learns reliable group boundaries (5 coarse classes), then refines within groups. Three additional techniques support this: curriculum learning (easy→hard), DropEdge regularization, and an auxiliary coarse loss.

### Coarse Taxonomy

| Group | ID | Fine Classes | Mechanism |
|-------|----|-------------|-----------|
| BENIGN | 0 | BENIGN | No speculation |
| CACHE_SPECULATION | 1 | L1TF, SPECTRE_V1 | Cache timing after speculative access |
| INDIRECT_BRANCH | 2 | BHI, SPECTRE_V2 | Branch target buffer poisoning |
| RETURN_BASED | 3 | RETBLEED, INCEPTION | Return stack exploitation |
| MEMORY_ORDER | 4 | MDS, SPECTRE_V4 | Store/load reordering |

### Architecture Diagram — Changes from V35

```
  CHANGES:
    1. Attention readout (from V35d)
    2. Three classification heads (binary + coarse + fine)
    3. Curriculum learning (3 phases)
    4. DropEdge regularization

  GRAPH BRANCH: Same as V35d (GINE + attention readout)

  FUSION STAGE:
  ─────────────

  combined [B, 512]
       │
       ├────────────────────────────────────────┐
       │                                        │
       ├──────────────────┐                     │
       │                  │                     │
       ▼                  ▼                     ▼
  ┌──────────┐    ┌─────────────┐    ┌──────────────────┐
  │ Fine Head │    │ Coarse Head │    │ Binary Head       │
  │ (9-class) │    │ (5-class)   │    │ (2-class)         │
  │           │    │             │    │                    │
  │ Lin(512→  │    │ Lin(512→    │    │ Lin(512→2)         │
  │  256)→BN  │    │  256)→BN    │    │ → binary_logits   │
  │  →ReLU→   │    │  →ReLU→     │    │   [B, 2]          │
  │  Drop→    │    │  Drop→      │    └──────────────────┘
  │  Lin(256  │    │  Lin(256    │
  │  →9)      │    │  →5)        │
  │ →logits   │    │ →coarse     │
  │  [B, 9]   │    │  [B, 5]     │
  └──────────┘    └─────────────┘


  CURRICULUM LEARNING (3 phases):
  ───────────────────────────────

  Phase 1 (epochs 1–10): BINARY
    Labels: attack vs benign (trivial, builds backbone)
    Loss = CE(binary_logits, binary_labels)
    SupCon: disabled

  Phase 2 (epochs 11–25): COARSE
    Labels: 5 mechanism groups
    Loss = CE(coarse_logits, coarse_labels)
         + 0.3 × CE(fine_logits, fine_labels)
         + λ × L_SupCon
    SupCon: warmup over 5 epochs

  Phase 3 (epochs 26–120): FINE
    Labels: full 9-class
    Loss = CE(fine_logits, fine_labels)
         + 0.3 × CE(coarse_logits, coarse_labels)
         + λ × L_SupCon
         + 0.3 × L_feat_aux


  DROPEDGE (training only):
  ─────────────────────────

  Before forward pass each batch:
    drop = rand(edge_mask.shape) > 0.15
    edge_mask = edge_mask & drop

  Randomly zeros 15% of edges, forcing the model to learn from
  rarer edge types rather than relying on dominant CONTROL_FLOW
  and DATA_DEP edges.
```

### Result

**Worse than baseline** (-0.47%). The curriculum phase transitions disrupt learned features — the representation optimized for binary classification in Phase 1 must be repurposed for 5-class and then 9-class, causing the optimizer to re-learn features at each transition. The coarse accuracy (95.11%) confirms that mechanism groups are separable, but the fine-grained discrimination within groups did not benefit from the hierarchical structure. DropEdge at 15% may also have been too aggressive, adding noise that overwhelmed the signal from rare edges.

### Per-Class Performance

| Class | Precision | Recall | F1 | vs V35 F1 |
|-------|-----------|--------|----|-----------|
| BHI | 0.923 | 0.870 | 0.896 | +0.018 |
| INCEPTION | 0.946 | 0.917 | 0.931 | +0.001 |
| L1TF | 0.816 | 0.923 | 0.866 | -0.024 |
| MDS | 0.969 | 0.862 | 0.912 | -0.007 |
| RETBLEED | 0.995 | 0.899 | 0.944 | -0.001 |
| SPECTRE_V1 | 0.804 | 0.937 | 0.865 | -0.028 |

Notable: BHI precision improved significantly (0.839→0.923) but L1TF and V1 got worse.

---

## V38 — Boilerplate Stripping + Learnable Edge Scaling + Positional Encoding

**Accuracy**: 93.83% (-0.06%) | **Parameters**: 1,824,930 | **Best epoch**: 85/100
**Files**: `scripts/gine_classifier_v38.py`, `scripts/train_gine_v38.py`, `v38_export/`

### Hypothesis

Three orthogonal changes motivated by diagnostic analysis:
1. **Boilerplate stripping**: Remove measurement infrastructure (`_barrier:`, `_rd:`, `__mm_mfence`, etc.) from sequences before PDG construction — these are harness code, not attack code
2. **Learnable edge-type scaling**: Let the model learn per-edge-type importance weights instead of fixing them (as in v35b)
3. **Positional encoding**: Add relative instruction position (i/N) as an extra node feature, since attack instructions cluster in positions 1-5

### Architecture Diagram — Changes from V35

```
  CHANGE 1: Data Pipeline — Boilerplate Stripping
  ────────────────────────────────────────────────

  Raw Sequence                    Stripped Sequence
  ┌────────────────────┐          ┌────────────────────┐
  │ ldr w13, [sp, #8]  │          │ ldr w13, [sp, #8]  │
  │ cmp w13, #0        │          │ cmp w13, #0        │
  │ b.le .LBB0_3       │          │ b.le .LBB0_3       │
  │ ldr x8, [x9, ...]  │    →     │ ldr x8, [x9, ...]  │
  │ _barrier:           │  strip   └────────────────────┘
  │ dsb sy              │  these
  │ mrs x0, pmccntr_el0 │         32.7% of samples affected
  │ _rd:                │         8.8% instruction reduction
  │ rdtsc               │
  └────────────────────┘

  Patterns stripped:
    - Regions after _barrier:, _rd:, __mm_* labels
    - Trailing dsb, mrs, rdtsc instructions
    - Trailing bare ret/retq after measurement
    - Trailing nops and stack epilogue


  CHANGE 2: Learnable Edge-Type Scaling (8 parameters)
  ─────────────────────────────────────────────────────

  Edge Types [B, 512]
       │
       ▼
  ┌──────────────────────────────┐
  │ Edge Encoder                  │
  │ Embedding(8, 256)             │
  │ → edge_attr [B, 512, 256]    │
  └──────────────────────────────┘
       │
       ▼
  ┌──────────────────────────────────────────────────────┐
  │ NEW: Learnable Per-Type Scaling                       │
  │                                                       │
  │ scale = nn.Parameter(ones(8))  ← 8 learnable scalars │
  │ type_scales = scale[edge_type]  → [B, 512]           │
  │ edge_attr = edge_attr × type_scales.unsqueeze(-1)     │
  │                                                       │
  │ Preserves WL-equivalence: scalar per-type, not        │
  │ per-edge attention. Sum aggregation unchanged.         │
  └──────────────────────────────────────────────────────┘
       │
       ▼
  (into GINE layers as before)


  Final learned scales (epoch 85):
  ┌──────────────────────────────────────────────────────┐
  │ CACHE_TEMPORAL      1.36  ▲ (rarest:  0.3% of edges)│
  │ SPEC_INDIRECT       1.26  ▲ (rare:    3.6%)         │
  │ FENCE_BOUNDARY      1.17  ▲ (rare:    1.3%)         │
  │ SPEC_RETURN         1.14  ▲ (rare:    2.2%)         │
  │ MEMORY_ORDER        1.08  ▲ (moderate: 6.9%)        │
  │ DATA_DEP            0.74  ▼ (dominant: 30.6%)       │
  │ SPEC_CONDITIONAL    0.72  ▼ (moderate: 3.3%)        │
  │ CONTROL_FLOW        0.62  ▼ (dominant: 52.0%)       │
  └──────────────────────────────────────────────────────┘


  CHANGE 3: Positional Encoding (+1 node feature dim)
  ──────────────────────────────────────────────────────

  Node Features: 34 → 35 dimensions

  For node i in a graph with n real nodes:
    pos_enc[i] = i / max(n-1, 1)    ∈ [0.0, 1.0]

  Appended as 35th feature dimension:
    node_features = cat(base_34_features, pos_enc)

  Motivation: attack-discriminating instructions cluster in
  positions 1-5; boilerplate dominates the tail.
```

### Result

No improvement (-0.06%). The learned edge-type scales confirm the diagnosis (CONTROL_FLOW and DATA_DEP are non-discriminative), but giving the model the ability to scale them doesn't help because the confused pairs share the same edge-type distributions even after reweighting. Boilerplate stripping removes noise but doesn't add discriminative signal for within-pair separation. The positional encoding is redundant with the control flow edge sequence.

### Per-Class Performance

| Class | Precision | Recall | F1 | vs V35 F1 |
|-------|-----------|--------|----|-----------|
| BHI | 0.857 | 0.911 | 0.883 | +0.005 |
| INCEPTION | 0.942 | 0.916 | 0.928 | -0.002 |
| L1TF | 0.876 | 0.909 | 0.892 | +0.002 |
| MDS | 0.958 | 0.875 | 0.914 | -0.005 |
| RETBLEED | 0.990 | 0.899 | 0.942 | -0.003 |
| SPECTRE_V1 | 0.847 | 0.936 | 0.889 | -0.004 |

---

## V39a — Multi-Label with Aleatoric Uncertainty

**Accuracy**: pending | **Parameters**: ~1,825,000 | **Status**: ready to train
**Files**: `scripts/gine_classifier_v39a.py`, `scripts/train_gine_v39a_multilabel.py`, `v39a_export/`

### Hypothesis

The 2,605 cross-class duplicates are not label noise — they represent genuine aleatoric uncertainty where the same instruction sequence can trigger multiple vulnerability types depending on microarchitectural state. Instead of deduplicating (which discards real signal), model the ambiguity explicitly using:
1. **Soft labels** for cross-class duplicates proportional to occurrence frequency
2. **Heteroscedastic aleatoric uncertainty** (Kendall & Gal, NeurIPS 2017) that learns per-sample variance

### Architecture Diagram — Changes from V35

```
  CHANGE 1: Soft Label Construction (data pipeline)
  ─────────────────────────────────────────────────

  For each instruction sequence, hash (SHA-256) and group by hash:

  Sequence Hash: a7f3...    appears as:
    L1TF × 3, SPECTRE_V1 × 2
    → soft label = [0, 0, 0, 0.6, 0, 0, 0.4, 0, 0]
                        L1TF ↑        V1 ↑

  Sequence Hash: b2e1...    appears as:
    MDS × 1 (unique)
    → hard label = [0, 0, 0, 0, 1.0, 0, 0, 0, 0]

  ~3.6% of samples get soft labels; 96.4% keep hard labels.


  CHANGE 2: Aleatoric Uncertainty Head
  ─────────────────────────────────────

  combined [B, 512]
       │
       ├──────────────────────────────────┐
       │                                  │
       ▼                                  ▼
  ┌──────────────┐            ┌───────────────────────┐
  │ Classifier    │            │ NEW: Log-Variance Head │
  │ (same as V35) │            │ Linear(512 → 256)     │
  │ → logits      │            │ → ReLU                 │
  │   [B, 9]      │            │ → Linear(256 → 1)      │
  └──────────────┘            │ → log_var [B, 1]        │
                               │   = log(σ²)            │
                               └───────────────────────┘


  CHANGE 3: Heteroscedastic Loss (Kendall & Gal 2017)
  ────────────────────────────────────────────────────

  Standard CE:     L = -Σ y_i · log(p_i)

  Heteroscedastic: L = (1/2) · exp(-s) · L_task + (1/2) · s
                   where s = log(σ²) is predicted per sample

  For soft labels:  L_task = -Σ y_soft_i · log(softmax(logits)_i)
  For hard labels:  L_task = CE(logits, label)

  Effect:
    Ambiguous samples → model learns high σ² → gradient attenuated
    Clear samples     → model learns low σ²  → gradient amplified
    Regularizer (1/2)·s prevents trivial σ² → ∞

  SupCon loss uses HARD labels (for positive pair matching, not soft).
  Feature aux loss uses SOFT labels (KL-divergence).
```

### Expected Outcome

If the learned variance is significantly higher for misclassified samples (especially confused pairs), this validates the aleatoric uncertainty hypothesis. The accuracy may not improve dramatically (only 3.6% of samples are affected), but the uncertainty estimates are valuable for the downstream generative pipeline ranking.

---

## V39b — Deduplicated Dataset

**Accuracy**: pending | **Parameters**: ~1,824,666 | **Status**: ready to train
**Files**: `scripts/train_gine_v39b_dedup.py`, `v39b_export/`

### Hypothesis

The 2,605 cross-class duplicates are contradictory labels that create an irrecoverable accuracy ceiling (~96.4%). Removing them should:
1. Eliminate contradictory gradients during training
2. Raise the effective accuracy ceiling
3. Improve per-class F1 for confused pairs

### Architecture Diagram — Changes from V35

```
  ONLY CHANGE: Data pipeline (deduplication before train/test split)
  Model architecture is IDENTICAL to V35.

  DEDUPLICATION STRATEGY: Majority Vote
  ─────────────────────────────────────

  For each unique sequence hash:

  Case 1: Single class (96.4% of sequences)
  ┌───────────────────────────────┐
  │ Hash a7f3... → all labels MDS │ → KEEP all instances
  └───────────────────────────────┘

  Case 2: Multiple classes, clear majority
  ┌────────────────────────────────────────────┐
  │ Hash b2e1... → L1TF × 3, V1 × 1           │
  │ Majority: L1TF                              │
  │ → KEEP L1TF instances, REMOVE V1 instances  │
  └────────────────────────────────────────────┘

  Case 3: Multiple classes, tied
  ┌────────────────────────────────────────────┐
  │ Hash c9d4... → RETBLEED × 2, INCEPTION × 2 │
  │ No majority                                  │
  │ → REMOVE all instances                        │
  └────────────────────────────────────────────┘

  Expected data reduction: ~3-5% of 72,000 samples
  Class balance: CE loss reweighted to compensate for uneven removal

  This is the DATA CLEANING approach.
  Contrast with V39a which is the UNCERTAINTY MODELING approach.
```

### Expected Outcome

If accuracy improves, it means the duplicates were noise and cleaning helps. If accuracy stays the same or decreases, the duplicates carry information that the model was already handling (or the number is too small to matter). Comparing v39a and v39b directly answers whether cross-class duplicates should be modeled or removed.

---

## Results Comparison

| Version | Accuracy | Delta | Params | Epoch | What Changed |
|---------|----------|-------|--------|-------|--------------|
| **V35** | **93.89%** | — | 1.82M | 95 | Baseline |
| V35b | 93.83% | -0.06% | 1.82M | 96 | Static edge reweighting |
| V35c | 93.56% | -0.33% | 2.61M | 100 | GATv2 attention message passing |
| V35d | 93.76% | -0.13% | 2.15M | 94 | Attention readout (gated) |
| V37 | 93.42% | -0.47% | 2.29M | 99 | Hierarchical + curriculum + DropEdge |
| V38 | 93.83% | -0.06% | 1.82M | 85 | Boilerplate strip + learnable edge scales + positional |
| V39a | pending | — | ~1.82M | — | Soft labels + aleatoric uncertainty |
| V39b | pending | — | ~1.82M | — | Deduplicated dataset |

### Per-Class F1 Scores Across Versions (Confused Classes Only)

| Class | V35 | V35b | V35c | V35d | V37 | V38 |
|-------|-----|------|------|------|-----|-----|
| BHI | 0.878 | 0.886 | 0.876 | 0.862 | **0.896** | 0.883 |
| INCEPTION | **0.930** | 0.931 | 0.929 | 0.928 | 0.931 | 0.928 |
| L1TF | 0.890 | 0.875 | 0.877 | **0.899** | 0.866 | 0.892 |
| MDS | 0.919 | **0.922** | 0.920 | 0.921 | 0.912 | 0.914 |
| RETBLEED | 0.945 | 0.945 | 0.945 | **0.946** | 0.944 | 0.942 |
| SPECTRE_V1 | **0.893** | 0.891 | 0.880 | 0.890 | 0.865 | 0.889 |

No version consistently improves all confused pairs. The improvements are within noise margin (~1%).

---

## Key Findings

### 1. The V35 architecture is near-optimal for this representation

Every modification — attention (v35c, v35d), hierarchy (v37), edge scaling (v35b, v38), positional encoding (v38) — produced results within ±0.5% of the baseline. The architecture is not the bottleneck.

### 2. Graph-level structure cannot distinguish the confused pairs

The confused pairs (L1TF↔V1, BHI↔V2, RETBLEED↔INCEPTION, MDS↔V4) share >95% structural identity at the PDG level. The vulnerability type is determined by microarchitectural semantics (why speculation occurs), not by instruction-level graph topology (what instructions exist). This is a representation limitation, not a model limitation.

### 3. Learned edge-type scales validate the diagnosis

V38's learnable scales confirmed that CONTROL_FLOW (0.62) and DATA_DEP (0.74) are non-discriminative (the model wants to suppress them), while CACHE_TEMPORAL (1.36) and SPEC_INDIRECT (1.26) are the most discriminative. However, this knowledge doesn't help classification because confused pairs share identical distributions of even the discriminative edge types.

### 4. The accuracy ceiling is ~96.4%

3.6% of the dataset consists of exact byte-for-byte duplicates with contradictory labels. These represent genuine multi-label ambiguity (the same instruction sequence triggers multiple vulnerability types). V39a and V39b test two approaches to this: model the ambiguity (soft labels + uncertainty) vs clean it (deduplication).

### 5. Attention hurts more than it helps

Both v35c (GATv2 message passing) and v35d (attention readout) performed worse than v35. For GNNs on small graphs with high structural similarity, the inductive bias of sum aggregation (WL-equivalent) is more valuable than the flexibility of attention. This aligns with Xu et al. (ICLR 2019) who showed that sum aggregation is strictly more expressive than mean or attention-weighted aggregation for graph isomorphism tasks.

### 6. Future improvements require richer input, not better models

The remaining ~2.6% gap (93.89% → 96.4% ceiling) likely requires:
- **Multi-label / soft-label training** (V39a) to handle aleatoric uncertainty
- **ISA / compiler metadata** as additional features (V4's 100% x86 is a dataset artifact)
- **Coarser label taxonomy** (5 mechanism groups instead of 9 CVEs) — aligned with the generative pipeline's actual needs
- **Microarchitectural simulation traces** as input features — the only way to distinguish vulnerability types that differ in why speculation occurs, not what instructions are present
