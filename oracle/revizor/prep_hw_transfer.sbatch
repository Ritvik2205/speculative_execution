#!/bin/bash
# ---------------------------------------------------------------------------
# B2 + B3 prep: synth the per-class mitigated BENIGN twins, then rebuild the
# real-hardware transfer split WITH those twins (so MDS/L1TF/SPECTRE_V1 get a
# false-positive metric, not just positives-only recall). CPU-only, no deps.
#
#   sbatch oracle/revizor/prep_hw_transfer.sbatch
#
# After this, run the existing _hw trainings + aggregate (eval/cluster/) to get
# real_transfer.md with the synthetic-twin FP column. Run this AFTER any fresh
# Revizor conversion (convert_revizor_gadgets.py on the i5 -> pull) so the
# twins/splits reflect the latest gadgets.
# ---------------------------------------------------------------------------
#SBATCH --job-name=prep_hwt
#SBATCH --partition=Teaching          # confirm with `sinfo`; CPU-only
#SBATCH --time=00:30:00
#SBATCH --cpus-per-task=2
#SBATCH --mem=4G
#SBATCH --output=eval/cluster_out/%x_%j.out
#SBATCH --error=eval/cluster_out/%x_%j.err

set -euo pipefail
REPO="${REPO:-$HOME/speculative_execution}"
cd "$REPO"
[ -f .venv/bin/activate ] && source .venv/bin/activate
mkdir -p eval/cluster_out

echo "host=$(hostname) -- synth mitigated twins (4 classes)"
python3 oracle/revizor/synth_v4_benign.py --in eval/data/revizor_v4_real.jsonl        --out eval/data/revizor_v4_benign.jsonl        --vuln-class SPECTRE_V4
python3 oracle/revizor/synth_v4_benign.py --in eval/data/revizor_spectre_v1_real.jsonl --out eval/data/revizor_spectre_v1_benign.jsonl --vuln-class SPECTRE_V1
python3 oracle/revizor/synth_v4_benign.py --in eval/data/revizor_l1tf_real.jsonl       --out eval/data/revizor_l1tf_benign.jsonl       --vuln-class L1TF
python3 oracle/revizor/synth_v4_benign.py --in eval/data/revizor_mds_real.jsonl        --out eval/data/revizor_mds_benign.jsonl        --vuln-class MDS

echo "-- rebuild transfer split WITH twins (MDS/L1TF/SPECTRE_V1)"
python3 oracle/revizor/build_hw_transfer.py --classes MDS L1TF SPECTRE_V1 --seed 0 --with-synth-twins

echo "done rc=0 -- next: submit the _hw trainings + aggregate (eval/cluster/) for real_transfer.md"
