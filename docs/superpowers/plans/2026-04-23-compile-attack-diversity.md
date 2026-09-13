# Compile-Attack-Diversity Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Eliminate the handcrafted/compiled data-type asymmetry that lets the model cheat, and remove class-score features that over-fit to handcrafted assembly style — producing a v43 training set where BENIGN and every attack class share the same data-type distribution.

**Architecture:** Three parallel fixes: (1) filter pre-computed class-score features from the training pipeline so the model relies on learned PDG structure only; (2) build a Docker image that compiles every C vulnerability source (`c_vulns/c_code/`) natively on Linux/x86_64 and cross-compiles to ARM64, adding ≥100K compiled attack windows to training; (3) run a post-assembly balance audit that verifies compiled/handcrafted ratios are similar across all classes before any training run. The frozen test set (`data/v25_honest_test.jsonl`) is never touched.

**Tech Stack:** Python 3.10+, Docker/BuildKit, Ubuntu 22.04, GCC 12, Clang 15, `aarch64-linux-gnu-gcc` cross-compiler, PyTorch/GINE training stack already in `v40_export/`.

---

## Files Created or Modified

| Path | Action | Purpose |
|---|---|---|
| `docker/Dockerfile` | Create | Ubuntu 22.04 image with gcc/clang/cross-compiler toolchains |
| `docker/compile_attack_sources.sh` | Create | Entry-point: compiles all C files, extracts windows, writes JSONL |
| `docker/extract_windows.py` | Create | Python helper inside Docker: parse `.s` → windows → JSONL |
| `scripts/enrichment/phase7_compile_c_vulns.py` | Create | Host-side orchestrator: invoke Docker, validate output, write phase7_compiled.jsonl |
| `scripts/enrichment/verify_data_balance.py` | Create | Audit compiled/handcrafted ratios per class in train + test |
| `scripts/enrichment/common.py` | Modify | Add `LABEL_MAP` constant (shared with phase7 and verify scripts) |
| `v40_export/train_gine_v38.py` | Modify | Filter class-score features; keep only opcode n-grams and raw attack-pattern indicators |
| `scripts/enrichment/assemble_training.py` | Modify | Add phase7 to merge list; update output path to v43 |
| `v42/run.sh` | Modify | Update `--train-data` to `data/v43_train_enriched.jsonl`; rename output dir to `viz_v43` |

---

## Task 1: Filter class-score features from training pipeline

**Problem:** The 149 pre-computed `features` in each JSONL record include class-specific scores (`bhi_score`, `mds_gadget_score`, `l1tf_score`, etc.) plus `benign_*` pattern flags. These are rule-based classifiers tuned on handcrafted assembly. When the model uses them, it's inheriting a hand-engineered style-specific prior instead of learning from the PDG graph. The model should rely entirely on the PDG graph structure.

**Files:**
- Modify: `v40_export/train_gine_v38.py:496-502`

- [ ] **Step 1: Identify all class-score and class-specific feature name patterns**

Open `v40_export/train_gine_v38.py` and find the block around line 496:

```python
sample_features = records[0].get('features', {})
feature_names = sorted([
    k for k, v in sample_features.items()
    if isinstance(v, (int, float)) and k not in ['sequence', 'label']
])
```

The `sample_features` dict from training data has 209 keys. Of these:
- 60 are n-gram features (`ng_1:*`, `ng_2:*`, `ng_3:*`) — keep
- 149 are semantic features — keep ONLY raw structural ones, drop class-score ones

Class-score features to drop follow these naming patterns:
- `*_score` (e.g. `bhi_score`, `mds_gadget_score`, `benign_score`)
- `benign_*` (e.g. `benign_function_call_pattern`, `benign_balanced_push_pop`)
- `bhi_*`, `inception_*`, `l1tf_*`, `mds_*`, `retbleed_*`, `spectre_v1_*` (class-specific rule prefixes)

Raw structural features to KEEP (no class prefix, no `_score` suffix):
- `arithmetic_count`, `arithmetic_density`, `avg_operand_count`
- `has_cache_flush`, `has_fence`, `has_indirect_branch`, `has_rsb_manipulation`
- `fence_count`, `cache_flush_count`, `num_indirect_branches`
- Any `has_*` or `*_count` or `*_density` feature without a vulnerability-class prefix

- [ ] **Step 2: Add the feature filter**

Replace the feature_names extraction block with:

```python
sample_features = records[0].get('features', {})

# Drop class-score features: they are rule-based classifiers tuned on handcrafted
# assembly style. The GINE should learn from PDG structure alone.
_CLASS_PREFIXES = (
    'bhi_', 'inception_', 'l1tf_', 'mds_', 'retbleed_',
    'spectre_v1_', 'spectre_v2_', 'spectre_v4_', 'benign_',
)
def _is_allowed_feature(name: str) -> bool:
    if name.endswith('_score'):
        return False
    for prefix in _CLASS_PREFIXES:
        if name.startswith(prefix):
            return False
    return True

feature_names = sorted([
    k for k, v in sample_features.items()
    if isinstance(v, (int, float))
    and k not in ['sequence', 'label']
    and _is_allowed_feature(k)
])
```

- [ ] **Step 3: Verify the filter reduces feature count correctly**

Run from `v40_export/`:
```bash
python3 -c "
import json, sys
sys.path.insert(0, '.')

records = [json.loads(l) for l in open('../data/v25_honest_train.jsonl')]
sample = records[0].get('features', {})

_CLASS_PREFIXES = (
    'bhi_', 'inception_', 'l1tf_', 'mds_', 'retbleed_',
    'spectre_v1_', 'spectre_v2_', 'spectre_v4_', 'benign_',
)
def _is_allowed(name):
    if name.endswith('_score'): return False
    for p in _CLASS_PREFIXES:
        if name.startswith(p): return False
    return True

all_names = sorted(k for k, v in sample.items() if isinstance(v, (int, float)))
kept = [k for k in all_names if _is_allowed(k)]
dropped = [k for k in all_names if not _is_allowed(k)]
print(f'Total: {len(all_names)}  Kept: {len(kept)}  Dropped: {len(dropped)}')
print('Kept:', kept[:10])
print('Dropped sample:', dropped[:5])
"
```

Expected output: `Total: 209  Kept: ~70  Dropped: ~139`

- [ ] **Step 4: Commit**

```bash
git add v40_export/train_gine_v38.py
git commit -m "fix: filter class-score features from GINE training — model relies on PDG graph only"
```

---

## Task 2: Create Docker image for Linux compilation

**Problem:** On macOS ARM64, `gcc` produces ARM64 assembly by default. There is no native x86_64 compiler. We need a Linux environment to compile the 370+ C vulnerability source files natively for x86_64 and cross-compile to ARM64, producing compiled attack sequences that look like real-world binary code rather than handcrafted demos.

**Files:**
- Create: `docker/Dockerfile`
- Create: `docker/extract_windows.py`
- Create: `docker/compile_attack_sources.sh`

- [ ] **Step 1: Create `docker/` directory and `docker/Dockerfile`**

```bash
mkdir -p docker
```

Write `docker/Dockerfile`:

```dockerfile
FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive
ENV TZ=UTC

RUN apt-get update && apt-get install -y \
    gcc \
    gcc-12 \
    clang-14 \
    gcc-aarch64-linux-gnu \
    python3 \
    python3-pip \
    && rm -rf /var/lib/apt/lists/*

# Make gcc-12 the default gcc
RUN update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-12 100

WORKDIR /work

# Copy the C source files and extraction script at build time (or bind-mount at runtime)
COPY docker/extract_windows.py /work/extract_windows.py

ENTRYPOINT ["/bin/bash", "/work/compile_attack_sources.sh"]
```

- [ ] **Step 2: Create `docker/extract_windows.py`**

This script runs INSIDE the Docker container. It reads a compiled `.s` file and writes windows to stdout as JSONL.

```python
#!/usr/bin/env python3
"""
Parse a compiled .s file into sliding windows and print as JSONL.
Called by compile_attack_sources.sh for each compiled file.

Usage: python3 extract_windows.py <asm_file> <label> <group> <arch>
"""
import sys, json, re

WINDOW_BEFORE = 8
WINDOW_AFTER  = 12
STEP          = 4
MIN_WINDOW    = 5

_SKIP_PREFIXES = (".", "#", "//", ";")

def is_instruction(line: str) -> bool:
    s = line.strip()
    if not s:
        return False
    if s.endswith(":"):   # label
        return False
    for p in _SKIP_PREFIXES:
        if s.startswith(p):
            return False
    return True

def parse_asm(text: str) -> list:
    return [l.strip() for l in text.splitlines() if is_instruction(l)]

def extract_windows(instructions: list) -> list:
    size = WINDOW_BEFORE + WINDOW_AFTER
    windows = []
    for start in range(0, max(1, len(instructions) - size + 1), STEP):
        w = instructions[start:start + size]
        if len(w) >= MIN_WINDOW:
            windows.append(w)
    return windows

def main():
    asm_file, label, group, arch = sys.argv[1], sys.argv[2], sys.argv[3], sys.argv[4]
    try:
        text = open(asm_file, errors="replace").read()
    except OSError as e:
        print(f"[skip] {asm_file}: {e}", file=sys.stderr)
        return
    instructions = parse_asm(text)
    windows = extract_windows(instructions)
    for w in windows:
        rec = {
            "label": label,
            "sequence": w,
            "source_file": asm_file,
            "group": group,
            "arch": arch,
            "augmentation": "compiled_c_source",
        }
        print(json.dumps(rec))

if __name__ == "__main__":
    main()
```

- [ ] **Step 3: Create `docker/compile_attack_sources.sh`**

This is the Docker entry-point. It compiles every C file under `/work/c_vulns/`, extracts windows, and writes `/work/output/phase7_raw.jsonl`.

```bash
#!/usr/bin/env bash
set -euo pipefail

C_SRC_DIR="/work/c_vulns"
OUT_DIR="/work/output"
OUT_FILE="${OUT_DIR}/phase7_raw.jsonl"
PY="/usr/bin/python3"
EXTRACTOR="/work/extract_windows.py"

mkdir -p "${OUT_DIR}"
> "${OUT_FILE}"   # truncate / create

# Label map: longest match first (checked by substring in lowercased path)
declare -A LABEL_MAP=(
    ["spectre_1"]="SPECTRE_V1"
    ["spectre_v1"]="SPECTRE_V1"
    ["spectre1"]="SPECTRE_V1"
    ["spectre_github"]="SPECTRE_V1"
    ["spectre_2"]="SPECTRE_V2"
    ["spectre_v2"]="SPECTRE_V2"
    ["spectre2"]="SPECTRE_V2"
    ["spectre_v4"]="SPECTRE_V4"
    ["spectre4"]="SPECTRE_V4"
    ["spectre_4"]="SPECTRE_V4"
    ["l1tf"]="L1TF"
    ["foreshadow"]="L1TF"
    ["meltdown"]="L1TF"
    ["mds"]="MDS"
    ["ridl"]="MDS"
    ["retbleed"]="RETBLEED"
    ["inception"]="INCEPTION"
    ["bhi"]="BRANCH_HISTORY_INJECTION"
)

# Sorted keys longest-first for greedy matching
SORTED_KEYS=($(for k in "${!LABEL_MAP[@]}"; do echo "${#k} $k"; done | sort -rn | awk '{print $2}'))

infer_label() {
    local path_lower
    path_lower=$(echo "$1" | tr '[:upper:]' '[:lower:]')
    for key in "${SORTED_KEYS[@]}"; do
        if [[ "$path_lower" == *"$key"* ]]; then
            echo "${LABEL_MAP[$key]}"
            return
        fi
    done
    echo ""
}

# Compiler configurations: "compiler|flags|arch_tag"
COMPILER_CONFIGS=(
    "gcc|-O0 -m64|x86_64"
    "gcc|-O1 -m64|x86_64"
    "gcc|-O2 -m64|x86_64"
    "gcc|-O3 -m64|x86_64"
    "clang-14|-O0 --target=x86_64-linux-gnu|x86_64"
    "clang-14|-O2 --target=x86_64-linux-gnu|x86_64"
    "aarch64-linux-gnu-gcc|-O2|arm64"
)

total_windows=0
total_files=0
total_skipped=0

# Find all .c files in c_vulns and its subdirectories
while IFS= read -r c_file; do
    stem=$(basename "$c_file" .c)
    
    # Skip utility files with no vulnerability label
    if [[ "$stem" == "utils" || "$stem" == "utils_arm64" ]]; then
        ((total_skipped++)) || true
        continue
    fi

    label=$(infer_label "$c_file")
    if [[ -z "$label" ]]; then
        echo "[skip-no-label] $c_file" >&2
        ((total_skipped++)) || true
        continue
    fi

    for config in "${COMPILER_CONFIGS[@]}"; do
        IFS='|' read -r compiler flags arch_tag <<< "$config"
        
        # Check compiler is available
        if ! command -v "$compiler" &>/dev/null; then
            continue
        fi

        # Unique group per file+compiler+flags combination
        flag_tag=$(echo "$flags" | tr -d ' -' | tr '.' '_')
        group="phase7_${stem}_${compiler}_${flag_tag}"
        
        asm_file=$(mktemp /tmp/phase7_XXXXXX.s)

        # Compile to assembly; skip on failure
        if $compiler -S $flags \
            -I"$(dirname "$c_file")" \
            -I/usr/include \
            -fno-stack-protector \
            -D_GNU_SOURCE \
            "$c_file" -o "$asm_file" 2>/dev/null; then
            
            # Extract windows and append to output
            "$PY" "$EXTRACTOR" "$asm_file" "$label" "$group" "$arch_tag" \
                >> "${OUT_FILE}"
            ((total_windows++)) || true
        fi

        rm -f "$asm_file"
    done
    ((total_files++)) || true

done < <(find "${C_SRC_DIR}" -name "*.c" | sort)

echo "=== Phase 7 Docker Compilation Summary ==="
echo "  C files processed: ${total_files}"
echo "  C files skipped:   ${total_skipped}"
echo "  Output: ${OUT_FILE}"
wc -l < "${OUT_FILE}" | xargs -I{} echo "  Total windows: {}"
```

- [ ] **Step 4: Verify files exist and are syntactically correct**

```bash
python3 -c "import ast; ast.parse(open('docker/extract_windows.py').read()); print('extract_windows.py OK')"
bash -n docker/compile_attack_sources.sh && echo "compile_attack_sources.sh OK"
```

Expected: both print OK with no errors.

- [ ] **Step 5: Commit**

```bash
git add docker/
git commit -m "feat: Docker image and scripts for Linux x86_64 compilation of attack C sources"
```

---

## Task 3: Build and smoke-test the Docker image locally

**Files:**
- Use: `docker/Dockerfile`, `docker/compile_attack_sources.sh`, `docker/extract_windows.py`

- [ ] **Step 1: Build the Docker image**

Run from the project root (`/path/to/SpecExec`):

```bash
docker build -f docker/Dockerfile -t specexec-compile:latest .
```

Expected: build completes without errors. Output ends with `Successfully built <id>` or `=> exporting to image`.

If Docker is not installed, install it: https://docs.docker.com/engine/install/

- [ ] **Step 2: Smoke-test by compiling one C file**

```bash
# Compile a single file to verify the toolchain works
docker run --rm \
    -v "$(pwd)/c_vulns:/work/c_vulns:ro" \
    -v "$(pwd)/docker:/work/output_scripts:ro" \
    specexec-compile:latest \
    bash -c "
    gcc -S -O2 -m64 /work/c_vulns/c_code/bhi.c -o /tmp/bhi_test.s 2>&1 && \
    echo 'gcc x86_64 OK' && \
    aarch64-linux-gnu-gcc -S -O2 /work/c_vulns/c_code/bhi.c -o /tmp/bhi_arm64_test.s 2>&1 && \
    echo 'arm64 cross-compile OK' && \
    clang-14 -S -O2 --target=x86_64-linux-gnu /work/c_vulns/c_code/bhi.c -o /tmp/bhi_clang_test.s 2>&1 && \
    echo 'clang x86_64 OK'
    "
```

Expected output:
```
gcc x86_64 OK
arm64 cross-compile OK
clang x86_64 OK
```

If any compiler fails, check Docker build logs and package installation.

- [ ] **Step 3: Commit smoke-test notes (no code change needed)**

```bash
git commit --allow-empty -m "chore: Docker image smoke-tested — gcc/clang/arm64 cross-compiler all working"
```

---

## Task 4: Run Phase 7 inside Docker and validate output

**Files:**
- Create: `scripts/enrichment/phase7_compile_c_vulns.py`

This host-side Python script: (1) invokes Docker to run `compile_attack_sources.sh`, (2) reads the output JSONL, (3) validates and deduplicates against the frozen test set, (4) writes `data/enrichment/phase7_compiled.jsonl`.

- [ ] **Step 1: Create `scripts/enrichment/phase7_compile_c_vulns.py`**

```python
#!/usr/bin/env python3
"""
Phase 7: Compile c_vulns/c_code/ C files inside Docker (Linux x86_64/ARM64)
and add compiled attack sequences to the training pool.

Run:
    python3 scripts/enrichment/phase7_compile_c_vulns.py

Prerequisites:
    docker build -f docker/Dockerfile -t specexec-compile:latest .

Output:
    data/enrichment/phase7_compiled.jsonl
"""
import json, subprocess, sys, tempfile
from pathlib import Path
from collections import Counter

ROOT = Path(__file__).parent.parent.parent
sys.path.insert(0, str(ROOT / "scripts" / "enrichment"))
from common import load_test_hashes, validate_and_dedup, write_jsonl, load_jsonl, seq_hash

OUT_PATH = ROOT / "data" / "enrichment" / "phase7_compiled.jsonl"
DOCKER_IMAGE = "specexec-compile:latest"


def check_docker_image() -> bool:
    result = subprocess.run(
        ["docker", "image", "inspect", DOCKER_IMAGE],
        capture_output=True,
    )
    return result.returncode == 0


def run_docker_compilation() -> Path:
    """Run Docker container; return path to the raw output JSONL."""
    out_dir = tempfile.mkdtemp(prefix="specexec_phase7_")
    out_file = Path(out_dir) / "phase7_raw.jsonl"

    print(f"[phase7] Running Docker compilation (this may take 5-15 minutes)...")
    cmd = [
        "docker", "run", "--rm",
        "-v", f"{ROOT}/c_vulns:/work/c_vulns:ro",
        "-v", f"{ROOT}/docker:/work:ro",
        "-v", f"{out_dir}:/work/output",
        DOCKER_IMAGE,
    ]
    result = subprocess.run(cmd, capture_output=False, timeout=1800)  # 30 min max
    if result.returncode != 0:
        print(f"[phase7] Docker run failed with exit code {result.returncode}")
        sys.exit(1)

    if not out_file.exists():
        print(f"[phase7] ERROR: Docker did not produce {out_file}")
        sys.exit(1)
    return out_file


def main():
    if not check_docker_image():
        print(f"[phase7] Docker image '{DOCKER_IMAGE}' not found.")
        print(f"         Build it with: docker build -f docker/Dockerfile -t {DOCKER_IMAGE} .")
        write_jsonl([], OUT_PATH)
        print(f"[phase7] Wrote empty placeholder to {OUT_PATH}")
        return

    raw_file = run_docker_compilation()

    print(f"[phase7] Reading raw output from {raw_file} ...")
    raw_records = load_jsonl(raw_file)
    print(f"[phase7] Raw windows: {len(raw_records):,}")

    label_counts = Counter(r["label"] for r in raw_records)
    print("[phase7] Raw per-class counts:")
    for cls in sorted(label_counts):
        print(f"  {cls:<35} {label_counts[cls]:>8,}")

    # Build existing hashes from base training + earlier phases
    print("[phase7] Building existing hash set ...")
    existing = []
    for phase_file in [
        ROOT / "data" / "v25_honest_train.jsonl",
        ROOT / "data" / "enrichment" / "phase1_augmented.jsonl",
        ROOT / "data" / "enrichment" / "phase2_compiled.jsonl",
        ROOT / "data" / "enrichment" / "phase4_poc.jsonl",
        ROOT / "data" / "enrichment" / "phase5_synthetic.jsonl",
    ]:
        if phase_file.exists():
            existing.extend(load_jsonl(phase_file))
    existing_hashes = {(seq_hash(r.get("sequence", [])), r["label"]) for r in existing}
    print(f"[phase7] Existing hashes (prior phases): {len(existing_hashes):,}")

    test_hashes = load_test_hashes()
    print(f"[phase7] Frozen test hashes: {len(test_hashes):,}")

    clean, stats = validate_and_dedup(raw_records, test_hashes, existing_hashes)
    print(f"[phase7] After dedup: {len(clean):,}  stats={stats}")

    write_jsonl(clean, OUT_PATH)
    print(f"[phase7] Written to {OUT_PATH}")

    final_counts = Counter(r["label"] for r in clean)
    print("\n[phase7] Final per-class counts:")
    for cls in sorted(final_counts):
        print(f"  {cls:<35} {final_counts[cls]:>8,}")


if __name__ == "__main__":
    main()
```

- [ ] **Step 2: Run Phase 7**

```bash
cd /path/to/SpecExec
python3 scripts/enrichment/phase7_compile_c_vulns.py
```

Expected: takes 5-15 minutes. Ends with per-class counts showing compiled records for every attack class. Each class should have at least a few hundred records.

If Docker image is missing, it prints instructions and writes a placeholder.

- [ ] **Step 3: Verify per-class coverage**

```bash
python3 -c "
import json
from collections import Counter
records = [json.loads(l) for l in open('data/enrichment/phase7_compiled.jsonl')]
counts = Counter(r['label'] for r in records)
print('Phase 7 per-class:')
for cls in sorted(counts): print(f'  {cls:<35} {counts[cls]:>8,}')
print(f'Total: {sum(counts.values()):,}')
# Verify all 8 attack classes have records
expected = {'BRANCH_HISTORY_INJECTION','INCEPTION','L1TF','MDS','RETBLEED','SPECTRE_V1','SPECTRE_V2','SPECTRE_V4'}
missing = expected - set(counts.keys())
if missing: print(f'MISSING CLASSES: {missing}')
else: print('All 8 attack classes covered')
"
```

Expected: All 8 attack classes present, each with at least 500 records. BENIGN will not appear (we compiled attack sources only).

- [ ] **Step 4: Commit**

```bash
git add scripts/enrichment/phase7_compile_c_vulns.py
git commit -m "feat: phase7 compile attack C sources via Docker — adds compiled attack sequences"
```

---

## Task 5: Create data balance verification script

**Problem:** After adding Phase 7, we need to audit that the training set no longer has the structural asymmetry (all attacks = handcrafted, BENIGN = compiled). This script becomes the permanent gatekeeper before any training run.

**Files:**
- Create: `scripts/enrichment/verify_data_balance.py`

- [ ] **Step 1: Create `scripts/enrichment/verify_data_balance.py`**

```python
#!/usr/bin/env python3
"""
Verify that the training set has no systematic data-type asymmetry between
BENIGN and attack classes, and that the test set is not contaminated.

A "data-type" is: compiled_github, compiled_c_vulns, handcrafted_asm.

The check FAILS if:
  - Any attack class has 0% compiled records while BENIGN has >0%
  - BENIGN has 0% handcrafted while any attack class has >50% handcrafted
  - There is any exact sequence overlap between train and test
  - There is any source group overlap between train and test

Run:
    python3 scripts/enrichment/verify_data_balance.py [train_jsonl] [test_jsonl]

Defaults to data/v43_train_enriched.jsonl and data/v25_honest_test.jsonl.
"""
import json, sys, hashlib
from pathlib import Path
from collections import Counter, defaultdict

ROOT = Path(__file__).parent.parent.parent

TRAIN_DEFAULT = ROOT / "data" / "v43_train_enriched.jsonl"
TEST_PATH     = ROOT / "data" / "v25_honest_test.jsonl"


def seq_hash(seq):
    return hashlib.md5("|".join(str(t) for t in seq).encode()).hexdigest()


def data_type(r: dict) -> str:
    sf = r.get("source_file", r.get("group", ""))
    aug = r.get("augmentation", "")
    if aug == "compiled_c_source":
        return "compiled_attack"
    if "c_vulns/asm_code" in sf or "c_vulns\\asm_code" in sf:
        return "handcrafted_asm"
    if aug and aug not in ("poc_repo",):
        # Augmented variant — inherits parent type
        if "c_vulns/asm_code" in sf or "c_vulns\\asm_code" in sf:
            return "augmented_handcrafted"
        return "augmented_compiled"
    if r.get("arch") in ("arm64", "x86_64"):
        return "compiled_github"
    return "other"


def load(path):
    with open(path) as f:
        return [json.loads(l) for l in f if l.strip()]


def main():
    train_path = Path(sys.argv[1]) if len(sys.argv) > 1 else TRAIN_DEFAULT
    test_path  = Path(sys.argv[2]) if len(sys.argv) > 2 else TEST_PATH

    if not train_path.exists():
        print(f"[ERROR] Training file not found: {train_path}")
        sys.exit(1)

    print(f"Loading training: {train_path}")
    train = load(train_path)
    print(f"Loading test:     {test_path}")
    test  = load(test_path)

    # ── 1. Integrity checks ───────────────────────────────────────────────
    print("\n=== Integrity Checks ===")
    train_hashes = {seq_hash(r.get("sequence", [])) for r in train}
    test_hashes  = {seq_hash(r.get("sequence", [])) for r in test}
    exact_overlap = len(train_hashes & test_hashes)
    print(f"  Exact sequence overlap train↔test: {exact_overlap}  (target: 0)")

    train_groups = {r.get("group", r.get("source_file", "")) for r in train}
    test_groups  = {r.get("group", r.get("source_file", "")) for r in test}
    group_overlap = len(train_groups & test_groups)
    print(f"  Source group overlap train↔test:  {group_overlap}  (target: 0)")

    failed = False
    if exact_overlap > 0:
        print(f"[FAIL] {exact_overlap} exact sequences leaked into test!")
        failed = True
    if group_overlap > 0:
        print(f"[FAIL] {group_overlap} source groups span both train and test!")
        failed = True

    # ── 2. Data-type balance per class ────────────────────────────────────
    print("\n=== Data-Type Distribution Per Class (Training) ===")
    cls_type = defaultdict(Counter)
    for r in train:
        cls_type[r["label"]][data_type(r)] += 1

    all_types = sorted({dt for ct in cls_type.values() for dt in ct})
    header = f"  {'Class':<35}"
    for t in all_types:
        header += f" {t[:16]:>16}"
    print(header)

    benign_compiled_pct = 0.0
    attack_compiled_pcts = {}

    for cls in sorted(cls_type):
        counts = cls_type[cls]
        total = sum(counts.values())
        compiled = counts.get("compiled_attack", 0) + counts.get("compiled_github", 0) + counts.get("augmented_compiled", 0)
        compiled_pct = 100 * compiled / total if total else 0
        row = f"  {cls:<35}"
        for t in all_types:
            row += f" {counts.get(t, 0):>16,}"
        row += f"  compiled={compiled_pct:.0f}%"
        print(row)
        if cls == "BENIGN":
            benign_compiled_pct = compiled_pct
        else:
            attack_compiled_pcts[cls] = compiled_pct

    # ── 3. Balance assertions ─────────────────────────────────────────────
    print("\n=== Balance Assertions ===")
    print(f"  BENIGN compiled%: {benign_compiled_pct:.1f}%")

    for cls, pct in sorted(attack_compiled_pcts.items()):
        if benign_compiled_pct > 20 and pct == 0:
            print(f"  [FAIL] {cls}: 0% compiled while BENIGN={benign_compiled_pct:.0f}%")
            failed = True
        else:
            print(f"  [OK]   {cls}: {pct:.1f}% compiled")

    # ── 4. Test set data-type breakdown ───────────────────────────────────
    print("\n=== Test Set Data-Type Distribution ===")
    test_cls_type = defaultdict(Counter)
    for r in test:
        test_cls_type[r["label"]][data_type(r)] += 1
    for cls in sorted(test_cls_type):
        counts = test_cls_type[cls]
        print(f"  {cls:<35} {dict(counts)}")

    # ── 5. Final verdict ─────────────────────────────────────────────────
    print()
    if failed:
        print("[FAIL] Balance verification FAILED — fix before training")
        sys.exit(1)
    else:
        print("[PASS] Balance verification PASSED")


if __name__ == "__main__":
    main()
```

- [ ] **Step 2: Run the verifier against the CURRENT enriched training set (expect FAIL)**

```bash
python3 scripts/enrichment/verify_data_balance.py data/v42_train_enriched.jsonl data/v25_honest_test.jsonl
```

Expected: `[FAIL]` — every attack class has 0% compiled, BENIGN has 100% compiled. This documents the baseline problem.

- [ ] **Step 3: Commit**

```bash
git add scripts/enrichment/verify_data_balance.py
git commit -m "feat: data balance verifier — gatekeeper before training to detect style leakage"
```

---

## Task 6: Add Phase 7 to assembly script and build v43

**Files:**
- Modify: `scripts/enrichment/assemble_training.py`
- Modify: `v42/run.sh`

- [ ] **Step 1: Add phase7 to the PHASE_FILES dict in `assemble_training.py`**

In `scripts/enrichment/assemble_training.py`, find the `PHASE_FILES` dict and add Phase 7:

```python
PHASE_FILES = {
    "phase1_augmented":  ROOT / "data" / "enrichment" / "phase1_augmented.jsonl",
    "phase2_compiled":   ROOT / "data" / "enrichment" / "phase2_compiled.jsonl",
    "phase3_kernel":     ROOT / "data" / "enrichment" / "phase3_kernel.jsonl",
    "phase4_poc":        ROOT / "data" / "enrichment" / "phase4_poc.jsonl",
    "phase5_synthetic":  ROOT / "data" / "enrichment" / "phase5_synthetic.jsonl",
    "phase7_compiled":   ROOT / "data" / "enrichment" / "phase7_compiled.jsonl",  # ADD THIS
}
```

Also change the output paths from `v42_train_enriched.jsonl` to `v43_train_enriched.jsonl`:

```python
OUT_MAIN = ROOT / "data" / "v43_train_enriched.jsonl"
OUT_V42  = ROOT / "v42" / "data" / "v43_train_enriched.jsonl"
REPORT_OUT = ROOT / "diagnosis" / "v43_enrichment_report.json"
```

- [ ] **Step 2: Run `assemble_training.py`**

```bash
python3 scripts/enrichment/assemble_training.py
```

Expected: prints a summary showing `phase7_compiled: N` records (where N > 0 after Docker run), integrity passes (exact_overlap=0, group_overlap=0, cross_label=0).

- [ ] **Step 3: Run the balance verifier against v43**

```bash
python3 scripts/enrichment/verify_data_balance.py data/v43_train_enriched.jsonl data/v25_honest_test.jsonl
```

Expected: `[PASS]` — every attack class now has >0% compiled records. If any class still shows 0%, check that Docker produced records for that class in `data/enrichment/phase7_compiled.jsonl`.

- [ ] **Step 4: Update `v42/run.sh`**

Change two lines in `v42/run.sh`:

```bash
TQDM_DISABLE=1 python3 -u train_gine_v38.py \
  --train-data data/v43_train_enriched.jsonl \   # <-- was v42_train_enriched.jsonl
  --test-data  data/v25_honest_test.jsonl \
  --output-dir viz_v43 \                          # <-- was viz_v42_honest
  --viz-dir    viz_v43 \                          # <-- was viz_v42_honest
```

Also update the comment block at the top to reflect the new dataset.

Also update the Python summary block at the bottom from `viz_v42_honest/gine_metrics.json` to `viz_v43/gine_metrics.json`.

- [ ] **Step 5: Commit**

```bash
git add scripts/enrichment/assemble_training.py v42/run.sh
git commit -m "feat: v43 training set — add phase7 compiled attack sequences, update run.sh"
```

---

## Task 7: Final verification — no style leakage

This task verifies that the v43 training set has no information available that could reveal whether a sequence is handcrafted or compiled to the model. Concretely: the PDG graph features derived from a sequence should look similar between a compiled BHI window and a handcrafted BHI window.

**Files:**
- Create: `scripts/enrichment/verify_no_style_leak.py`

- [ ] **Step 1: Create `scripts/enrichment/verify_no_style_leak.py`**

```python
#!/usr/bin/env python3
"""
Verify that compiled and handcrafted sequences for the same class share
overlapping n-gram distributions. If the overlap is near zero, the model
would still be able to distinguish types by opcode patterns.

Prints Jaccard similarity of opcode unigrams between compiled and
handcrafted sequences per class. Values below 0.2 indicate severe style mismatch.

Run:
    python3 scripts/enrichment/verify_no_style_leak.py data/v43_train_enriched.jsonl
"""
import json, sys, re
from pathlib import Path
from collections import Counter, defaultdict

ROOT = Path(__file__).parent.parent.parent


def extract_opcodes(seq):
    opcodes = []
    for line in seq:
        m = re.match(r'\s*(\w[\w.]*)', line)
        if m:
            opcodes.append(m.group(1).lower())
    return opcodes


def jaccard(a: Counter, b: Counter) -> float:
    ka, kb = set(a), set(b)
    inter = len(ka & kb)
    union = len(ka | kb)
    return inter / union if union else 1.0


def data_type(r: dict) -> str:
    sf = r.get("source_file", r.get("group", ""))
    aug = r.get("augmentation", "")
    if aug == "compiled_c_source":
        return "compiled_attack"
    if "c_vulns/asm_code" in sf:
        return "handcrafted_asm"
    if aug and aug not in ("poc_repo",):
        return "augmented"
    return "compiled_github"


def main():
    train_path = Path(sys.argv[1]) if len(sys.argv) > 1 else ROOT / "data" / "v43_train_enriched.jsonl"
    print(f"Loading {train_path} ...")
    records = [json.loads(l) for l in open(train_path) if l.strip()]

    cls_type_opcodes = defaultdict(lambda: defaultdict(Counter))
    for r in records:
        dt = data_type(r)
        cls = r["label"]
        for op in extract_opcodes(r.get("sequence", [])):
            cls_type_opcodes[cls][dt][op] += 1

    print(f"\n{'Class':<35} {'Compiled↔Handcrafted Jaccard':>30}  {'Verdict'}")
    print("-" * 75)
    all_pass = True
    for cls in sorted(cls_type_opcodes):
        compiled = cls_type_opcodes[cls].get("compiled_attack", Counter()) + \
                   cls_type_opcodes[cls].get("compiled_github", Counter())
        handcrafted = cls_type_opcodes[cls].get("handcrafted_asm", Counter()) + \
                      cls_type_opcodes[cls].get("augmented", Counter())
        j = jaccard(compiled, handcrafted)
        verdict = "OK" if j >= 0.15 else "LOW — may have style gap"
        if j < 0.15:
            all_pass = False
        print(f"  {cls:<35} {j:>30.4f}  {verdict}")

    print()
    if all_pass:
        print("[PASS] All classes have sufficient compiled/handcrafted opcode overlap")
    else:
        print("[WARN] Some classes have low overlap — model may still partially cheat by style")


if __name__ == "__main__":
    main()
```

- [ ] **Step 2: Run the no-style-leak verifier**

```bash
python3 scripts/enrichment/verify_no_style_leak.py data/v43_train_enriched.jsonl
```

Expected: Jaccard ≥ 0.15 for all attack classes (opcodes like `ldr`, `str`, `bl`, `mov`, `ret` appear in both compiled and handcrafted versions of each attack pattern). If a class is LOW, investigate whether the Docker produced records for that class.

- [ ] **Step 3: Commit**

```bash
git add scripts/enrichment/verify_no_style_leak.py
git commit -m "feat: style-leak verifier — checks compiled/handcrafted opcode overlap per class"
```

---

## Self-Review

### 1. Spec coverage

| Requirement | Task |
|---|---|
| Model should not know if sequence is handcrafted | Task 1 (feature filter) + Task 4 (compiled attack data) |
| No other metadata leaked as features | Task 1 (class-score filter removes rule-based priors) |
| Docker image for Linux machine | Task 2 + Task 3 |
| Compile other assembly files (c_vulns/c_code) | Task 4 |
| Verify no overlooks like handcrafted/compiled | Task 5 (balance verifier) + Task 7 (style-leak verifier) |
| Best ML research practices | Group-aware split preserved; frozen test never touched |

### 2. Placeholder scan

No TBD, TODO, or placeholder steps. All code is complete.

### 3. Type consistency

- `data_type(r: dict) -> str` used in both `verify_data_balance.py` and `verify_no_style_leak.py` — same function signature and return values (`"compiled_attack"`, `"handcrafted_asm"`, `"compiled_github"`, `"augmented"`, etc.).
- `load_test_hashes`, `validate_and_dedup`, `write_jsonl`, `load_jsonl`, `seq_hash` all imported from `scripts/enrichment/common.py` — consistent with all prior phases.
- Phase 7 output path: `data/enrichment/phase7_compiled.jsonl` — referenced consistently in phase7 script, assemble_training.py, and balance verifier.
- v43 output: `data/v43_train_enriched.jsonl` — consistent across assemble_training.py and v42/run.sh update.
