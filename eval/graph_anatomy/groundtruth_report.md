# Ground truth: what makes a real Revizor gadget MDS vs L1TF vs SPECTRE_V4 vs SPECTRE_V1

2026-11-05. This is a read-only analysis. The script is `eval/graph_anatomy/groundtruth_anatomy.py`, run with plain
`python3`. It reads `eval/data/revizor_*_shared.jsonl`, `revizor_*_real.jsonl` and
`revizor_hwlabel_cf_heldout.jsonl`. The config facts below come from
`oracle/revizor/demo_configs/`, `class_config.shared_overlay`, and the recorded
`org-config.yaml`/`report.txt` files in `rvzr_runs/baseline/`.

## 1. What differs per class in the Revizor setup

The shared-config overlay (`class_config.py --shared-overlay`) gives every class the same
instruction menu (BINARY BITBYTE CMOV CONVERT DATAXFER LOGICAL MISC NOP POP PUSH SETCC,
with DIV/IDIV blocklisted), `program_size: 24` and `avg_mem_accesses: 12`. Diffing the overlays shows
that only these keys remain different:

| class | observation | execution clause | actors / faulty page | executor / other knobs |
|---|---|---|---|---|
| MDS | `ct` | `seq-assist` | `data_properties: accessed: False` | – |
| L1TF | `loads+stores+pc` | `delayed-exception-handling` | `present: false`, `writable: false` | `executor_warmups: 2`, `x86_disable_div64: false` |
| SPECTRE_V4 | `ct` | `seq` | none | `x86_executor_enable_ssbp_patch: false`, `data_generator_entropy_bits: 24` |
| SPECTRE_V1 | `loads+stores+pc` | `no_speculation` | none | rvzr default SSBP setting; **plus `BASE-COND_BR`**, the only difference in the menu |

The recorded reports confirm that the faulty-page property is a property of the run. For example,
`baseline/MDS/.../report.txt` contains `Faulty page properties: Actor 0: PTE: accessed=False`.
The L1TF report contains `PTE: present=False; writable=False`, and the V1/V4 reports contain an empty `PTE:`.

## 2. What a violation means, and who sets the class

Every memory operand in all 224 shared gadgets has the form `(%r14,%reg)`, and each one follows an
`and $0x1fff`/`$0x1ff8` mask (section A of the script: 100% in every class). The 13-bit
mask spans both the main page and the faulty page. In the recorded MDS contract trace, the first load
(`cmovnz rdx, qword ptr [r14+rdx]`) lands at `mem: 0x203e`, which is in the faulty page. In the L1TF trace,
`neg byte ptr [r14+rbx]` lands at `mem: 0x2655`. Whether an access is assisted (MDS, A-bit clear)
or faults (L1TF, not-present) therefore depends on the **input register value**. It is not
written in the program text.

What a violation means under each setup:
- **MDS (`seq-assist`, A=0).** A load to the A-bit-clear page triggers a microcode assist. During the assist the
  load transiently forwards data that the contract's assist model does not allow, and a later address leaks it.
- **L1TF (DEH, P=0).** A load or RMW to the not-present page raises #PF. Before the fault is handled, the load
  transiently returns data (Foreshadow) beyond what the DEH model permits.
- **V4 (`seq`, SSBP off).** A load executes ahead of an older store to the same address and reads the stale
  value. The control run confirms this: with SSBP on, 0 violations on all 10 seeds.
- **V1 (`no_speculation` + jcc).** A wrong-path access exposes its address or PC.

**Can the same program violate under two setups? Yes, and it has happened on hardware.** All four
shared campaigns used the same 10 seeds, and `report.txt` shows `Program seed = base seed + Test Case ID` (955333 = 955240 + 93).
The MDS, L1TF and V4 generator configs are identical, so all three classes were fuzzed on the same program stream.
`eval/data` contains one byte-identical 37-instruction program, `campaign 678107930`, recorded both as
MDS (`mds/678107930/violation-261104-195033`) and as L1TF (`l1tf/678107930/violation-261104-222901`). It is
the only cross-label exact duplicate among 948 distinct real or shared sequences. Apart from it, the
MDS and L1TF violator sets are almost disjoint (1/66) even though they were drawn from the same stream. Which
programs land in which class is therefore decided by the setup plus inputs, filters and flakiness, not by any
code property. Opcode-3gram nearest neighbours confirm this: the nearest neighbour is from the same class for only 16/66 MDS, 21/64 L1TF and 0/7 V4 programs,
which is about what class base rates give (about 0.29 for MDS/L1TF), and the median similarity to the nearest other-class program is higher than to the nearest same-class one (0.083 vs 0.070 for MDS).

## 3. Essential pattern per class (Revizor fence pass, `cf_fencepass`, still leaking on hardware)

Revizor's fence pass inserts an lfence wherever the violation survives. The lfence-free runs that remain are
therefore the instructions the leak needs to execute back-to-back. Medians are taken over each program's longest lfence-free window:

| class | N | window instrs | loads | RMW | load→address taint | store→load, same address reg (any window) | jcc in window |
|---|---|---|---|---|---|---|---|
| L1TF | 58 | 7 | 2 | 1 | 0.91 | 0.29 | 0.00 |
| MDS | 23 | 14 | 4 | 3 | 1.00 | 0.39 | 0.00 |
| V1 | 34 | 8.5 | 1 | 2 | 0.24 | 0.26 | **1.00** |
| V4 | 14 | 28 | 6 | 5 | 1.00 | **0.79** | 0.00 |

MDS and L1TF have the **same** minimal shape: a load, a mask of the loaded register, then a dependent memory access.
- L1TF example: `cmovpl (%r14,%rax),%ecx; andq $0x1fff,%rcx; btl %esi,(%r14,%rcx)`
- MDS example: `xorl (%r14,%rsi),%edi; andq $0x1fff,%rdi; testl %ecx,(%r14,%rdi)`

Supporting hardware results:
- `after_load` (an lfence after every read) mitigates 33/33 MDS and 63/63 L1TF programs.
- V1's window always contains the jcc. `cf_wrong_path` still leaks in 34/34 programs, and `shifted` (a fence before the jcc) mitigates 41/41.
- In V4, `cf_after_bypass` (an lfence after a load that follows an essential store) mitigates 19/19 programs.

Separating MDS from L1TF using the window features (5-fold ×5, balanced accuracy, chance 0.5):
- Length-free fractions: **0.527 ± 0.034**, at chance.
- Raw counts: 0.684.
- Program length alone: 0.912. This is the per-class `program_size` (16 vs 20), so it is a config artefact.

## 4. Conclusions and task definition

**Visible in the code:**
- **V1:** a jcc in the leak window. Under the shared config it is also a menu tell (1.00 vs 0.00).
- **V4, partly:** a store followed by a dependent-window load. Whether the two addresses actually alias is
  decided by the input, and the leak exists only with SSBP off, so the code shows necessity but not sufficiency.

**Set only by the environment:**
- **MDS vs L1TF:** the program text is the same (one byte-identical program has both labels). The only
  difference is the PTE attribute of the page the input steers a load into (A=0 vs P=0) and the contract.
- **V4 vs MDS/L1TF:** these share one program stream, so V4 also depends on the environment.

**What a classifier would need to tell these apart:**
- A per-access page-attribute annotation: which region each memory operand hits for the given input
  (main / assist / non-present), as a node feature. Equivalently, the input plus the PTE configuration.
- The mitigation state (SSBP, SMT).
- A contract tag.

These annotations are effectively the label, so predicting MDS vs L1TF from them is trivial and not
a research claim.

**Defensible task:**
- From code only: **leak vs safe** (T1), with the class reported as a *mechanism family*:
  {branch-speculation (V1), store-bypass (V4), fault/assist-forwarding (MDS ∪ L1TF)}.
- MDS vs L1TF should be stated as unidentifiable from code.

**Direct test still to run (needs the i5):** re-run each shared-config program under the other contracts with
its recorded inputs (`rvzr reproduce` with a swapped config). Expectation: many MDS programs reproduce under
the L1TF setup and vice versa.
