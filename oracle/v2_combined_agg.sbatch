#!/bin/bash
# ---------------------------------------------------------------------------
# Aggregate the SPECTRE_V2 adjudicability shards written by oracle/v2_combined.sbatch
# (oracle/run_v2_combined.py run, sharded over the generated V2 bodies in
# oracle/build/). Reads eval/v2_combined/shard_*.jsonl and writes summary.{md,json}.
#
# A standalone sbatch rather than an `sbatch --wrap="... python3 ..."`: the wrap
# form lost its `python3` prefix and slurm tried to execute the .py directly
# ("Permission denied"). CPU-only, light I/O; still a batch job, not head-node.
#
#   # after the v2_combined array finishes:
#   sbatch oracle/v2_combined_agg.sbatch
#   # or, to gate on the array automatically:
#   sbatch --dependency=afterok:<array_jobid> oracle/v2_combined_agg.sbatch
#   # result: eval/v2_combined/summary.md + summary.json
#
# RESULTS_DIR overrides the shard directory (match whatever the run used):
#   sbatch --export=ALL,RESULTS_DIR=eval/v2_combined_w200 oracle/v2_combined_agg.sbatch
# ---------------------------------------------------------------------------
#SBATCH --job-name=v2c_agg
#SBATCH --partition=Teaching
#SBATCH --time=00:20:00
#SBATCH --cpus-per-task=2
#SBATCH --mem=4G
#SBATCH --output=eval/cluster_out/%x_%j.out
#SBATCH --error=eval/cluster_out/%x_%j.err
set -euo pipefail
REPO="${REPO:-$HOME/speculative_execution}"; cd "$REPO"
source "$HOME/miniconda3/etc/profile.d/conda.sh"; conda activate specexec
mkdir -p eval/cluster_out
RESULTS_DIR="${RESULTS_DIR:-eval/v2_combined}"
if ! ls "$RESULTS_DIR"/shard_*.jsonl >/dev/null 2>&1; then
    echo "FATAL: no shard_*.jsonl under $RESULTS_DIR -- run oracle/v2_combined.sbatch first" >&2
    exit 1
fi
echo "=== v2 adjudicability aggregate ($RESULTS_DIR): $(date) ==="
python3 oracle/run_v2_combined.py summarize --results-dir "$RESULTS_DIR"
echo "=== wrote $RESULTS_DIR/summary.{md,json} (rc=$?) ==="
