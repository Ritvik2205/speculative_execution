## Supervisor Brief: Speculative-Execution Gadget Mining and Modeling Pipeline

### Executive Summary
- We mine candidate gadgets from compiled assembly, filter high-confidence positives (probe/timing), build balanced train/test windows by “group” (source basename), and train:
  - A feature-based Random Forest (RF) multiclass baseline.
  - A sequence Transformer baseline (tokens+operands+distance), optionally initialized via masked-LM pretraining and contrastive warm-up.
- We add semantic-preserving augmentations and auto-generate per-class templates (BHI/INCEPTION/L1TF/RETBLEED) across architectures/optimizations to increase diversity and prevent train–test leakage.

---

### Data Flow (high level)
- Sources → Assembly → Gadget extraction → High-confidence selection → Windows (group-balanced) → Features/tokens → Models → Group-aware metrics

---

### Key Artifacts (by directory)
- `c_vulns/c_code/`: real and generated C sources (variants per class/arch)
- `c_vulns/asm_code/`: compiled assembly (`*_clang_O{0..3}.s`)
- `c_vulns/extracted_gadgets/gadgets.jsonl`: mined gadgets (type, confidence, features)
- `data/dataset/`:
  - `gadgets_features_hiconf_relaxed.jsonl`: high-confidence multiclass features (with `group`, `confidence`)
  - `hiconf_windows.jsonl`: sequence windows with `split` labels, capped per-group
  - `mlm_corpus.txt`: token corpus for pretraining
- `models/`: RF artifacts and MLM weights

---

### What to Report (good and bad)
- Data quality and coverage
  - Number of gadgets mined; per-class counts in high-confidence set; number of distinct groups (per class, per split).
  - Cross-arch coverage (arm64 vs x86-64); distribution across O0–O3.
  - Probe/timing presence rates (filter effectiveness).
  - Train–test isolation: 0% group overlap (expected); show group counts by split.
- RF multiclass (group-aware)
  - Macro F1 (primary), per-class precision/recall/F1, confusion matrix.
  - PR AUC per class; precision@K for triage.
  - Calibration (reliability curve, Brier score).
  - Feature importances: top n-grams, distance features, barrier presence.
  - Caution: Plain accuracy can be misleading with class imbalance.
- Transformer (group-aware)
  - Macro F1 and per-class PR AUC; confusion matrix.
  - Ablations: tokens vs tokens+operands+DIST; effect of MLM/focal loss/freeze schedule.
  - Pretraining curves (MLM loss) and contrastive loss (if used).
  - Caution: Instability with small high-confidence sets; watch for single-class collapse.
- Robustness
  - Cross-optimization generalization (train O0–O2, test O3).
  - Cross-compiler (clang↔gcc) where available; cross-arch with caveats.

---

### Step-by-Step (what we do + why)

- Generate diverse sources per class
  - Script: `scripts/generate_class_templates.py`
  - Logic: Parametric C templates (per class/arch) embed probe/timing and vary NOP padding/chain depth → many independent “groups” and realistic diversity.

- Compile to assembly (arch × O-levels)
  - Command: `clang -arch {arm64,x86_64} -O{0..3} -S ...`
  - Logic: Different O-levels/architectures create distinct instruction idioms → better coverage and harder group-aware eval.

- Gadget extraction
  - Script: `scripts/run_extractor_on_cvulns.py` → `enhanced_gadget_extractor.py`
  - Logic: Sliding window + CFG/DFG candidates + signature checks; integrates DSL anti-patterns and mined n-grams; scores/labels gadgets.

- High-confidence selection
  - Script: `scripts/prepare_gadget_dataset.py --min-conf 0.35 --require-probe-or-timing`
  - Logic: Keep likely positives (probe/timing present); add `group` (basename) and `weight=confidence` for training.

- Build sequence windows (class-balanced split)
  - Script: `scripts/build_seq_from_hiconf.py --windows-per-group K --test-groups-per-class M`
  - Logic: Re-window assembly around branches; explicitly allocate a fixed number of test groups per class; cap windows per group to avoid dominance; output `split`.

- Augmentation (optional)
  - Script: `scripts/augment_asm_windows.py`
  - Logic: Register renaming, safe instruction swaps, NOP insertion, recomposition, and barrier insertion for counterfactual negatives → more diversity and hard negatives.

- Feature baseline (RF)
  - Scripts: `scripts/extract_features.py`, `scripts/train_rf_multiclass.py`
  - Logic: N-grams, mem/load/store counts, branch→load distance, barrier presence; group-aware split + sample weights; strong baseline with interpretable features.

- Pretraining
  - MLM: `scripts/mlm_pretrain.py` → `models/mlm_tiny.pt`
  - Contrastive: `scripts/contrastive_variants.py`
  - Logic: Learn instruction token embeddings from large corpora; contrastive aligns compiler/augmentation variants for invariances.

- Transformer training
  - Script: `scripts/train_sequence_grouped.py --use-focal --init-mlm ... --freeze-embed-epochs 5`
  - Logic: Tokens+operand-class+DIST bucket with group-aware training; focal loss and class weights fight imbalance; freeze–unfreeze stabilizes early updates; per-sample weighting uses confidence.

---

### Current Status (high signal)
- End-to-end mining, filtering, augmentation, template generation and both RF/Transformer training are in place.
- Group-aware RF performs well on high-confidence subset; sequence model needs more multi-class, high-confidence groups to avoid single-class test splits.
- Template generator and O-level matrix now produce many distinct groups; next requirement is enforcing per-class quotas and/or adding gcc builds to widen distributions.

---

### Immediate Next Steps
- Ensure ≥2–3 test groups per class in `build_seq_from_hiconf.py`; if a class lacks groups, generate more templates or loosen confidence for that class only.
- Add gcc builds (where available) and re-run extraction; optionally run on a Linux builder for richer x86-64 idioms.
- Re-train RF/Transformer with group-aware, per-class-balanced test splits; report macro F1, per-class PR AUC, confusion matrices, and calibration.

---

### One-line commands to re-run
- Extract: `python scripts/run_extractor_on_cvulns.py`
- High-confidence: `python scripts/prepare_gadget_dataset.py --in c_vulns/extracted_gadgets/gadgets.jsonl --out data/dataset/gadgets_features_hiconf_relaxed.jsonl --min-conf 0.35 --require-probe-or-timing`
- Windows: `python scripts/build_seq_from_hiconf.py --hiconf data/dataset/gadgets_features_hiconf_relaxed.jsonl --asm-dir c_vulns/asm_code --windows-per-group 10 --test-groups-per-class 3 --out data/dataset/hiconf_windows.jsonl`
- RF train: `python scripts/train_rf_multiclass.py --in data/dataset/gadgets_features_hiconf_relaxed.jsonl --model-dir models/gadgets_grouped_hiconf`
- MLM: `python scripts/mlm_pretrain.py --corpus data/dataset/mlm_corpus.txt`
- Transformer train: `python scripts/train_sequence_grouped.py --in data/dataset/hiconf_windows.jsonl --model transformer --epochs 20 --batch-size 64 --use-focal --init-mlm models/mlm_tiny.pt --freeze-embed-epochs 5`


--- 

### Numerical results (current)

- Mining and filtering
  - Gadgets mined (latest): 75,948 (earlier runs: 61,559 → 66,830+).
  - High-confidence (probe OR timing, conf ≥ 0.35): 5,655 (earlier: 2,357 → 4,162).
  - Windows built from high-confidence (balanced by group, capped per-group): 94–165 per build, but test often ended single-class (SPECTRE_V2) despite quotas.

- RF multiclass (group-aware)
  - On merged augmented set: accuracy ≈ 0.389, macro F1 ≈ 0.417 (another run: acc ≈ 0.364, macro F1 ≈ 0.386).
  - High-confidence-only (weighted): accuracy ≈ 0.907, macro F1 ≈ 0.864.
    - SPECTRE_V1: F1 ≈ 0.917
    - SPECTRE_V2: F1 ≈ 0.939
    - SPECTRE_V4: F1 = 1.000
    - RETBLEED: F1 ≈ 0.903
    - L1TF: F1 ≈ 0.562

- Transformer (group-aware)
  - Augmented windows: macro F1 ≈ 0.274–0.303; INCEPTION recall can be high but precision low; unstable without better labels/coverage.
  - High-confidence windows: often single-class in test (SPECTRE_V2), reporting 1.0 but not meaningful.

### What we’ve achieved

- End-to-end pipeline:
  - Mining (enhanced extractor with DSL anti-patterns, n-gram signatures), high-confidence filtering, augmentation (rename/swap/NOP/recompose + barrier counterfactuals), windowing with group-aware splitting, RF baseline, Transformer baseline, and MLM pretraining.
- Diverse sources:
  - Parametric per-class templates (BHI/INCEPTION/L1TF/RETBLEED) for arm64/x86-64; compiled across O0–O3; multiplied “groups” for leakage-free evaluation.
- Evaluation discipline:
  - Group-aware splits (by basename) for both RF and Transformer; confidence-weighted training; focal loss and freeze–unfreeze schedule in sequence model.

### Gaps and where to improve

- Class coverage in high-confidence test sets
  - Despite quotas, test often ends up single-class (V2). Need more distinct high-confidence groups per underrepresented classes (BHI/INCEPTION/L1TF/RETBLEED).
- Sequence model performance
  - Underperforms RF on mixed/augmented sets; needs richer signals (operands, labels/targets, control-flow tags), better pretraining, and truly balanced multi-class windows.
- Generalization axes still missing
  - gcc builds (and Linux x86-64 idioms) to strengthen cross-compiler eval; microarchitecture validation/oracle not integrated yet.

### Steps left to implement

- Data/coverage
  - Expand templated sources per class (both arm64 and x86-64), include probe/timing in all; add gcc builds on Linux to diversify.
  - Enforce per-class group quotas strictly in window builder (min test and train groups per class); optionally downsample overrepresented V2 groups.
  - Optionally relax confidence threshold class-wise to bootstrap underrepresented classes, while keeping probe/timing requirement.

- Modeling
  - Sequence model:
    - Tokenization upgrades: add label targets, branch type/indirection tokens; longer max_len; operand normalization.
    - Pretraining: longer MLM, tie tokenizer/vocab to classifier; wire contrastive embeddings into classifier properly; freeze embeddings for warmup.
    - Loss/weights: focal loss with tuned gamma; per-sample weighting by confidence; class-balanced sampler.
  - Graph baseline: build small GNN over CFG/DFG windows for branch→load dependencies.

- Evaluation
  - Multi-class, group-aware PR AUC and confusion matrices; calibration (Brier/reliability).
  - Cross-compiler (clang→gcc), cross-O-level (O0–O2→O3), and cross-arch checks (arm64↔x86-64, with caveats).

- Toward DSL→shortest vulnerable sequence
  - DSL→ISA lowering (control-flow, memory ops, fences, timing).
  - Oracle (static/dynamic) to validate exploitability.
  - Search/minimization (best-first/SMT/genetic) with classifier as surrogate, oracle for final check.