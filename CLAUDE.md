# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

SpecExec is a machine learning-powered system for detecting speculative execution vulnerabilities in assembly code. The system analyzes x86_64, ARM64, and RISC-V assembly to identify 8 vulnerability classes: MDS, BRANCH_HISTORY_INJECTION (BHI), INCEPTION, L1TF, RETBLEED, SPECTRE_V1, SPECTRE_V2, SPECTRE_V4, and BENIGN code.

**Core Pipeline**: GitHub Repositories → C/C++ Code → Assembly Compilation → Feature Extraction → ML Classification → Vulnerability Detection

## Architecture

### Multi-Tier ML Architecture

The system uses three detection approaches that can work independently or in ensemble:

1. **Robust Vulnerability Detector** (`githubCrawl/robust_vulnerability_detector.py`)
   - Random Forest classifier (100 estimators, max_depth=10)
   - Isolation Forest anomaly detector
   - Trained on 8,085 vulnerability signatures from known exploits
   - 50-dimensional feature vectors extracted from assembly code

2. **Semantic Vulnerability Analyzer** (`githubCrawl/semantic_vulnerability_analyzer.py`)
   - Rule-based pattern matching with context awareness
   - Data flow and control flow analysis
   - Speculation potential analysis

3. **Ensemble Detector** (`githubCrawl/ensemble_vulnerability_detector.py`)
   - Weighted fusion: robust (0.4), semantic (0.35), pattern (0.15), anomaly (0.1)
   - Meta-learning approach combining multiple detection signals
   - Consensus-based detection with evidence collection

### Feature Engineering

The system extracts 13 categories of features from assembly code:

1. **Standard Features**: Opcode traces, n-grams (1-3 grams), branch counts, operand statistics
2. **Dependency Features**: Data flow analysis, register def-use chains, load-to-load dependencies
3. **Memory Semantics**: Stack access patterns, complex addressing, store-load hazards
4. **Indirect Branch Features**: Critical for Spectre V2 and BHI detection
5. **Vulnerability-Specific Features**: MDS, Spectre V1, BHI, RETBLEED, L1TF, BENIGN counter-features
6. **Graph Features**: Control Flow Graph (CFG) and Data Flow Graph (DFG) topology
7. **Sequence Embeddings**: 64-dimensional embeddings for long-range dependencies (202-token vocabulary)

### Key Model Artifacts

- **Random Forest Models**: `models/gadgets/rf_multiclass.joblib` (main classifier), `models/gadgets/rf_vectorizer.joblib` (DictVectorizer)
- **Ensemble Models**: `githubCrawl/ensemble_vulnerability_model_ensemble/` (ml_classifier.joblib, anomaly_detector.joblib, scaler.joblib)
- **Sequence Encoders**: `scripts/sequence_encoder.py` with vocabulary and structured embeddings
- **Metadata**: `githubCrawl/ensemble_vulnerability_model_ensemble/metadata.json` contains training statistics

## Common Commands

### Training ML Models

```bash
# Train Random Forest multi-class classifier (primary model)
python scripts/train_rf_multiclass.py

# Train GGNN+BiLSTM models (v27-v31 variants)
python scripts/train_ggnn_bilstm_v27.py  # Base GGNN+BiLSTM
python scripts/train_ggnn_bilstm_v31.py  # Latest version

# Train BiLSTM sequence models (v19-v24 variants)
python scripts/train_bilstm_v22.py       # BiLSTM with enhanced features

# Train ensemble model (v32)
python scripts/train_ensemble_v32.py

# Train CNN Sherlock model (v33)
python scripts/train_cnn_sherlock_v33.py
```

### Feature Extraction

```bash
# Extract features from assembly code
python scripts/extract_features.py

# Enhanced feature extraction (includes all 13 categories)
python scripts/extract_features_enhanced.py

# Extract features without NOPs
python scripts/extract_features_no_nop.py

# Regenerate features for specific model version
python scripts/regenerate_features_v22.py
```

### Data Processing

```bash
# Parse assembly files to JSONL format
python scripts/parse_asm_to_jsonl.py

# Augment assembly windows with data augmentation
python scripts/augment_asm_windows.py

# Merge datasets
python scripts/merge_datasets.py
python scripts/merge_benign_to_dataset.py

# Deduplicate dataset
python scripts/deduplicate_dataset.py

# Count dataset statistics
python scripts/count_dataset.py
python scripts/count_dataset_generic.py
```

### GitHub Integration Pipeline

```bash
# 1. Crawl GitHub repositories for C/C++ code
cd githubCrawl
python github.py                    # Search and list repositories
python crawl_benign_repos.py       # Crawl benign repositories

# 2. Clone repositories
python clone_repos.py

# 3. Find C/C++ source files
python find_c_cpp_files.py

# 4. Compile to assembly (multiple architectures and optimizations)
python compile_to_asm.py

# 5. Run vulnerability detection
python github_vulnerability_scanner.py
```

### Visualization and Analysis

```bash
# Visualize model predictions
python scripts/plot_confusion.py         # Confusion matrix
python scripts/plot_feature_importance.py  # Feature importance from Random Forest

# Visualize control flow graphs
python scripts/visualize_cfg_comparison.py
python scripts/visualize_connected_graphs.py

# Visualize misclassifications
python scripts/visualize_misclassifications.py

# Visualize Program Dependence Graphs (PDG)
python scripts/visualize_pdg.py
```

### Model Evaluation and Debugging

```bash
# Debug Random Forest classifier
python scripts/debug_rf.py

# Compare different models
python scripts/compare_models.py

# Run ablation study on BiLSTM
python scripts/ablation_bilstm_v19.py

# Profile feature extraction performance
python scripts/profile_feature_extraction.py
```

## Data Organization

### Input Data

- `c_vulns/`: C source code for known vulnerabilities (original exploits)
- `cpp_vulns/`: C++ vulnerable code samples
- `data/`: Processed datasets with features in JSONL format
- `githubCrawl/repos_benign/`: Cloned benign repositories from GitHub
- `githubCrawl/vuln_assembly_processed/`: Processed vulnerable assembly with embeddings

### Training Data

- `githubCrawl/vulnerable_sequences/`: Extracted vulnerable instruction sequences
  - `MULTI_TYPE/`: Multi-type vulnerability sequences
  - `EXTRACTION_SUMMARY.json`: Summary of extraction process
- `githubCrawl/enhanced_gadgets/`: Enhanced vulnerability gadgets with rich features
- `githubCrawl/dataset/`: Compiled training datasets

### Model Outputs

- `models/gadgets/`: Primary Random Forest models
- `models/`: Contains versioned model checkpoints (v19-v33)
- `viz_v*_*/`: Visualization outputs for each model version (confusion matrices, metrics)
- `ablation_results/`: Results from ablation studies

### Reports and Logs

- `githubCrawl/github_vulnerability_scan_report.json`: Scan results from GitHub repositories
- `githubCrawl/vulnerability_validation_report.json`: Validation metrics
- `githubCrawl/vulnerable_matches_analysis.json`: Analysis of matched vulnerabilities

## Architecture-Specific Notes

### Multi-Architecture Support

The system compiles and analyzes assembly for:
- **x86_64**: Intel/AMD processors (primary training data)
- **ARM64**: ARM v8 (Apple Silicon, mobile, embedded)
- **RISC-V**: Open-source ISA (experimental, limited training data)

Compilers used: GCC and Clang with optimization levels O0, O1, O2, O3, Os

### Assembly Parsing

The assembly parser (`scripts/parse_asm_to_jsonl.py`) extracts:
- Instruction opcodes and operands
- Labels and control flow targets
- Memory access patterns
- Register usage

Output format: JSONL with structured instruction records

## Model Training Workflow

### Standard Training Pipeline

1. **Prepare Dataset**: Extract features from vulnerable and benign assembly
   ```bash
   python scripts/run_extractor_on_cvulns.py  # Extract from c_vulns/
   python scripts/generate_class_templates.py  # Generate per-class templates
   ```

2. **Build Sequence Vocabulary**: Create opcode vocabulary for embeddings
   ```bash
   python scripts/build_sequence_vocab.py
   ```

3. **Train Model**: Train classifier with augmented features
   ```bash
   python scripts/train_rf_multiclass.py  # Or specific model version
   ```

4. **Evaluate**: Generate visualizations and metrics
   ```bash
   python scripts/plot_confusion.py
   python scripts/plot_feature_importance.py
   ```

### Advanced Training (Neural Models)

For GGNN+BiLSTM and CNN models:
1. Build graph representations: `scripts/pdg_builder.py`, `scripts/semantic_graph_builder.py`
2. Train graph neural network: `scripts/train_ggnn_bilstm_v31.py`
3. Results saved to `viz_v31_ggnn_bilstm/` with metrics and plots

## Testing and Validation

The system tracks performance across multiple metrics:
- **Precision**: ~25% (conservative, low false positives)
- **Recall**: ~17.6% (catches real vulnerabilities)
- **F1-Score**: ~20.7%
- **Confidence When Detecting**: ~75% (high confidence threshold)

Best performing vulnerability detection:
- **INCEPTION**: 3/9 test cases (33% accuracy)
- **L1TF**: Most frequently detected
- **SPECTRE_V1**: Challenging due to compiler optimizations

## Important File Paths

### Core Detection Scripts

- `githubCrawl/github_vulnerability_scanner.py`: Main scanning entry point
- `githubCrawl/robust_vulnerability_detector.py`: ML-based detector
- `githubCrawl/semantic_vulnerability_analyzer.py`: Rule-based analyzer
- `githubCrawl/ensemble_vulnerability_detector.py`: Ensemble fusion

### Feature Extractors

- `scripts/extract_features_enhanced.py`: Primary feature extraction (13 categories)
- `scripts/gadgets_to_features.py`: Convert gadgets to feature vectors
- `scripts/sequence_encoder.py`: Sequence embedding encoder

### Data Augmentation

- `scripts/augment_asm_windows.py`: Register swapping, NOP insertion, code recomposition

## Development Notes

### Adding New Vulnerability Classes

1. Add assembly examples to `c_vulns/asm_code/`
2. Update vulnerability type enum in detection scripts
3. Add class-specific feature extractors in `extract_features_enhanced.py`
4. Retrain models with new data
5. Update visualization configs

### Feature Engineering Guidelines

- Keep feature extraction consistent across architectures
- Use DictVectorizer for sparse feature representation
- Normalize features with StandardScaler before ML training
- Document new features in MODEL_ARCHITECTURE.md

### Feature / Spec Change Gate

Before trusting or merging any change to `spec/*.json`, `v54/pdg_builder.py`,
or a "learned features achieve parity/lift" claim, run:

```bash
./scripts/run_feature_gate.sh
```

This checks (1) independent-oracle (llvm-mc + capstone) control-flow
agreement hasn't regressed vs. the recorded baseline (`spec/oracle_baseline.json`),
and (2) reports per-class recall lift for learned-feature fusion vs. the
cached multi-seed `eval/full_tost/` results — single-seed "parity" numbers are
not trusted in this repo (see `spec/PHASE0_EXTERNAL_FINDINGS.md` and
`eval/equivalence_tost.py` for why). Adding a new ISA? See
`spec/ONBOARDING_NEW_ISA.md`.

### Model Versioning

Models are versioned sequentially (v19-v33+):
- v19-v24: BiLSTM variants
- v25: Semantic graph-based
- v26: Graph Neural Network
- v27-v31: GGNN+BiLSTM variants
- v32: Ensemble model
- v33: CNN Sherlock

Each version has corresponding training script and visualization directory.

## Performance Considerations

- **Feature extraction**: ~1-5ms per sequence
- **ML prediction**: ~0.1-1ms per sequence
- **Full scan**: ~1 file/minute with complete ML analysis
- **Memory**: ~200MB for loaded ML models
- **Dataset**: 45,942 samples (training), 5,834 GitHub files scanned

Use batch processing and multiprocessing for large-scale scans.
