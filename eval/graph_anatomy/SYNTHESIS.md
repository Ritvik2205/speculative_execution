# Graph anatomy: why the classifier cannot tell real gadgets' classes apart (2026-11-05)

Four read-only analyses, one per pipeline stage. Details are in the stage reports in this directory.

| stage | report | finding |
|---|---|---|
| ground truth | `groundtruth_report.md` | MDS vs L1TF is set by the contract and page attributes, not by the code |
| 1-2 asm → PDG | `stage12_report.md` | 0/33 graph statistics differ MDS vs L1TF; WL kernel at chance; nothing truncated |
| 3 input features | `stage3_report.md` | 85/115 dims are dead on real data and hold 69% of the synthetic class separation |
| 4-5 GINE | `stage45_report.md` | probes at chance at every layer incl. raw input; the class comes from a per-seed head bias |

## The chain

1. **No code-level difference exists for MDS vs L1TF.** Under the shared menu both classes fuzz the
   same seed stream with identical generator configs. One byte-identical program violated as both.
   Every access is `(%r14,reg)` after a mask, so which page a load hits (assist vs not-present)
   depends on the input. The essential window is the same in both: load → mask → dependent access.
   An lfence after every load mitigates both. Length-free code features: 0.527 (chance 0.5).
2. **The graphs carry no class.** Shared MDS vs L1TF: 0/33 statistics differ. WL kernel
   balanced accuracy is ≤ its permutation null (one 0.58 hit out of ~20 settings, uncorrected,
   gone with memory-type labels). V1 is separable only by its conditional branch.
3. **The synthetic class signal is not in real code.** 85/115 per-graph dims never fire on the
   949 real gadgets (clflush, rdtsc, mfence, lfence, verw, call/ret/nop, cache and fence edges).
   The synthetic separators that remain are compiled-C habits (compare, branch, shift, stack loads,
   ret) that Revizor programs lack. RF on inputs alone, no GNN: synthetic 0.96 → real 0.25, all
   725 called V1. Every real gadget is out of distribution, and its nearest synthetic class is V1
   (dense indexed ALU/cmov, memory-indexed node fraction 0.30 vs 0.01-0.06).
4. **The network never sees a difference, so it invents one.** Probes are at chance from raw node
   features to logits, for all 20 checkpoints. Real MDS and L1TF overlap completely in the combined
   space (separation 0.26 vs 1.33 synthetic). The MDS−L1TF logit margin is a constant per seed
   (+0.47, +0.57, −0.15, −0.55, −0.46; within-seed class gap ±0.05). That is the "seed decides the
   class" collapse. shared_gine cannot even fit its own training MDS/L1TF gadgets.

## Pipeline bugs found (feature gate applies; not fixed)

- **x86 loads hidden from the PDG.** 91-93% of real memory reads are not category LOAD
  (`cmov (mem)` → MOVE, `add (mem),%reg` → ARITHMETIC, `bsf (mem)` → OTHER). `is_secret_source` and
  `is_transmitter` fire on ~1 node per gadget. This blinds the leak/safe signal on real gadgets.
- **`has_indexed_load` / `indexed_load_norm` are 0 on every x86 row.** `v54/inline_features.py:22`
  `_INDEXED_LOAD` matches only ARM brackets, not AT&T `(%base,%idx)`.
- Bare `lock` prefix lines become standalone nodes; implicit register effects (div, xchg mem, bswap)
  and flags have no def-use edges.

## Consequences

- **Task.** MDS vs L1TF classification from code is ill-posed and should not be claimed.
  Defensible: leak vs safe from code, plus three mechanism families: branch (V1), store-bypass
  (V4), fault/assist forwarding (MDS + L1TF merged).
- **Transfer failure, explained.** Synthetic labels rest on trigger opcodes and C-compiler habits,
  so real gadgets land on V1 by default. This is a result for the paper, not a model defect to tune.
- **Fixes that can move the leak/safe result.** Count memory-operand reads as loads in the
  builder, fix the x86 indexed-load regex, and train on hardware-labelled real gadgets
  (allhw3 + cf_nofence) with the 3-family head. Gate each change with `./scripts/run_feature_gate.sh`.
- **Direct test (i5).** Replay each shared program under the other classes' configs with its
  recorded inputs; if it violates under both, the class is the environment.
