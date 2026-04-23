#!/usr/bin/env bash
set -euo pipefail

C_SRC_DIR="/work/c_vulns"
OUT_DIR="/work/output"
OUT_FILE="${OUT_DIR}/phase7_raw.jsonl"
PY="/usr/bin/python3"
EXTRACTOR="/work/extract_windows.py"

mkdir -p "${OUT_DIR}"
> "${OUT_FILE}"

# Label map: checked by substring in lowercased path
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
# Note: inside the Docker container (built on ARM64 hosts), native gcc targets
# aarch64-linux-gnu. Use the explicit cross-compilers for each architecture.
COMPILER_CONFIGS=(
    "x86_64-linux-gnu-gcc|-O0|x86_64"
    "x86_64-linux-gnu-gcc|-O1|x86_64"
    "x86_64-linux-gnu-gcc|-O2|x86_64"
    "x86_64-linux-gnu-gcc|-O3|x86_64"
    "clang-14|-O0 --target=x86_64-linux-gnu|x86_64"
    "clang-14|-O2 --target=x86_64-linux-gnu|x86_64"
    "aarch64-linux-gnu-gcc|-O2|arm64"
)

total_windows=0
total_files=0
total_skipped=0

while IFS= read -r c_file; do
    stem=$(basename "$c_file" .c)

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

        if ! command -v "$compiler" &>/dev/null; then
            continue
        fi

        flag_tag=$(echo "$flags" | tr -d ' -' | tr '.' '_')
        group="phase7_${stem}_${compiler}_${flag_tag}"

        asm_file=$(mktemp /tmp/phase7_XXXXXX.s)

        if $compiler -S $flags \
            -I"$(dirname "$c_file")" \
            -I/usr/include \
            -fno-stack-protector \
            -D_GNU_SOURCE \
            "$c_file" -o "$asm_file" 2>/dev/null; then

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
