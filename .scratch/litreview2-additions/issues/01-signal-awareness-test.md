# 01 — Signal-awareness test (prediction-preserving minimisation)

Status: needs-triage
Type: task
Blocked by: nothing for the opcode model; the 20 v57 pair jobs for the graph model

## Question

When a model calls an injected program leaking and we delete instructions while its call stays the same, does the known minimal leak core survive in what is left, more often than under random deletion?

## Done when

`eval/pairs/SIGNAL.md` holds, for the opcode model and both graph-model arms (10 seeds): signal-aware share, reduced length, the random-deletion control, and a 50-item Spectector confirmation that core-survival matches the oracle.

Spec: `../spec.md` section 5, W1.

## Comments

2026-11-12 (Claude): question changed before any result, see spec W1. No model calls any injected
leaking program leaking, so "does the known core survive" has no cases. Now: does the reduced
program still have the two memory accesses a leak needs. Opcode model done; graph model on the
cluster.
