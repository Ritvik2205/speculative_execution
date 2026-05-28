#!/bin/bash
# Script to package V27 training files for Google Colab transfer

set -e

PACKAGE_DIR="v27_colab_transfer"
ZIP_FILE="v27_colab_files.zip"

echo "Creating V27 Colab transfer package..."
echo ""

# Create directory structure
mkdir -p "$PACKAGE_DIR/scripts"
mkdir -p "$PACKAGE_DIR/data/features"

# Copy essential Python scripts
echo "Copying Python scripts..."
cp scripts/pdg_builder.py "$PACKAGE_DIR/scripts/"
cp scripts/ggnn_bilstm.py "$PACKAGE_DIR/scripts/"
cp scripts/train_ggnn_bilstm_v27.py "$PACKAGE_DIR/scripts/"

# Copy dataset
echo "Copying dataset..."
if [ -f "data/features/combined_v22_enhanced.jsonl" ]; then
    cp data/features/combined_v22_enhanced.jsonl "$PACKAGE_DIR/data/features/"
    echo "  Dataset copied successfully"
else
    echo "  ERROR: Dataset file not found!"
    echo "  Expected: data/features/combined_v22_enhanced.jsonl"
    exit 1
fi

# Copy requirements document
cp V27_COLAB_REQUIREMENTS.md "$PACKAGE_DIR/"

# Create zip file
echo ""
echo "Creating zip archive..."
cd "$PACKAGE_DIR"
zip -r "../$ZIP_FILE" . > /dev/null
cd ..

# Calculate sizes
echo ""
echo "Package created successfully!"
echo ""
echo "File sizes:"
du -sh "$PACKAGE_DIR"/*
echo ""
echo "Total package size:"
du -sh "$ZIP_FILE"
echo ""
echo "Files ready for Colab transfer:"
echo "  - $ZIP_FILE (upload this to Google Colab)"
echo "  - $PACKAGE_DIR/ (or upload individual files from this directory)"
echo ""
echo "Next steps:"
echo "  1. Upload $ZIP_FILE to Google Colab"
echo "  2. Extract: !unzip v27_colab_files.zip"
echo "  3. Install dependencies: !pip install torch numpy scikit-learn matplotlib tqdm"
echo "  4. Run training: !python scripts/train_ggnn_bilstm_v27.py --data data/features/combined_v22_enhanced.jsonl --epochs 50"
