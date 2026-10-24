#!/bin/bash
# ---------------------------------------------------------------------------
# Green-light the leak-conditioning token (spec A). Runs the pytest-free
# checker (gen/check_leak_cond.py) under the full specexec env on a compute
# node. No network needed (compute node has none); pull on the head node first.
#
#   (head node)  cd $HOME/speculative_execution && git pull -q origin cluster
#   (then)       sbatch gen/check_leak_cond.sbatch
#   result:      eval/cluster_out/leakcond_<jobid>.out  (last line ALL PASS / FAILURES)
# ---------------------------------------------------------------------------
#SBATCH --job-name=leakcond
#SBATCH --partition=Teaching
#SBATCH --mem=4000
#SBATCH --time=00:10:00
#SBATCH --cpus-per-task=2
#SBATCH --output=eval/cluster_out/%x_%j.out
#SBATCH --error=eval/cluster_out/%x_%j.err
set -uo pipefail

REPO="${REPO:-$HOME/speculative_execution}"
cd "$REPO"
source "$HOME/miniconda3/etc/profile.d/conda.sh"
conda activate specexec
mkdir -p eval/cluster_out

echo "=== leak-cond checks: $(date) ==="
python3 -u gen/check_leak_cond.py
rc=$?
echo "=== done rc=$rc ($(date)) ==="
exit $rc
