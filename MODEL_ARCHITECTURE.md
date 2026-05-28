# Model Architecture: Random Forest Multi-Class Vulnerability Detector

## Overview

The model is a **Random Forest Classifier** that performs multi-class classification on assembly instruction sequences to detect various speculative execution vulnerabilities and benign code.

---

## Classifier: Random Forest

### Configuration

```python
RandomForestClassifier(
    n_estimators=200,           # Number of decision trees in the forest
    max_depth=None,              # No limit on tree depth (grows until pure leaves)
    min_samples_split=2,         # Minimum samples required to split a node
    min_samples_leaf=1,          # Minimum samples required in a leaf node
    n_jobs=-1,                   # Use all CPU cores for parallel training
    class_weight="balanced_subsample",  # Balance class weights per tree bootstrap
    random_state=42,             # Reproducibility seed
    verbose=1                    # Show training progress
)
```

### Training Configuration

- **Data Split**: Stratified 80/20 (train/test)
- **Sample Weighting**: Supports per-sample weights (e.g., for data augmentation)
- **Vectorization**: `DictVectorizer` with sparse matrix format (efficient for high-dimensional sparse features)

---

## Feature Engineering Pipeline

The model uses a comprehensive feature extraction pipeline that transforms assembly instruction sequences into numerical feature vectors. Features are organized into **13 categories**:

### Feature Extraction Order

1. **Standard Features** (Local Patterns)
2. **Dependency Features** (Data Flow)
3. **Memory Semantics** (Memory Access Patterns)
4. **Indirect Branch Features** (Control Flow)
5. **MDS-Specific Features**
6. **Spectre V1 Features**
7. **BHI Features**
8. **RETBLEED Features**
9. **L1TF Features**
10. **BENIGN Counter-Features**
11. **Graph-based Features** (CFG + DFG)
12. **Sequence Embedding Features** (Global Semantic Representation) ⭐ NEW
13. **Basic Features** (Carried over from original pipeline)

---

## Detailed Feature Categories

### 1. Standard Features (Local Patterns)

**Purpose**: Capture local instruction-level patterns and statistics.

| Feature Type | Description | Example Features |
|--------------|-------------|------------------|
| **Opcode Trace** | Full sequence of opcodes as string | `op_trace`: "ldr cmp b.ge ldr ret" |
| **Structural Trace** | Simplified opcode types (LOAD, STORE, BRANCH, etc.) | `struc_trace`: "LOAD COMPARE BRANCH LOAD RET" |
| **N-grams** | 1-gram, 2-gram, 3-gram counts | `ng_1:ldr`, `ng_2:ldr::cmp`, `ng_3:ldr::cmp::b.ge` |
| **Operand Statistics** | Memory/register operation counts | `num_mem_ops`, `num_store_ops`, `num_load_ops`, `num_reg_tokens` |
| **Branch Information** | Branch type counts | `branch_eq`, `branch_ne`, `branch_ge`, `num_branches` |
| **Window Length** | Number of instructions | `window_length` |

**Key Characteristics**:
- Captures immediate patterns (1-3 instruction windows)
- String-based features for DictVectorizer (one-hot encoded)
- Focuses on instruction types rather than specific operands

---

### 2. Dependency Features (Data Flow Analysis)

**Purpose**: Track data dependencies and register usage patterns.

| Feature | Description |
|---------|-------------|
| `dep_load_to_load` | Count of load-to-load dependencies (pointer chasing) |
| `dep_arith_to_load` | Count of arithmetic-to-load dependencies (calculated addresses) |
| `dep_avg_distance` | Average distance between def and use |
| `dep_count` | Total number of dependencies tracked |

**Algorithm**:
- Tracks register definitions (defs) and uses
- Classifies operations as LOAD, ARITH, or OTHER
- Measures distances between defs and uses
- Detects specific dependency chains (load→load, arith→load)

**Example**:
```
Instruction sequence:
  ldr x0, [x1]      # Def: x0 (LOAD)
  add x2, x0, #4    # Use: x0, Def: x2 (ARITH)
  ldr x3, [x2]      # Use: x2, Def: x3 (LOAD)
                    # Dependency: arith→load (x2 used in load)
```

---

### 3. Memory Semantics Features

**Purpose**: Analyze memory access patterns and addressing modes.

| Feature | Description |
|---------|-------------|
| `mem_stack_accesses` | Count of stack-based memory accesses |
| `mem_complex_addressing` | Count of complex addressing modes (multiple regs, arithmetic) |
| `mem_store_load_hazard` | Count of store→load patterns (potential forwarding) |
| `mem_stack_ratio` | Ratio of stack accesses to total memory operations |

**Detection**:
- Stack pointer detection: `sp`, `rsp`, `rbp`, `esp`, `ebp`
- Complex addressing: Multiple registers or arithmetic in `[...]`
- Store-load hazards: Store to address X followed by load from X

---

### 4. Indirect Branch Features

**Purpose**: Detect indirect control flow transfers.

| Feature | Description |
|---------|-------------|
| `num_indirect_branches` | Count of indirect branch instructions |
| `has_indirect_branch` | Binary indicator (0 or 1) |

**Indirect Branch Detection**:
- x86: `jmp *rax`, `call *rax`
- ARM64: `br x0`, `blr x1`, indirect function pointer calls

**Importance**: Critical for Spectre V2, BHI, and other branch predictor attacks.

---

### 5. MDS-Specific Features

**Purpose**: Detect Microarchitectural Data Sampling (MDS) attack patterns.

| Feature | Description |
|---------|-------------|
| `has_cache_flush` | Presence of cache flush instructions (`clflush`, `clflushopt`) |
| `has_fence` | Presence of memory fences (`mfence`, `lfence`, `sfence`) |
| `has_timing` | Presence of timing instructions (`rdtsc`, `rdtscp`) |
| `has_clear_before_load` | Pattern: register clear (XOR/EOR) followed by load |
| `has_shift_then_load` | Pattern: shift operation followed by load |
| `has_flush_fence_load` | Pattern: flush → fence → load |
| `has_mds_probe_pattern` | Combined MDS-specific pattern |
| `cache_flush_count` | Count of cache flush instructions |
| `fence_count` | Count of fence instructions |
| `mds_gadget_score` | Aggregated MDS pattern score (0.0-1.0) |

**Key Patterns**:
- **FLUSH+RELOAD**: Cache flush followed by reload and timing
- **Clear-before-load**: XOR register to clear, then load from address
- **Shift-then-load**: Address calculation (shift) followed by load

---

### 6. Spectre V1 Features

**Purpose**: Detect Spectre Variant 1 (Bounds Check Bypass) patterns.

| Feature | Description |
|---------|-------------|
| `has_bounds_check` | Presence of bounds checking instructions (CMP with constant) |
| `has_cond_branch_then_load` | Pattern: conditional branch followed by load |
| `has_array_index_calc` | Pattern: arithmetic followed by conditional branch |
| `has_cmp_branch_load_pattern` | Pattern: CMP → branch → load |
| `has_speculative_load` | Load that could execute speculatively after branch |
| `cond_branch_count` | Count of conditional branches |
| `cmp_count` | Count of comparison instructions |
| `bounds_check_to_load_distance` | Distance from bounds check to load |
| `spectre_v1_score` | Aggregated Spectre V1 pattern score (0.0-1.0) |

**Key Pattern**:
```
Spectre V1 attack pattern:
  cmp x0, #10           # Bounds check
  b.ge skip             # Conditional branch (mis-predicted)
  ldr x1, [x2, x0, lsl #3]  # Speculative load (executes even if x0 >= 10)
```

---

### 7. BHI Features (Branch History Injection)

**Purpose**: Detect Branch History Injection attack patterns.

| Feature | Description |
|---------|-------------|
| `has_indirect_branch` | Presence of indirect branch instructions |
| `has_multiple_indirect_branches` | Multiple indirect branches in sequence |
| `has_indirect_call` | Indirect function call |
| `has_indirect_jump` | Indirect jump |
| `has_branch_history_manipulation` | Pattern suggesting BHI attack |
| `has_pht_training_pattern` | Pattern table training pattern |
| `branch_sequence_length` | Length of branch sequence |
| `has_function_pointer_call` | Function pointer call pattern |
| `bhi_score` | Aggregated BHI pattern score (0.0-1.0) |

**Key Patterns**:
- Multiple indirect branches in sequence
- Function pointer manipulation followed by indirect call
- Branch predictor training patterns

---

### 8. RETBLEED Features

**Purpose**: Detect Return Stack Buffer (RSB) poisoning attacks.

| Feature | Description |
|---------|-------------|
| `ret_count` | Count of return instructions |
| `call_count` | Count of call instructions |
| `has_leave_ret_pattern` | Pattern: LEAVE followed by RET |
| `has_recursive_call_hint` | Pattern suggesting recursive calls |
| `has_deep_call_pattern` | Deep call stack pattern |
| `has_rsb_manipulation` | Pattern suggesting RSB manipulation |
| `call_ret_ratio` | Ratio of calls to returns |
| `push_pop_imbalance` | Imbalance between push/pop operations |
| `retbleed_score` | Aggregated RETBLEED pattern score (0.0-1.0) |

**Key Patterns**:
- Unbalanced call/ret sequences
- LEAVE+RET pattern (x86 stack frame cleanup)
- Deep call chains
- RSB manipulation hints

---

### 9. L1TF Features (L1 Terminal Fault)

**Purpose**: Detect L1 Terminal Fault attack patterns.

| Feature | Description |
|---------|-------------|
| `l1tf_has_flush_reload` | FLUSH+RELOAD cache side-channel pattern |
| `l1tf_has_tlb_invalidation` | TLB invalidation instructions (`invlpg`, `tlbi`) |
| `l1tf_has_pte_manipulation` | Page table entry manipulation hints |
| `l1tf_has_fault_trigger` | Fault trigger instructions (`ud2`, `int 3`, `int 14`) |
| `l1tf_has_timing_around_load` | Timing measurement around memory access |
| `l1tf_flush_then_access` | Pattern: flush → memory access |
| `l1tf_cache_timing_pattern` | Cache timing side-channel pattern |
| `l1tf_score` | Aggregated L1TF pattern score (0.0-1.0) |

**Key Patterns**:
- FLUSH+RELOAD: Cache flush followed by reload and timing
- TLB invalidation: `invlpg` or `tlbi` instructions
- Fault triggers: Instructions that cause page faults
- Timing measurements: `rdtsc`/`rdtscp` around memory access

---

### 10. BENIGN Counter-Features

**Purpose**: Detect characteristics of benign (non-vulnerable) code.

| Feature | Description |
|---------|-------------|
| `benign_simple_control_flow` | Simple, linear control flow |
| `benign_stack_frame_pattern` | Standard stack frame setup/teardown |
| `benign_balanced_push_pop` | Balanced push/pop operations |
| `benign_no_timing_ops` | No timing measurement instructions |
| `benign_no_cache_ops` | No cache manipulation instructions |
| `benign_no_indirect_branch` | No indirect branches |
| `benign_pure_arithmetic` | Pure arithmetic operations |
| `benign_loop_pattern` | Standard loop pattern |
| `benign_function_call_pattern` | Standard function call/return |
| `benign_score` | Aggregated benign pattern score (0.0-1.0) |

**Purpose**: Helps the model distinguish vulnerable code from normal, safe code.

---

### 11. Graph-based Features (CFG + DFG)

**Purpose**: Capture structural relationships in the code.

#### Control Flow Graph (CFG) Features

| Feature | Description |
|---------|-------------|
| `cfg_num_edges` | Number of edges in CFG |
| `cfg_num_back_edges` | Number of back edges (loops) |
| `cfg_max_out_degree` | Maximum branching factor |
| `cfg_has_branch` | Binary: has branching (out_degree > 1) |
| `cfg_branch_ratio` | Ratio of branch nodes to total nodes |
| `cfg_cyclomatic_complexity` | Cyclomatic complexity: E - N + 2 |

**CFG Construction**:
- Nodes: Instruction indices
- Edges: Control flow transitions (branches, calls, returns)
- Back edges: Loop detection (edge from higher index to lower index)

#### Data Flow Graph (DFG) Features

| Feature | Description |
|---------|-------------|
| `dfg_num_edges` | Number of edges in DFG |
| `dfg_max_chain_length` | Longest def-use chain (via BFS/DFS) |
| `dfg_has_long_chain` | Binary: has chain length >= 4 |
| `dfg_avg_out_degree` | Average out-degree in DFG |
| `graph_density` | Combined CFG+DFG density: E / (N * (N-1)) |

**DFG Construction**:
- Nodes: Instruction indices
- Edges: Data dependencies (register def → use)
- Long chains: Important for detecting complex data flow patterns

---

### 12. Sequence Embedding Features ⭐ NEW

**Purpose**: Capture long-range dependencies and global semantic patterns.

| Feature | Description |
|---------|-------------|
| `seq_emb_0` through `seq_emb_63` | 64-dimensional embedding vector |

**Architecture**:
- **Vocabulary**: 202 tokens (opcodes) from training data
- **Embedding Dimension**: 64
- **Tokenization**: Extract opcodes, filter NOPs
- **Encoding Method**: Mean + Max pooling
  - Mean pooling: Average semantic content
  - Max pooling: Dominant patterns
  - Combined: Truncated to 64 dimensions

**Structured Initialization**:
- Similar opcodes get similar embeddings:
  - Load group: `ldr`, `mov`, `ldrb`, etc.
  - Store group: `str`, `strb`, `stp`, etc.
  - Barrier group: `lfence`, `mfence`, `dsb`, etc.

**Advantages**:
- Fixed-size representation regardless of sequence length
- Captures global semantic patterns (not just local)
- Complements n-gram features (local) and graph features (structural)

---

### 13. Basic Features (Carried Over)

**Purpose**: Legacy features from original pipeline.

Features from `rec.get("features", {})` that are numeric (int, float, bool) are carried over.

---

## Feature Vectorization

### DictVectorizer

The model uses `sklearn.feature_extraction.DictVectorizer` to convert feature dictionaries into numerical vectors:

```python
vec = DictVectorizer(sparse=True)
X = vec.fit_transform(X_dicts)  # X_dicts is a list of feature dictionaries
```

**Process**:
1. Collects all unique feature names from all samples
2. Creates a mapping: `feature_name → column_index`
3. For each sample:
   - Creates sparse vector (mostly zeros)
   - Sets non-zero values for features present in the sample
   - String features (like `op_trace`) are one-hot encoded

**Example**:
```python
# Input feature dictionary:
{
    "num_load_ops": 3,
    "num_branches": 2,
    "op_trace": "ldr cmp b.ge",
    "mds_score": 0.85
}

# After vectorization (sparse matrix):
# Row: [0, 0, 0, 3, 2, 0, 0, 1, 0, 0, 0.85, ...]
#      ↑     ↑     ↑  ↑  ↑     ↑              ↑
#      (feature indices for: num_load_ops, num_branches, op_trace="ldr cmp b.ge", mds_score)
```

**Sparse Format**: Efficient for high-dimensional features (most features are 0 for most samples).

---

## Feature Statistics

### Total Feature Count

The total number of features is **dynamic** and depends on:

1. **N-grams**: Variable count based on unique n-grams in training data
   - 1-grams: ~200 unique opcodes
   - 2-grams: ~1000-2000 unique pairs
   - 3-grams: ~3000-5000 unique triplets

2. **Opcode/Structural Traces**: One-hot encoded (unique sequences)

3. **Fixed Features**: ~100-150 features (all other categories)

4. **Sequence Embeddings**: 64 fixed features

**Estimated Total**: ~5,000-10,000 features (sparse representation)

---

## Training Data

### Dataset Characteristics

- **Total Samples**: ~45,942 (varies by version)
- **Classes**: 
  - Vulnerability classes: `MDS`, `BRANCH_HISTORY_INJECTION`, `INCEPTION`, `L1TF`, `RETBLEED`, `SPECTRE_V1`, `SPECTRE_V2`, `SPECTRE_V4`
  - Non-vulnerable: `BENIGN`
- **Architectures**: x86_64 and ARM64
- **Data Augmentation**: 
  - Register swapping
  - Register renaming
  - NOP insertion
  - Code recomposition
  - Cross-window segment swapping

### Data Split

- **Training**: 80% (~36,754 samples)
- **Test**: 20% (~9,188 samples)
- **Split Method**: Stratified (maintains class distribution)

---

## Model Output

### Prediction Format

The model outputs class labels:

```python
y_pred = clf.predict(X_test)  # Array of predicted labels
```

### Evaluation Metrics

- **Classification Report**: Precision, Recall, F1-score per class
- **Confusion Matrix**: True vs. predicted labels
- **Overall Accuracy**: Overall classification accuracy

---

## Model Artifacts

After training, the following files are saved:

1. **`rf_multiclass.joblib`**: Trained Random Forest model
2. **`rf_vectorizer.joblib`**: Fitted DictVectorizer (for feature encoding)
3. **`rf_metrics.json`**: Classification metrics (precision, recall, F1-score)

---

## Inference Pipeline

### Step-by-Step Inference

1. **Load Model**:
   ```python
   clf = joblib.load("models/gadgets/rf_multiclass.joblib")
   vec = joblib.load("models/gadgets/rf_vectorizer.joblib")
   ```

2. **Extract Features**:
   ```python
   features = extract_features_enhanced(record)  # Returns dict
   ```

3. **Vectorize**:
   ```python
   X = vec.transform([features])  # Convert to sparse matrix
   ```

4. **Predict**:
   ```python
   prediction = clf.predict(X)[0]  # Class label
   probabilities = clf.predict_proba(X)[0]  # Class probabilities
   ```

---

## Key Design Decisions

### 1. Random Forest Choice

- **Non-linear relationships**: Captures complex feature interactions
- **Feature importance**: Provides interpretability
- **Handles sparse features**: Efficient with DictVectorizer sparse output
- **Robust to overfitting**: Ensemble method reduces variance

### 2. Sparse Feature Representation

- **Efficiency**: Most features are 0 for most samples (sparse)
- **Memory**: Saves memory for high-dimensional feature spaces
- **Compatibility**: Works well with Random Forest

### 3. Multi-Category Feature Engineering

- **Complementary features**: Different categories capture different aspects
  - Local patterns (n-grams)
  - Structural relationships (graphs)
  - Global semantics (sequence embeddings)
  - Vulnerability-specific patterns (MDS, Spectre, etc.)

### 4. Class Weighting

- **`class_weight="balanced_subsample"`**: Handles class imbalance
- Adjusts weights per tree bootstrap sample
- Prevents majority class from dominating

---

## Performance Characteristics

### Training Time

- **Feature Extraction**: ~2-3 seconds per 1000 sequences
- **Vectorization**: ~10-30 seconds (depends on feature space size)
- **Random Forest Training**: ~5-15 minutes (200 trees, all cores)

### Memory Usage

- **Feature Matrix**: Sparse format, ~100-500 MB
- **Model Size**: ~50-200 MB (depends on tree complexity)
- **Sequence Encoder**: ~13 KB (vocabulary + embedding matrix)

### Inference Time

- **Feature Extraction**: ~1-5 ms per sequence
- **Vectorization**: ~0.1-1 ms per sequence
- **Prediction**: ~0.1-1 ms per sequence

---

## Future Enhancements

Potential improvements:

1. **Neural Sequence Encoder**: Replace SimpleSequenceEncoder with trained BiLSTM
2. **Feature Selection**: Reduce feature space using importance scores
3. **Ensemble Methods**: Combine Random Forest with other classifiers
4. **Transfer Learning**: Pre-train embeddings on large assembly corpora
5. **Interpretability**: SHAP values for feature importance analysis

---

## Summary

The model architecture consists of:

1. **Classifier**: Random Forest (200 trees, balanced classes)
2. **Features**: ~5,000-10,000 features across 13 categories
3. **Input**: Assembly instruction sequences
4. **Output**: Vulnerability class labels + probabilities
5. **Key Innovation**: Sequence embeddings for long-range dependency capture

The architecture balances **local patterns** (n-grams), **structural relationships** (graphs), **global semantics** (sequence embeddings), and **vulnerability-specific patterns** (MDS, Spectre, etc.) for comprehensive vulnerability detection.

