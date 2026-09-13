# V27/V28/V29 GGNN-BiLSTM Training - Essential Files for Google Colab

## Required Files

### 1. Python Scripts
These must be in the same directory (e.g., `scripts/` folder):

**For V27 (Basic GGNN-BiLSTM):**
- **`scripts/pdg_builder.py`** - Program Dependency Graph builder
- **`scripts/ggnn_bilstm.py`** - V27 Model architecture
- **`scripts/train_ggnn_bilstm_v27.py`** - V27 Training script

**For V28 (Edge-Type Attention):**
- **`scripts/pdg_builder.py`** - Program Dependency Graph builder
- **`scripts/ggnn_bilstm_v28.py`** - V28 Model with edge-type attention
- **`scripts/train_ggnn_bilstm_v28.py`** - V28 Training script

**For V29 (Contrastive Learning + Full Features - RECOMMENDED):**
- **`scripts/pdg_builder.py`** - Program Dependency Graph builder
- **`scripts/ggnn_bilstm_v29.py`** - V29 Model with contrastive learning
- **`scripts/train_ggnn_bilstm_v29.py`** - V29 Two-stage training script

### 2. Dataset File (1 file)

- **`data/features/combined_v22_enhanced.jsonl`** - Training dataset
  - Contains ~60k samples with sequences and handcrafted features
  - Each line is a JSON object with:
    - `sequence`: List of assembly instruction strings
    - `label`: Vulnerability class (BENIGN, SPECTRE_V1, L1TF, etc.)
    - `features`: Dictionary of 193 handcrafted features

## Directory Structure for Colab

```
/content/
├── scripts/
│   ├── pdg_builder.py
│   ├── ggnn_bilstm.py
│   ├── ggnn_bilstm_v28.py
│   ├── ggnn_bilstm_v29.py
│   ├── train_ggnn_bilstm_v27.py
│   ├── train_ggnn_bilstm_v28.py
│   └── train_ggnn_bilstm_v29.py
└── data/
    └── features/
        └── combined_v22_enhanced.jsonl
```

## Python Dependencies

Install these in Colab:

```python
!pip install torch numpy scikit-learn matplotlib tqdm
```

## Usage in Colab

### V27 (Basic)
```python
!python /content/scripts/train_ggnn_bilstm_v27.py \
    --data /content/data/features/combined_v22_enhanced.jsonl \
    --epochs 50 \
    --patience 15 \
    --ggnn-hidden 64 \
    --ggnn-steps 4 \
    --lstm-hidden 128 \
    --lstm-layers 2 \
    --use-handcrafted
```

### V28 (Edge-Type Attention)
```python
!python /content/scripts/train_ggnn_bilstm_v28.py \
    --data /content/data/features/combined_v22_enhanced.jsonl \
    --epochs 50 \
    --patience 15 \
    --ggnn-hidden 64 \
    --ggnn-steps 4 \
    --attention-heads 4 \
    --lstm-hidden 128 \
    --lstm-layers 2 \
    --use-handcrafted
```

### V29 (Contrastive Learning + Full Features - RECOMMENDED)
```python
!python /content/scripts/train_ggnn_bilstm_v29.py \
    --data /content/data/features/combined_v22_enhanced.jsonl \
    --contrastive-epochs 15 \
    --epochs 35 \
    --patience 15 \
    --ggnn-hidden 64 \
    --ggnn-steps 4 \
    --attention-heads 4 \
    --lstm-hidden 128 \
    --lstm-layers 2 \
    --temperature 0.07 \
    --hard-neg-weight 2.0
```

## V29 Key Features

V29 combines the best approaches from previous versions:

1. **GGNN with Edge-Type Attention** (from V28)
   - Learns to weight data vs control dependencies differently
   
2. **All 193 Handcrafted Features** (from RF v18)
   - Same features that achieved 91.19% accuracy
   - Encoded through dedicated MLP

3. **Two-Stage Training**:
   - **Stage 1: Contrastive Pre-training** (15 epochs)
     - Uses Supervised Contrastive Loss
     - Hard negative mining for confused pairs:
       - L1TF ↔ SPECTRE_V1
       - RETBLEED ↔ INCEPTION
       - SPECTRE_V1 ↔ SPECTRE_V4
       - INCEPTION ↔ BHI
   - **Stage 2: Classification Fine-tuning** (35 epochs)
     - Standard cross-entropy loss
     - Early stopping with patience

4. **Projection Head** for contrastive learning
   - Separate from classifier
   - Produces L2-normalized embeddings

## File Sizes (Approximate)

- `pdg_builder.py`: ~25 KB
- `ggnn_bilstm.py`: ~20 KB  
- `ggnn_bilstm_v28.py`: ~22 KB
- `ggnn_bilstm_v29.py`: ~25 KB
- `train_ggnn_bilstm_v27.py`: ~30 KB
- `train_ggnn_bilstm_v28.py`: ~35 KB
- `train_ggnn_bilstm_v29.py`: ~35 KB
- `combined_v22_enhanced.jsonl`: ~500-1000 MB (check actual size)

## Notes

1. **No other dependencies**: All imports are either:
   - Standard library (json, sys, pathlib, etc.)
   - External packages (torch, numpy, sklearn, matplotlib, tqdm)
   - Local modules (pdg_builder, ggnn_bilstm variants)

2. **Model outputs will be saved to**:
   - `models/ggnn_bilstm_v27/` - V27 checkpoints and metrics
   - `models/ggnn_bilstm_v28/` - V28 checkpoints and metrics
   - `models/ggnn_bilstm_v29/` - V29 checkpoints and metrics
   - `viz_v27_ggnn_bilstm/` - V27 visualizations
   - `viz_v28_ggnn_bilstm/` - V28 visualizations
   - `viz_v29_ggnn_bilstm/` - V29 visualizations

3. **GPU recommended**: The GGNN message passing is computationally intensive. Use GPU runtime in Colab for faster training.

4. **Memory requirements**: 
   - Dataset: ~1GB RAM
   - Model: ~300-500MB GPU memory
   - Total: ~3-4GB recommended

## Quick Transfer Script

Create a zip file for easy transfer:

```bash
# In your local SpecExec directory
mkdir -p v29_colab_transfer/scripts
mkdir -p v29_colab_transfer/data/features

# Copy model files
cp scripts/pdg_builder.py v29_colab_transfer/scripts/
cp scripts/ggnn_bilstm.py v29_colab_transfer/scripts/
cp scripts/ggnn_bilstm_v28.py v29_colab_transfer/scripts/
cp scripts/ggnn_bilstm_v29.py v29_colab_transfer/scripts/
cp scripts/train_ggnn_bilstm_v27.py v29_colab_transfer/scripts/
cp scripts/train_ggnn_bilstm_v28.py v29_colab_transfer/scripts/
cp scripts/train_ggnn_bilstm_v29.py v29_colab_transfer/scripts/

# Copy dataset
cp data/features/combined_v22_enhanced.jsonl v29_colab_transfer/data/features/

# Create zip
cd v29_colab_transfer
zip -r v29_colab_files.zip scripts/ data/
```

Then upload `v29_colab_files.zip` to Colab and extract.

## Model Comparison

| Model | Key Features | Expected Accuracy |
|-------|--------------|-------------------|
| V27 | Basic GGNN-BiLSTM | ~86.4% |
| V28 | + Edge-type attention | ~86.5% |
| V29 | + Two-stage contrastive | 86.2% |
| **V30** | + Joint contrastive + CE loss | target: ~87% |
| **V31** | + Frozen encoder after contrastive | target: ~87% |
| RF v18 | Pure handcrafted features | 91.2% (baseline) |

## V30 & V31 Usage

### V30: Joint Contrastive + Classification Training
```python
!python /content/scripts/train_ggnn_bilstm_v30.py \
    --data /content/data/features/combined_v22_enhanced.jsonl \
    --epochs 50 \
    --patience 15 \
    --lambda-con 0.3 \
    --lambda-warmup 5 \
    --ggnn-hidden 64 \
    --attention-heads 4
```

### V31: Frozen Encoder after Contrastive
```python
!python /content/scripts/train_ggnn_bilstm_v31.py \
    --data /content/data/features/combined_v22_enhanced.jsonl \
    --contrastive-epochs 20 \
    --classification-epochs 50 \
    --patience 15 \
    --ggnn-hidden 64 \
    --attention-heads 4
```
