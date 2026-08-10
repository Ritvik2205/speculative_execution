#!/usr/bin/env bash
# Blocks until all 10 new-seed training runs (5 seeds x hand/both) finish,
# or the driver clearly errored/exited without finishing.
SEEDS="100 7654 8 88 999"
MODES="hand both"
LOG="/private/tmp/claude-501/-Users-ritvikgupta-SpecExec/a4639865-55bf-417c-8617-a055984eeeeb/scratchpad/driver_extra_seeds.log"
OUT="/Users/ritvikgupta/SpecExec/.claude/worktrees/agent-a489af6400bd7f1bc/eval/full_tost"

while true; do
  all_done=1
  for m in $MODES; do
    for s in $SEEDS; do
      if [ ! -f "$OUT/viz_${m}_s${s}/gine_metrics.json" ]; then
        all_done=0
      fi
    done
  done
  if [ "$all_done" = "1" ]; then
    echo "ALL_10_RUNS_COMPLETE"
    break
  fi
  if grep -qE "Traceback|Error|error:" "$LOG"; then
    echo "DRIVER_ERROR_DETECTED"
    tail -40 "$LOG"
    break
  fi
  if ! pgrep -f "train_gine_v38.py" > /dev/null; then
    echo "NO_TRAINING_PROCESS_BUT_NOT_ALL_DONE"
    tail -40 "$LOG"
    break
  fi
  sleep 20
done
echo "---final tsv---"
cat "$OUT/results_extra_seeds.tsv" 2>&1
echo "---driver tail---"
tail -20 "$LOG"
