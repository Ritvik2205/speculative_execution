# Pair benchmark: is "train on injected, test on hardware" a clean split?

Date: 2026-11-13. Data read: `eval/pairs/data/pairs_{hw,injected,linux}.jsonl` (2,310 pairs), their upstream
files, `v57/data/v57_leak_{train,test}.jsonl`. Nothing in the repo was changed; no oracle or cluster job was run.

**Short answer.** The proposal is clean in the way it was feared to be dirty, and dirty in three ways that were
not on the list.

- Clean: injected pairs and hardware pairs share no content at all (no sequence, no near-duplicate, no core).
  The injected cores were *not* minimised from hardware programs.
- Dirty 1: "one injected kind held out whole" is not held out. 99% of its leaking sides are the same sequences
  that sit in training as the leaking sides of the other two kinds.
- Dirty 2: two of the three injected kinds can be fitted perfectly from one feature (barrier present; more
  memory operands), so a model can reach 100% on training without learning anything that could transfer.
- Dirty 3: the three hardware sets are one pool of 158 programs seen three ways, and the biggest one
  (`variants`) is solved by a positional rule (0.996). Only `nofence` (92 pairs) and `counterfactual` (76 pairs)
  have no rule above them, and they are small.

Recommended split is in section 8. It needs the injected pairs regenerated.

## Terms

- **Pair**: a leaking sequence and a safe sequence that differ in a small edit. **Side**: one of the two.
- **Base**: the unit a pair was derived from (a hardware program, a host body, a kernel fix commit).
- **Host**: a benign instruction window that the oracle called safe. **Core**: a minimal leaking instruction
  group (2 to 6 instructions). An injected leaking side is a host with a core inserted.
- **Oracle**: Spectector (symbolic tool) on the repo's "tainted" victim harness. **Hardware label**: what the
  i5-8300H did under Revizor, 3 runs.
- **Pair score ("auc" in `PAIRS.md`)**: share of pairs where the leaking side gets the higher score; a tie
  counts half; 0.5 means cannot tell.
- **Bar**: what a trivial scorer achieves. A model result only means something above the bar.
- **Near-duplicate**: the repo's definition in `v57/neardup.py`: Jaccard overlap of the two opcode multisets
  at least 0.8, same instruction set.
- **Exact match**: identical line lists after `v57.build.canonical_spelling` (called e1); the same plus
  whitespace and case folding (e2); identical ordered mnemonics.
- **Boosted opcode model**: `eval.pairs.score.train_gbm` on `opcode_features` (opcode counts; "+bigrams" adds
  adjacent opcode pairs).

## How the numbers were produced

Scripts are in the session scratch directory (not in the repo, copy them if they should be kept):
`/private/tmp/claude-501/-Users-ritvikgupta-SpecExec/02e6f899-8232-45c6-9f8a-6afe3218b6ee/scratchpad/split_audit/`

| tag | command (from repo root) | answers |
|---|---|---|
| S1 | `python3 <dir>/q1_provenance.py` | provenance, bases, sharing between sets |
| S2 | `python3 <dir>/q2_leakage.py` | exact and near-duplicate overlap, cores inside other sets |
| S3 | `python3 <dir>/q3_diffs.py` | what differs between the two sides |
| S4 | `python3 <dir>/q3_bars.py` | shortcut bars per candidate split (full output: `<dir>/q3_bars.out`) |
| S5 | `python3 <dir>/groups.py` | grouping units for injected pairs |
| S6 | `python3 <dir>/q456.py` | single-token bars, vocabulary, class balance, generator capacity, sizes |

## 1. Provenance (S1, plus reading `eval/pairs/build.py` and upstream code)

| set | how the leaking side is made | how the safe side is made | base | pairs | bases | pairs per base | distinct leak / safe sides |
|---|---|---|---|---|---|---|---|
| `variants` | Revizor program with barriers added at a place that did not stop the violation (`entry`, `tail`, `v1_fallthrough`) | same program, barriers at a place that did (`twin`, `fence_all`, `shifted`, `after_load`) | Revizor violation | 970 | 154 | median 6 (3 to 9) | 321 / 467 |
| `counterfactual` | same, barrier placed by Revizor's fence pass or on the wrong path (still violates) | barrier before a non-essential instruction, or after the bypassing load | Revizor violation | 76 | 54 | 1 to 2 | 61 / 69 |
| `nofence` | program with one non-essential instruction deleted | program with one essential instruction deleted | Revizor violation | 92 | 92 | 1 | 92 / 92 |
| `injected inject` | host + core at a random position | the bare host | host body | 364 | 281 | 1 to 4 | 364 / 281 |
| `injected fence` | same leaking side | same, `lfence` after the first core instruction | host body | 357 | 277 | 1 to 4 | 357 / 357 |
| `injected reorder` | same leaking side | same, core instructions reversed | host body | 261 | 220 | 1 to 3 | 261 / 261 |
| `linux` | kernel function before a Spectre-v1 fix, gcc -O2, x86_64 | after the fix | fix commit + function | 105 | 105 (91 commits) | 1 | 105 / 105 |
| `linux_arm64` | same commits built for arm64 | after the fix | fix commit + function | 85 | 85 (72 commits) | 1 | 84 / 84 |

Hardware (`oracle/revizor/scripts/hw_label_variants.py`, `eval/data/revizor_hwlabel_*.jsonl`):
every (leaking variant, mitigated variant) combination of one program is a pair, so a side is reused in several
pairs. Label rule: 3/3 runs violate = leak, 0/3 = safe; every record in the three files is 3/3 or 0/3.
Programs with only one label produce no pair: `variants` uses 154 of 162 programs, `counterfactual` 54 of 140,
`nofence` 92 of 148.

Injected (`build.py: jobs, injected_pairs`):
- Hosts: `gen/step2_runs/t1_controls.jsonl`, rows whose condition starts with `benign`, verdict safe, at least
  8 instructions: 656 distinct bodies. They are windows of `eval/data/realworld_benign_x86_64.jsonl`
  (Debian zlib, pcre2, gzip, json-c, bzip2), some passed through the generator's token stream
  (`gen/eval_gate_controls.py`). 282 of them appear in pairs.
- Cores: `gen/step2_runs/t1_cores.jsonl`, 111 distinct. Each was minimised (delta debugging with the oracle as
  the test, `gen/minimise_split.py`) from a body that leaked on the tainted victim. 108 appear in pairs:
  80 from benign Debian windows, 27 from generator samples, 1 reference. **None comes from a hardware
  program.** Median 9 pairs per core, maximum 26.
- 400 attempts gave 366 confirmed leaking sides (`docs/PLAN_2026-11-11_post_review.md` section 8). Each
  leaking side is then paired with up to three safe sides. All three kinds therefore share leaking sides:
  258 leaking sides are in all three kinds, 97 in two, 11 in one.
- The pair row stores the host hash and the core, not the position or the host's source function.

Linux: 78 commit+function units exist for both instruction sets; 66 commits are shared. A split must keep a
commit on one side across both sets.

## 2. Content shared between sets (S2)

Exact overlap of whole sequences (e1 / e2 / identical ordered mnemonics), all set pairs including
`v57` train, `v57` test and the Debian host source:

| sets | shared sequences |
|---|---|
| `injected inject` and `injected fence` | 355 |
| `injected inject` and `injected reorder` | 261 |
| `injected reorder` and `injected fence` | 258 |
| every other combination | 0 |

No sequence is a leaking side in one place and a safe side in another (0).

Near-duplicate rate (`v57/neardup.leak_rate`, threshold 0.8): share of the column set's sides that have a
near-duplicate in the row set.

| row \ column | variants | counterfactual | nofence | inj inject | inj reorder | inj fence | linux | linux_arm64 |
|---|---|---|---|---|---|---|---|---|
| variants | – | 0.938 | 0.380 | 0 | 0 | 0 | 0 | 0 |
| counterfactual | 0.278 | – | 0.446 | 0 | 0 | 0 | 0 | 0 |
| nofence | 0.194 | 0.577 | – | 0 | 0 | 0 | 0 | 0 |
| inj inject | 0 | 0 | 0 | – | 1.000 | 1.000 | 0 | 0 |
| inj reorder | 0 | 0 | 0 | 0.922 | – | 0.913 | 0 | 0 |
| inj fence | 0 | 0 | 0 | 0.981 | 0.992 | – | 0 | 0 |
| v57 train | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 |
| v57 test | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 |
| Debian host source | 0 | 0 | 0 | 0.005 | 0 | 0.001 | 0 | 0 |

Still 0 at thresholds 0.9 and 0.95 for `v57` train to every set and injected to hardware.

Answers to the specific questions:

- **Do injected pairs reuse cores from hardware programs?** No. 0 of 108 cores occur in any hardware side as
  a contiguous run (exact text or mnemonics), and the repo's own embedding test
  (`gen/minimality_gate.embeds_in`: in order, gaps allowed, consistent register renaming) finds no core in
  any of 614 hardware sides checked (300 sampled from `variants`, all of the other two).
- **Do injected hosts or Linux functions appear in `v57` training?** No exact match, no near-duplicate.
  `v57` and the hardware pair sets share 0 of 552 / 158 violation ids (the `v57` build already checks this).
  Core mnemonic runs do occur in ordinary code (in 72% of `v57` train sequences, 98% of Linux functions):
  the cores are common two-to-four-instruction idioms, which is expected and not leakage.
- **Do the hardware sets share base programs?** Yes, almost completely. 158 distinct violations in total;
  53 of 54 `counterfactual` bases and 89 of 92 `nofence` bases are also `variants` bases; 41 are in all three.
  Different violations are not near-duplicates of each other (158 clusters for 158 bases).
- **Inside injected:** hosts and cores are drawn independently, so everything is connected. Grouping hosts by
  near-duplicate cluster (282 hosts fall into 124 clusters) and cores by template (70 templates,
  `t1_cores.jsonl` field `template`) leaves 2 connected groups, one holding 979 of 982 pairs (S5). A
  group-by-host split would leave every core on both sides.

## 3. Shortcuts

### 3a. What differs between the two sides (S3)

| set | side-to-side difference at mnemonic level | barrier on (leak side, safe side) |
|---|---|---|
| `injected fence` | 357/357: safe side = leaking side + one `lfence`. One diff for the whole set | (no, yes) 357 |
| `injected inject` | 364/364: leaking side = safe side + 2 to 6 extra instructions, most often `movq,movq` (12%), `movb,movq` (8%), `movq x3,movzbl` (6%) | (no, no) |
| `injected reorder` | 190: same mnemonic multiset, order changed; 71: same mnemonics in the same order, only operands differ | (no, no) |
| `variants` | 72%: only `lfence` positions differ; same count in 67% of pairs | (yes, yes) 970 |
| `counterfactual` | 89%: only `lfence` positions and count differ; the leaking side has more in most pairs | (yes, yes) 76 |
| `nofence` | 98%: each side lacks one instruction the other has; 91 distinct diffs in 92 pairs | (no, no) |
| `linux` | 87 distinct diffs; most common is the safe side gaining `movl, cmp, andl` (the kernel's index mask) | 101 with none |
| `linux_arm64` | 77 distinct diffs; safe side gains `cmp, sbc, and, hint` | none |

### 3b. One-feature bars inside each set (S4, S6; direction chosen on the same set)

| set | length | barrier count | memory-operand count | best single mnemonic (pair / single side) |
|---|---|---|---|---|
| `injected fence` | 1.000 (shorter leaks) | 1.000 (fewer leak) | 0.500 | 1.000 / 1.000 `lfence` means safe |
| `injected inject` | 1.000 (longer leaks) | 0.500 | 1.000 (more leak) | 0.617 / 0.621 `movzbl` |
| `injected reorder` | 0.500 | 0.500 | 0.500 | 0.500 / 0.500 |
| `variants` | 0.665 (shorter) | 0.665 (fewer) | 0.500 | 0.500 / 0.515 |
| `counterfactual` | 0.796 (longer) | 0.796 (more leak) | 0.500 | 0.500 / 0.575 |
| `nofence` | 0.500 | 0.500 | 0.549 | 0.516 / 0.516 |
| `linux` | 0.910 (shorter) | 0.510 | 0.667 | 0.910 / 0.910 unsuffixed `cmp` means safe |
| `linux_arm64` | 0.953 (shorter) | 0.965 | 0.712 | 0.929 / 0.929 `sbc` means safe |

From `PAIRS.md`: the rule "no barrier strictly inside the sequence means leak" scores 0.996 on `variants` and
0.500 on `counterfactual` and `nofence`.

The direction of every length and barrier rule flips between sets (shorter leaks in `fence`, `variants`,
Linux; longer leaks in `inject`, `counterfactual`). A model that learns "barrier means safe" from injected
`fence` pairs gets 0.665 on `variants` and 0.204 on `counterfactual` from that rule alone.

### 3c. Bars fitted on the training part and scored on the test part (S4)

Columns: pair score of length, barrier count (direction fitted on train), boosted opcode model, boosted opcode
+ bigram model; then single-side scores: length-bin majority rule (`v57/checks.shortcut_accuracy`, balanced
accuracy) and area under the curve of the bigram model over distinct sides.

**A. Train on injected, test on hardware and the held-out kind (pairs as they stand)**

| train | test | pairs | length | barriers | opcode | +bigrams | side length | side +bigrams |
|---|---|---|---|---|---|---|---|---|
| all injected | variants | 970 | 0.335 | 0.665 | 0.500 | 0.496 | 0.500 | 0.484 |
| all injected | counterfactual | 76 | 0.796 | 0.204 | 0.500 | 0.500 | 0.500 | 0.492 |
| all injected | nofence | 92 | 0.500 | 0.500 | 0.511 | 0.467 | 0.500 | 0.512 |
| fence + reorder | **inject (held out)** | 364 | 0.000 | 0.500 | 0.551 | **0.828** | 0.500 | 0.783 |
| inject + reorder | **fence (held out)** | 357 | 0.000 | 0.000 | 0.500 | **0.824** | 0.496 | 0.657 |
| inject + fence | **reorder (held out)** | 261 | 0.500 | 0.500 | 0.500 | **0.709** | 0.500 | 0.638 |

Hardware rows for the three two-kind training sets are the same within 0.06 (opcode models 0.44 to 0.53).
The opcode models are at chance on hardware because they have almost nothing to score: only 52 of 195
mnemonic types in `variants` occur anywhere in the injected pairs (55% to 67% of occurrences; S6).

The held-out-kind rows are inflated by the shared leaking sides: an opcode-bigram model that never saw the
kind gets 0.71 to 0.83.

**B. Same, held-out kind limited to host clusters and core templates absent from training** (70/30 partition
of host clusters and of templates, pairs that mix the two parts dropped, 3 seeds)

| held-out kind | train pairs | test pairs | +bigrams | 95% half-width at this size |
|---|---|---|---|---|
| inject | 238 to 335 | 17 to 44 | 0.735, 0.419, 0.545 | 0.15 to 0.24 |
| fence | 243 to 341 | 17 to 45 | 0.618, 0.663, 0.644 | 0.15 to 0.24 |
| reorder | 283 to 388 | 10 to 31 | 0.650, 0.677, 0.550 | 0.18 to 0.31 |

Removing "cores or hosts that overlap hardware test programs" (the literal B) removes nothing, because there
is no overlap. The overlap that matters is inside the injected set, and removing it leaves too few test pairs.

**C. Group-by-base 60/20/20 inside every set** (hardware bases joint over the three hardware sets and
stratified by class; Linux by commit over both instruction sets; injected by the cross partition; 3 seeds)

| test part | pairs (bases) | length | barriers | opcode | +bigrams | side +bigrams |
|---|---|---|---|---|---|---|
| variants | 181 to 188 (29 to 30) | 0.665 | 0.665 | 0.665 | **0.934 to 0.955** | 0.969 to 0.980 |
| counterfactual | 13 to 16 (10 to 11) | 0.11 to 0.34 | same | 0.66 to 0.89 | **0.81 to 1.00** | 0.81 to 0.92 |
| nofence | 11 to 20 | 0.500 | 0.500 | 0.37 to 0.53 | 0.47 to 0.59 | 0.48 to 0.53 |
| linux | 19 to 25 | 0.90 to 0.97 | 0.52 | **0.95 to 1.00** | 0.92 to 0.97 | 0.93 to 0.97 |
| linux_arm64 | 13 to 21 | 1.000 | 0.97 to 1.00 | 0.93 to 0.96 | 0.92 to 0.98 | 0.98 |
| injected fence | 9 to 23 | 1.000 | 1.000 | 1.000 | 1.000 | 1.000 |
| injected inject | 9 to 22 | 0.000 | 0.500 | 0.78 to 0.86 | 0.77 to 0.86 | 0.67 to 0.75 |
| injected reorder | 6 to 14 | 0.500 | 0.500 | 0.500 | 0.50 to 0.63 | 0.52 to 0.60 |

With hardware programs in training, an opcode-bigram count solves `variants` (the leaking variants put their
barriers in one consecutive block, so the bigram `lfence>lfence` marks them) and most of `counterfactual`.
Training on hardware pairs alone gives the same numbers. 55% to 60% of injected pairs are dropped.

**D. Leave one set out** (train on every other set; D' also removes training pairs that share a base with the
test set)

| held-out set | pairs | length | barriers | opcode | +bigrams | note |
|---|---|---|---|---|---|---|
| variants (naive / D') | 970 | 0.665 | 0.665 | 0.396 / 0.500 | 0.643 / 0.485 | naive keeps 164 pairs from the same programs in training |
| counterfactual (naive / D') | 76 | 0.204 | 0.204 | 0.329 / 0.322 | 0.197 / 0.224 | D' removes 377 training pairs |
| nofence (naive / D') | 92 | 0.500 | 0.500 | 0.533 / 0.516 | 0.500 / 0.505 | D' removes 629 training pairs |
| injected | 982 | 0.496 | 0.682 | 0.718 | 0.480 | |
| linux (naive / D') | 105 | 0.910 | 0.510 | 0.100 / 0.414 | 0.181 / 0.605 | naive has the arm64 build of the same commits in training |
| linux_arm64 (naive / D') | 85 | 0.953 | 0.965 | 0.418 / 0.524 | 0.629 / 0.524 | |

Because the direction of each shortcut flips between sets, D mostly measures whether the held-out set's
shortcut happens to point the same way as the majority of the training sets.

## 4. Label sources and classes (S1, S6)

- No program is labelled by both hardware and the oracle (0 shared sequences), so the two label sources
  cannot be compared on this data. The one cross-check that exists is in
  `oracle/spec_emulator_validation.md`: a second tool (Unicorn-based emulator) agreed with the oracle on
  0.672 of injected leaking sides and 0.936 of safe sides, and 158 of 982 pairs could not be run, partly
  because the sequence does not assemble (for example `xorl %rsi, %rsi`). Some injected training programs are
  therefore not valid x86.
- Hardware labels are one CPU, 3 runs, unanimous by rule. Variants with mixed outcomes are absent from the
  files, so the benchmark holds only the clear cases.
- Class (`cls`):

| set | SPECTRE_V1 | SPECTRE_V4 | MDS | L1TF |
|---|---|---|---|---|
| variants (pairs / bases) | 287 / 38 | 116 / 21 | 192 / 32 | 375 / 63 |
| counterfactual | 19 / 11 | 28 / 14 | 6 / 6 | 23 / 23 |
| nofence | 18 / 18 | 17 / 17 | 14 / 14 | 43 / 43 |
| injected, linux, linux_arm64 | all | 0 | 0 | 0 |

  Every oracle-labelled pair is SPECTRE_V1 and the oracle harness used only models that mechanism. 814 of the
  1,138 hardware pairs are other mechanisms. Training on injected and testing on hardware is therefore, for
  72% of the test pairs, a test on a mechanism that was never in training.
- Class does not predict the label: at pair level both sides share the class; over distinct hardware sides a
  majority-per-class rule has balanced accuracy 0.500. In the upstream hardware records (including programs
  that formed no pair) the leaking share per class is L1TF 0.53, MDS 0.45, SPECTRE_V1 0.59, SPECTRE_V4 0.38.
- Dialect: every hardware side contains Revizor's masked access through `%r14`; 15 of 1,881 injected sides
  do. Hardware lines are space-separated objdump text with hexadecimal immediates; injected lines are
  tab-separated compiler text. `v57` training covers 100% of hardware mnemonics (it holds Revizor programs
  from 552 other violations); the injected pairs cover 55% to 67%.

## 5. Fresh generation (reading `eval/pairs/build.py`, `gen/minimality_gate.py`, `oracle/spectector_oracle.py`)

- Command: `python3 -m eval.pairs.build injected --n N --seed S --workers 8 [--controls F] [--cores F]`.
- Needs: Docker with the image `specdiscover-spectector:pinned` (present on this laptop, checked with
  `docker images`), the two input files, and the `gen/`, `spec/`, `v54/` modules. No hardware, no cluster.
  Up to 5 oracle calls per attempt (leaking side on the tainted victim and on its control, then each safe
  side). Work files go to `oracle/build/gate_min/`.
- It **overwrites** `eval/pairs/data/pairs_injected.jsonl` (fixed output path). Move the current file first or
  add an output argument.
- Random factors: host (uniform over 656), core (uniform over 111), position (uniform over 0..host length).
  The observed positions are spread evenly over the host (S1). Nothing else varies: the barrier always goes
  after the first core instruction, the reorder is always a full reversal.
- Capacity: about 2.1 million (host, core, position) combinations; 656 hosts fall into 180 near-duplicate
  clusters; 111 cores into 72 templates. Yield so far: 366 confirmed of 400 attempts; of those 357 gave a
  `fence` pair, 261 a `reorder` pair.
- More hosts and cores can be made with `gen/eval_gate_controls.py` and `gen/minimise_split.py` (both need the
  oracle; the second is capped at 40 leaks per source).
- **Can length be made uninformative?** Yes, with new safe or leaking sides that the same oracle call
  confirms. None of these exists yet and none was run:
  1. *Barrier moved* (replaces `fence`): leaking side = host + core + one `lfence` placed after the core's
     last instruction; safe side = the same with the `lfence` inside the core. Same length, same opcode
     multiset, one barrier on each side. This is the hardware `tail` against `twin` design.
  2. *Decoy* (replaces `inject`): safe side = host + a same-length group with the same mnemonics whose data
     dependency is broken (the second access no longer uses the register the first one loaded). 71 existing
     `reorder` pairs already have this form. Same length, same mnemonics, same memory-operand count.
  3. *Reorder*: keep as it is (all bars 0.500).
  The code change is in `injected_pairs` (two more entries in `sides`, and a leaking side that carries a
  barrier), plus storing position, core id and host source in each row.

## 6. Sizes and interval widths (S6)

Half-width of a 95% interval on the pair score, normal approximation. "By pairs" treats pairs as independent
(too narrow when a program contributes several pairs); "by bases" counts programs.

| test part | pairs | bases | at 0.5 by pairs / by bases | at 0.8 by pairs / by bases |
|---|---|---|---|---|
| variants | 970 | 154 | 0.031 / 0.079 | 0.025 / 0.063 |
| variants, SPECTRE_V1 | 287 | 38 | 0.058 / 0.159 | 0.046 / 0.127 |
| counterfactual | 76 | 54 | 0.112 / 0.133 | 0.090 / 0.107 |
| counterfactual, SPECTRE_V1 | 19 | 11 | 0.225 / 0.295 | 0.180 / 0.236 |
| nofence | 92 | 92 | 0.102 | 0.082 |
| nofence, SPECTRE_V1 | 18 | 18 | 0.231 | 0.185 |
| linux | 105 | 91 commits | 0.096 / 0.103 | 0.077 / 0.082 |
| linux_arm64 | 85 | 72 commits | 0.106 / 0.115 | 0.085 / 0.092 |
| injected reorder (existing, not content-clean) | 261 | 220 hosts | 0.061 / 0.066 | 0.049 / 0.053 |

All three hardware sets together are 158 independent programs.

## 7. Candidates compared

| | content leakage found | shortcut bars on the test part | sizes |
|---|---|---|---|
| **A** proposal | injected to hardware: none. Held-out kind: 355/357, 358/364, 261/261 pairs have their leaking side in training | hardware: barrier rule 0.665 / 0.204 / 0.500 (variants / counterfactual / nofence), positional rule 0.996 on variants, opcode models 0.44 to 0.53. Held-out kind: unseen-kind bigram model 0.71 to 0.83; in-set one-feature rule 1.000 for `fence` and `inject` | train 618 to 721 pairs in one connected group; hardware test 970 / 76 / 92; kind 261 to 364 |
| **B** A minus overlap | none left | bigram model 0.42 to 0.74 on the held-out kind, too noisy to read | train 238 to 388; held-out kind 10 to 45 pairs |
| **C** group-by-base everywhere | none by construction | variants 0.93 to 0.96 and counterfactual 0.81 to 1.00 from opcode bigrams; Linux 0.92 to 1.00; injected fence 1.000 | hardware test 29 to 30 programs; nofence 11 to 20 pairs; over half of injected dropped |
| **D** leave one set out | naive: hardware sets share 53/54 and 89/92 bases, Linux sets share 66 commits. D' removes them | opcode models at most 0.64 except injected 0.72; length 0.91 to 0.95 on Linux | full sets as test |
| **E** recommended (section 8) | none by construction | to be re-measured after regeneration; designed for 0.500 on length, barrier count, memory-operand count and opcode counts in training and in the injected test | section 8 |

## 8. Recommended split

Keep the idea of A (oracle-labelled pairs for training, hardware only for testing), fix the three problems.

**Regenerate the injected pairs first**, with these rules:

1. Partition the 180 host clusters (`v57.neardup.clusters` at 0.8 over the 656 eligible hosts) and the 72 core
   templates (`template` in `t1_cores.jsonl`) each into train / validation / test at 60 / 20 / 20, by
   `sha1(cluster id or template) mod 5` (0,1,2 train; 3 validation; 4 test).
2. Generate each part only from its own hosts and its own cores (three runs of the builder with filtered
   `--controls` and `--cores` files). No pair mixes parts, so no host and no core template crosses.
3. Kinds: `reorder`, *barrier moved*, *decoy* (section 5). Drop the current `fence` and `inject` kinds from
   training, or keep them only as extra test rows with their 1.000 bars printed beside them.
4. Drop any pair whose sides do not assemble (`llvm-mc`), given the 158 unrunnable pairs noted in section 4.
5. Re-run S3 and S4 on the new file. Accept it only if length, barrier count, memory-operand count, best
   single mnemonic and the boosted opcode model are within the interval of 0.500 on the validation part when
   fitted on the training part. Report the bigram model whatever it is (it can legitimately see order).

**Split:**

| part | contents | used for |
|---|---|---|
| train | injected pairs from train hosts x train cores, kinds *barrier moved* and *decoy* | fine-tuning |
| validation | injected pairs from validation hosts x validation cores, same kinds | early stopping, model choice. No hardware pair here |
| test 1, same kinds | injected pairs from test hosts x test cores, same kinds | did it learn the training task on unseen code |
| test 2, held-out kind | `reorder` pairs from test hosts x test cores only; `reorder` never in training | the "one kind held out whole" test, now without shared sides |
| test 3, hardware, primary | all of `nofence` (92 pairs, 92 programs) and `counterfactual` (76 pairs, 54 programs) | transfer to silicon where no rule is above 0.5 (`nofence`) or the barrier rule points the wrong way (`counterfactual`) |
| test 4, hardware, secondary | all of `variants` (970 pairs, 154 programs) | reported with the positional rule (0.996) and barrier count (0.665) on the same line |
| test 5, real code | `linux` (105), `linux_arm64` (85) | reported with length (0.910, 0.953) and single-token (0.910, 0.929) bars; the language model may have seen the commits |

Rules for reporting: hardware results per set and per class, with SPECTRE_V1 (the only trained mechanism)
as its own row; intervals by resampling the 158 violation ids, not pairs; every model row sits next to the
bars of section 3. If any hardware data is ever wanted for tuning, take whole violations out of all three
sets at once (`sha1(violation id) mod 5 == 0` gives 33 violations for tuning and 125 for testing: 752 / 61 /
72 test pairs) and stop reporting `variants` as a result for that model, because section 3c shows it is then
solved by opcode bigrams (0.93 to 0.96).

Target sizes: 1,500 to 2,000 training pairs, 300 validation, at least 400 pairs per injected test over the
roughly 130 test hosts and 22 test cores. That gives a half-width near 0.05 by pairs and 0.09 by hosts. The
hardware tests are fixed: about ±0.10 on `nofence`, ±0.11 to 0.13 on `counterfactual`, ±0.03 to 0.08 on
`variants`, and ±0.16 to 0.30 on any SPECTRE_V1-only hardware row.

**If nothing can be regenerated**, the only defensible use of the existing files is: train on `inject` +
`fence`, test on the hardware sets (content-clean), report the bars of section 3c, and do not report the
held-out `reorder` number as held out (0.709 from an opcode-bigram model that never saw it).

**What this split cannot rule out**

- Mechanism and dialect are confounded with the label source. A failure on hardware can mean the model did
  not learn what a leak is, or that it never saw L1TF / MDS / store-bypass programs, or that it never saw
  Revizor-style text. Only the SPECTRE_V1 rows separate the first from the second, and they are small
  (18 and 19 pairs on the primary sets).
- Hardware labels are one CPU and only unanimous cases.
- Oracle labels are one tool on one harness; a second tool disagreed on a third of leaking sides.
- Host windows from the same Debian function can land in different near-duplicate clusters; the source
  function is not recorded, so this cannot be checked today.
- Near-duplicate detection is by opcode multiset. It sees renamed registers as duplicates but cannot tell
  two different programs with the same opcodes apart, and it says nothing about what a language model saw in
  pretraining (Debian packages and kernel commits are public).
- The graph model starts from `v57` weights, which were trained on Revizor programs from 552 other
  violations (no shared id, no near-duplicate). It has seen the hardware dialect; the language model has not.

**To make it clean, in order of value**

1. Regenerate injected pairs as above (laptop, Docker, existing hosts and cores).
2. Record host source function, core id and position in each pair row; add an output path to the builder.
3. More fence-free hardware pairs. `nofence` is the only hardware set with no rule above 0.55 and it has 92
   pairs. The upstream file already has 56 more programs with a single label; they need the opposite-label
   variant run on the i5.
4. Oracle-labelled pairs for a second mechanism. `gen/decode.py` has a store-bypass victim
   (`GATE_ORACLE_VERSIONS` lists SPECTRE_V4), but there are no store-bypass cores yet.
5. A second label source on some programs of each kind (the Linux functions through the oracle harness, or
   injected pairs on hardware), so the two label sources can be compared at least once.
