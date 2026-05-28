# V27 GGNN-BiLSTM Training - Essential Files for Google Colab

## Required Files

### 1. Python Scripts (3 files)
These must be in the same directory (e.g., `scripts/` folder):

- **`scripts/pdg_builder.py`** - Program Dependency Graph builder
  - Creates PDG with data and control dependencies
  - Extracts node features (opcode categories, operand metadata, speculative flags)
  
- **`scripts/ggnn_bilstm.py`** - Model architecture
  - GGNN layer with GRU-based message passing
  - BiLSTM encoder
  - Hybrid GGNN-BiLSTM model
  
- **`scripts/train_ggnn_bilstm_v27.py`** - Training script
  - Main training loop
  - Data loading and preprocessing
  - Model training and evaluation

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
│   └── train_ggnn_bilstm_v27.py
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

```python
# Set working directory
import sys
sys.path.insert(0, '/content/scripts')

# Run training
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

## File Sizes (Approximate)

- `pdg_builder.py`: ~25 KB
- `ggnn_bilstm.py`: ~20 KB  
- `train_ggnn_bilstm_v27.py`: ~30 KB
- `combined_v22_enhanced.jsonl`: ~500-1000 MB (check actual size)

## Notes

1. **No other dependencies**: All imports are either:
   - Standard library (json, sys, pathlib, etc.)
   - External packages (torch, numpy, sklearn, matplotlib, tqdm)
   - Local modules (pdg_builder, ggnn_bilstm)

2. **Model outputs will be saved to**:
   - `models/ggnn_bilstm_v27/` - Model checkpoints and metrics
   - `viz_v27_ggnn_bilstm/` - Confusion matrices and training plots

3. **GPU recommended**: The GGNN message passing is computationally intensive. Use GPU runtime in Colab for faster training.

4. **Memory requirements**: 
   - Dataset: ~1GB RAM
   - Model: ~300MB GPU memory
   - Total: ~2-3GB recommended

## Quick Transfer Script

If you want to create a zip file for easy transfer:

```bash
# In your local SpecExec directory
mkdir -p v27_colab_transfer/scripts
mkdir -p v27_colab_transfer/data/features

cp scripts/pdg_builder.py v27_colab_transfer/scripts/
cp scripts/ggnn_bilstm.py v27_colab_transfer/scripts/
cp scripts/train_ggnn_bilstm_v27.py v27_colab_transfer/scripts/
cp data/features/combined_v22_enhanced.jsonl v27_colab_transfer/data/features/

cd v27_colab_transfer
zip -r v27_colab_files.zip scripts/ data/
```

Then upload `v27_colab_files.zip` to Colab and extract.
