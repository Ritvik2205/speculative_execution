# DeepWukong-Inspired Assembly Graph Pipeline

This directory contains an independent end-to-end pipeline for speculative execution gadget analysis that mirrors the graph-based strategy described in DeepWukong.

1. Phase 1 – Data acquisition and compilation
   - Seed source code comes from `../c_vulns/c_code` or custom kernels.
   - Use `scripts/compile_to_asm.py` to build per-architecture assembly variants (x86-64 / ARM64) at multiple optimisation levels.

2. Phase 2 – Assembly Dependence Graph (ADG)
   - `scripts/build_adg.py` converts each gadget window into an Assembly Dependence Graph with instruction nodes and control/data-flow edges.

3. Phase 3 – Symbolization & Embedding
   - `scripts/embed_tokens.py` canonicalises opcodes/operands, then trains/loads a Doc2Vec model from instruction sequences to obtain node embeddings.

4. Phase 4 – Filtering & Augmentation
   - `scripts/filter_and_augment.py` selects high-confidence gadgets (probe/timing aware), applies semantic-preserving transformations to create hard negatives, and stores metadata for training.

5. Phase 5 – GNN Training
   - `scripts/train_gnn.py` performs group-aware train/test splits, loads ADGs plus Doc2Vec embeddings, and trains a configurable GNN classifier (GCN/GAT/k-GNN) with confidence-weighted losses.

Artifacts are written beneath `data/`, and checkpoints under `checkpoints/`. See script docstrings for CLI usage.

## Usage Walkthrough

1. Compile seeds to assembly:
   ```bash
   python scripts/compile_to_asm.py --sources ../c_vulns/c_code --out data/asm
   ```

2. Build windows (reuse existing SpecExec windows or craft new JSONL with sequences). Convert windows to ADGs:
   ```bash
   python scripts/build_adg.py --windows data/windows.jsonl --out data/adgs.jsonl
   ```

3. Symbolize tokens and train Doc2Vec embeddings:
   ```bash
   python scripts/embed_tokens.py --windows data/windows.jsonl --model-out data/doc2vec.model --export-token-vectors data/window_embeddings.jsonl
   ```

4. Filter and optionally augment graphs:
   ```bash
   python scripts/filter_and_augment.py --adgs data/adgs.jsonl --min-conf 0.3 --require-probe-or-timing --augment --out data/adgs_filtered.jsonl
   ```

5. Train the GNN with group-aware splits:
   ```bash
   python scripts/train_gnn.py --graphs data/adgs_filtered.jsonl --doc2vec data/doc2vec.model --epochs 30 --out checkpoints/gnn.pt
   ```
