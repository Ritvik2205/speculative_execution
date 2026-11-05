# Stage 1-2 anatomy: raw assembly -> PDG tensors (2026-11-05)

Scripts: `stage12_common.py` (rebuilds graphs exactly the way the model does), `stage12_trace.py` -> `stage12_trace.txt`,
`stage12_stats.py` -> `stage12_stats.md/.json`, `stage12_wl.py` -> `stage12_wl.md/.json`. Read-only. No existing file was changed.

## 1. Text -> tensors (locked B1 config, from `v54/viz_v54_spec/gine_metrics.json`)

`GINEDatasetV47(use_spec_builder=True, speculative_window=20, strip_bp=True, node_feature_mode=hand)`, with the W4
defaults (taint=shift, no opt-in mem-order or CFG-spec edges, NOPs kept). MAX_NODES=256, MAX_EDGES=1024.
My rebuild matches the real dataset tensors on **224/224** shared records (edge types, node features, masks).

Pipeline: `strip_boilerplate` (harness labels/tail rdtsc/dsb/nop) -> SpecBackedPDGBuilder(x86_64.json): it skips
blank, `label:` and `.directive` lines; each other line becomes one node with 41 dims (19 opcode categories, 5 memory
types, dest/src register counts, 14 spec flags, position). The 9 edge types are DATA_DEP (reaching definition, 1 def),
CONTROL_FLOW (i->i+1), SPEC_* (branch->security-relevant nodes within 20), MEMORY_ORDER (address_base: write -> later
may-alias read), CACHE_TEMPORAL, FENCE_BOUNDARY and RSB_CHAIN. Node names are never seen, only categories and flags.

What gets lost on the Revizor gadgets:
- Truncation and stripping do nothing: 0 records over 256 nodes or 1024 edges, and 0 lines stripped on shared/real.
  On synthetic, 23/1258 records exceed 256 nodes and 103 lines are stripped.
- The 433 bare `lock` lines (shared) become standalone OTHER nodes, so the lock prefix is lost.
- `jmp 0x5d <.bb_0.1>` targets have no label lines, so the CFG is not resolvable.
- **Most memory reads are not category LOAD**: `cmovgq (mem),%rdi` is MOVE, `bsfl (mem)` is OTHER, `addq (mem),%rcx` is
  ARITHMETIC, `divl (mem)` is ARITHMETIC. 91-93% of semantic reads are non-LOAD (the synthetic figure is 31-35%).
  is_secret_source/is_transmitter fire only on the ~1 `mov` load per gadget. The traced MDS gadget has zero LOAD nodes.
- Implicit def/use is missing: div/idiv do not define rax/rdx, the memory-form xchg defines nothing, `bswapl %eax`
  reads nothing, and FLAGS are never tracked (cmov/setcc/sbb).
- On the shared corpus every graph is just CONTROL_FLOW (47%), DATA_DEP (45%) and MEMORY_ORDER (7%). There are no
  FENCE, CACHE or TIMING nodes, and SPEC_CONDITIONAL appears only in V1. The spec flags add nothing beyond
  category+memory type: WL "full" gives the same result as WL "cat+mem".

The two traced gadgets (MDS seed 1047365372: 46 nodes, 45 CF / 46 DD / 8 MO; L1TF same seed: 55 nodes,
54 / 54 / 20) look the same: `andq $0x1fff,%reg ; <op> (%r14,%reg)` repeated.

## 2. Per-class statistics (SMD with 95% CI from a bootstrap over seed groups)

**Shared, MDS vs L1TF: 0 of 33 statistics differ.** For example, nodes 42.1 vs 42.8 (SMD -0.16 [-0.57,+0.24]),
DATA_DEP fraction 0.453 vs 0.454, longest DATA_DEP chain 8.9 vs 8.6, read->ALU->address-of-read motif 3.48 vs 3.58
(-0.04 [-0.29,+0.21]), and MEMORY_ORDER fraction 0.073 vs 0.072. The direct load->address-of-load motif is 0 in every
class, because every address is masked through an `andq` first.

Shared, MDS+L1TF vs V4 (n=7, 6 groups): only the read->address motif differs (3.5 vs 5.3, SMD -0.82 [-1.10,-0.59]).
store->load MEMORY_ORDER is 0.86 vs 0.05 but not significant. Both are fragile at n=7.

Per-class-config real, MDS vs L1TF: large differences, all of them from the instruction menu. The LOGIC fraction is
0.60 vs 0.44 (SMD +2.44), and real MDS has no LOAD/STORE nodes, so it has zero secret/transmitter flags (SMD -0.90).

Synthetic x86, MDS vs L1TF: moderate structural differences (|SMD| <= 0.66). The largest are verw (+0.66), the
largest DATA_DEP component fraction (-0.62) and TIMING (-0.56).

## 3. WL subtree kernel (h=3) + LR/SVM, StratifiedGroupKFold(5), pooled balanced accuracy, group-level permutation null

| corpus / task | best structural probe | null 95th pct | p |
|---|---|---|---|
| shared MDS vs L1TF, grouped by seed_group | 0.43 (WL cat) | 0.52 | 0.38 |
| shared MDS vs L1TF, grouped by raw seed | 0.58 (WL cat); cat+mem 0.52; stats vector 0.48 | 0.52 | 0.015 / 0.085 / 0.57 |
| shared MDS/L1TF/V4, grouped by raw seed | 0.40 (WL cat); stats vector 0.36 | 0.33 | 0.005 / 0.25 |
| real per-class cfg MDS vs L1TF | 0.99 | 0.59 | <0.02 |
| synthetic x86 MDS vs L1TF | 0.89 WL; 0.91 stats vector | 0.57 | <0.02 |
| synthetic x86 MDS/L1TF/V4 | 0.92 WL; 0.94 stats vector | 0.48 | <0.02 |

The below-chance numbers under seed_group grouping are an artifact of class-pure folds: the permutation null itself
averages 0.40. Grouping by raw seed puts both classes of a seed in the same test fold, which removes that artifact.

The raw-seed WL-cat signal (0.58) is the best of about 20 configurations and is not corrected for multiple testing.
It disappears once memory type is added (0.52, p=0.085), and the graph-statistics vector is at chance. Read it as
weak and unreliable.

What separates the synthetic classes is **not mainly the trigger opcodes**:
- Removing FENCE/CACHE/TIMING nodes, their flags and the FENCE_BOUNDARY/CACHE_TEMPORAL edges barely moves WL:
  0.886 -> 0.867, and 0.868 with CONTROL_FLOW also removed.
- Trigger counts alone reach only 0.70.
- The top features are opcode/addressing idioms from the compiled C source. L1TF: COMPARE, BRANCH_COND, SHIFT,
  stack-relative loads. MDS: verw, heap loads, LOGIC, RET.

So synthetic separability comes from source-program idioms (and verw), not from a dependence-shape motif. Neither of
these exists in the Revizor menu.

## 4. Synthetic -> real shift (shared corpus), per class: huge, and the same direction for every class

- DATA_DEP fraction: 0.24-0.27 synthetic vs 0.45 real (SMD -2.1 to -3.3).
- Isolated nodes: 0.45-0.50 vs 0.08 (+1.7 to +3.2).
- Longest chain: 3-5 vs 8-9.
- LOGIC fraction: 0.02-0.04 vs 0.43 (SMD about -9 to -17).
- LOAD+STORE: about 0.33-0.43 vs 0.03.
- Fractions of the trigger and SPEC edge types: 5-17% synthetic vs 0% real.
- Direct load->address-of-load motif: 0.7-1.5 per graph vs 0.

## Conclusion

On the shared Revizor corpus, the graph the GINE receives carries no reliable MDS-vs-L1TF (or V4) signal. Size, edge
mix, degrees, chain lengths, components and transmit motifs are all the same, and WL/statistics probes sit at the
permutation null apart from one fragile 0.58. The per-class real corpus is separable only through the instruction
menu. Synthetic classes are separable through compiled-C idioms that the real gadgets do not contain.

The graph builder also mislabels about 92% of real memory reads (as cmov, bsf and ALU-from-memory categories), and it
drops implicit and FLAGS def-use. Any dependence signal that does exist is therefore under-represented.

The likely cause is mostly that the class difference is not in the program text at all. The labels come from the
hardware/contract rather than from program shape; the evidence for this is that the same seeds produce violations in
every class. The encoder's flaws make this worse, but they are probably not the root cause.
