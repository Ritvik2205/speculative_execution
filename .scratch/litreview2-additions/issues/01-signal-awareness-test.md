# 01 — Signal-awareness test (prediction-preserving minimisation)

Status: done (opcode model and graph model; see comments)
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

### 2026-11-13 — graph model done (Claude)

20 runs (10 seeds per arm), 60 programs per group. Table in `eval/pairs/SIGNAL.md`.
Programs called leaking whose reduced form cannot leak (fewer than two memory-touching
instructions): v57 test LEAK 0.54 / 0.51 (plain / branch edges); hardware leaking 0.89 / 0.89;
hardware mitigated 0.86 / 0.85. Injected leaking programs are almost never called leaking
(0.3 of 60). Most common reduced hardware program: `lfence ; lfence ; lfence`.
Limit: the graph pipeline gives no prediction under three instructions, so reduction stops there.
