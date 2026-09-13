# Oracle Validation Findings: Real Spectector Verdicts on Generator Output

**Date**: 2026-08-11
**Command**: `python3 gen/decode.py --class "$cls" --arch x86_64 --n 10 --validate` (Spectector only, no InvisiSpec)
**Classes**: SPECTRE_V1, SPECTRE_V4, SPECTRE_V2, BHI, RETBLEED, INCEPTION, L1TF, MDS
**Raw log**: `/tmp/oracle_validate_run.txt` (main run) + `/tmp/oracle_bhi_rerun.txt` (BHI re-run after the
fix below) — neither committed, both reproducible via the command above
**Wall clock**: 5m18s (main 7-class run, 07:45:04–07:50:22 BST) + a further ~10s (BHI re-run, n=10), well
under the ~1-2h estimate in the task brief

## Headline result

**All 8 classes now have real, end-to-end Spectector data (80 samples total).**

The first pass through this run hit a real bug: BHI crashed on every sample (`KeyError`, not an oracle
verdict) due to a class-name mismatch between `gen/generator.pt`'s trained vocab
(`BRANCH_HISTORY_INJECTION`) and `gen/decode.py`'s `_SPLICE_CONVENTION` table (keyed on the short form
`BHI`). That bug was root-caused, fixed with a one-line alias
(`_GEN_VOCAB_ALIAS = {"BHI": "BRANCH_HISTORY_INJECTION"}`, used only for the `model.sample(...)` call —
`_SPLICE_CONVENTION`, file names, and gadget ids all keep using the short form `BHI` unchanged), verified
against a single sample, and BHI was then re-run for the full `n=10` to produce real data. Full history in
the "BHI: naming bug found and fixed" section below.

Across all 80 samples (8 classes × 10), now all real Spectector verdicts:

| Verdict     | Count | % of 80 |
|-------------|-------|---------|
| unrunnable  | 73    | 91.25%  |
| safe        | 4     | 5.0%    |
| leak        | 3     | 3.75%   |

`unsupported` is not a distinct verdict emitted by `SpectectorValidator` — it's folded into `unrunnable`
(any Spectector status outside the adjudicated set, a missing path, or `unsupported_ins > 0` all map to
`UNRUNNABLE`; see `oracle/spectector_oracle.py:176-190`). So the four-way bucket in the task brief
(leak/safe/unrunnable/unsupported) collapses to three in practice.

**This confirms the plan's own prediction: `unrunnable` dominates, consistent with the independently
measured 2.3% raw syntactic-validity baseline in `eval/check_syntactic_validity_results.txt`.** The
generator emits PDG-parseable, well-formed *token sequences* (100% "parseable=True" per the tool's own
internal parser — see below) but the realized/spliced inline-asm frequently fails to compile under real
GCC (`x86_64-linux-gnu-gcc -O0 -S -fcf-protection=none`) inside the Spectector Docker container — bogus
operand forms (e.g. `movl (%r13), $0`, `ret $4096`, immediates used as MOV destinations), or symbolic
label/placeholder tokens (`.L0`, `<fn>`) that don't resolve to anything meaningful once spliced into a
real function body. That's a real compiler failure, not an oracle bug — `unrunnable` here is the correct,
informative verdict for "the generator produced something the toolchain couldn't accept as x86_64
assembly."

## Per-class breakdown (all 8 classes, real data)

| Class       | n  | leak | safe | unrunnable | Notes |
|-------------|----|------|------|------------|-------|
| SPECTRE_V1  | 10 | 2    | 0    | 8          | |
| SPECTRE_V4  | 10 | 0    | 0    | 10         | |
| SPECTRE_V2  | 10 | 0    | 1    | 9          | |
| BHI         | 10 | 1    | 3    | 6          | Re-run after the naming-bug fix; most `safe` verdicts of any class |
| RETBLEED    | 10 | 0    | 0    | 10         | |
| INCEPTION   | 10 | 0    | 0    | 10         | |
| L1TF        | 10 | 0    | 0    | 10         | |
| MDS         | 10 | 0    | 0    | 10         | |
| **Total**   | **80** | **3** | **4** | **73** | |

All 80 samples were 100% PDG-parseable by the generator's own internal check (`PDG-parseable: 10/10`
printed for every one of the 8 classes) — the failure point is real GCC compilation inside the oracle, not
the generator's own sequence grammar.

## The three `leak` and four `safe` — the interesting signal

Small as it is, this is the first time raw (unedited) generator output has produced real,
end-to-end-verified Spectector verdicts rather than `unrunnable`.

**SPECTRE_V1 sample 6** (28 instrs → 24-instr realized/spliced form) — `leak` (signal=21.0):
```
pushq %rcx
movq  %rdi, %r9
movq  %rax, (%rcx)
cmpq  $64, (%r13)
jae   .L0
cltq
andq  (%rdx), %rax
cmpq  %r11, (%r13)
jne   .L0
leaq  <fn>, %r10
movq  (%r11), %r13
addq  %rbx, %rax
movzbl (%rbx), %r13
movzbl .L0, %rdx
sall  $1, %r8
cltq
leaq  <fn>, %rbx
movzbl (%rdi,%rbx), %rax
movzbl (%r11), %rax
andl  %rdx, %rcx
movb  .L0, (%r13)
subl  $1, (%r9)
popq  %rdx
ret
```

**SPECTRE_V1 sample 8** (22 instrs) — `leak` (signal=25.0):
```
pushq %rdi
movq  %r8, %rcx
movq  %rax, (%r11)
movq  (%r9), %rax
movq  %r11, (%rbx)
movq  (%r13), %r8
movq  (%rdx), %rdi
cmpq  (%rdi), %r10
jae   .L0
movq  (%r11), %rcx
leaq  <fn>, %r13
movzbl (%r12,%rdx), %rax
shll  $64, %rcx
movslq %rdi, %r11
movq  (%rsi), %rbx
movzbl (%r11,%r9), %rcx
movzbl (%rax), %r10
andl  %r12, %r8
movb  %r11, %r10
movb  %rsi, (%r13)
popq  %rdi
retq
```

Both are the classic Spectre-V1 shape: a bounds-style compare (`cmpq`/`jae`/`jne` branch-then-misspeculate)
followed downstream by an indexed load that gets probed. That both hits landed on SPECTRE_V1 specifically
is unsurprising — it's the class the generator/splice conventions were originally validated against in
Task 5, and the class with the most direct, single-hop "compare → index → load" shape that survives
random token realization into compilable code.

**SPECTRE_V2 sample 6** (28 instrs) — `safe` (signal=0.0):
```
pushq %r9
pushq %rdx
pushq %r13
pushq %rax
pushq %r12
movq  %rax, %r11
movq  %r8, %r12
movq  %rbx, %rdi
movq  %rbx, %rsi
movl  $1, %r12
callq %rsi
addl  $0xff, %r8
jne   .L0
cmpb  $64, (%rax,%r11)
js    .L0
movq  %r9, %rax
popq  %r11
popq  %rbx
popq  %r13
popq  %r8
popq  %rdx
jmpq  %rsi
popq  %rdi
popq  %r13
popq  %r9
popq  %r11
popq  %rcx
retq
```
This one compiled and ran through Spectector's symbolic analysis to completion with a genuine `safe`
(non-leaking) verdict — a useful negative control showing the pipeline doesn't just fail-open to
"unrunnable" for everything; it can and does reach a real adjudicated verdict either way when the
realized assembly happens to be valid.

**BHI sample 7** (8 instrs, from the post-fix re-run) — `leak` (signal=21.0):
```
pushq %r11
movq  %rbx, %r9
movq  (%rdx), %rdi
movq  (%rdi), %r10
movq  (%r11), %rcx
movl  $256, %rax
popq  %r12
jmpq  %rcx
```
BHI's real leak is a short indirect-jump/indirect-branch chain (`movq (%r11), %rcx` → `jmpq %rcx`) — the
value-based splice convention (`("BHI", False): ("value", "i")`) fed a secret-derived value into an
indirect branch target, which is exactly the BHI/indirect-branch-injection shape, distinct from SPECTRE_V1's
compare-then-load shape above.

BHI also produced 3 `safe` verdicts (samples 4, 5, 10 in `/tmp/oracle_bhi_rerun.txt`) — more real
adjudicated verdicts than any other single class in this run, once it was actually able to run.

## BHI: naming bug found, root-caused, and fixed mid-task

The first pass of this run (documented above as the original 7-class result) hit BHI crashing on **every**
sample with a Python `KeyError` before generating any assembly — a genuine bug, not a legitimate
`unrunnable` oracle verdict. This section keeps that history rather than erasing it, since it's a real
finding from this task, not just a footnote.

**Root cause**: a class-name mismatch between two independently-built components, first surfaced because
this was the first time BHI had been driven through the full generator → splice → oracle path:

- `gen/generator.pt`'s trained class vocabulary uses the full name `BRANCH_HISTORY_INJECTION`
  (`ckpt['classes'] = ['BENIGN', 'BRANCH_HISTORY_INJECTION', 'INCEPTION', 'L1TF', 'MDS', 'RETBLEED', 'SPECTRE_RSB', 'SPECTRE_V1', 'SPECTRE_V2', 'SPECTRE_V4']`).
- `gen/decode.py`'s `_SPLICE_CONVENTION` table (from Task 4) uses the short name `BHI` as its dict key
  (`("BHI", False): ("value", "i")`, `gen/decode.py:49-50`).

Neither name alone satisfied both:
- `--class BHI` → `model.sample()` raised `KeyError: 'BHI'` at `gen/generator.py:100`
  (`v.cls_id[target_class]` — the vocab has no `'BHI'` entry) — this is what happened in the originally
  recorded run.
- `--class BRANCH_HISTORY_INJECTION` (checked separately as a diagnostic to confirm the root cause) →
  generation succeeded, but `build_gen_body()` then raised `KeyError: ('BRANCH_HISTORY_INJECTION', False)`
  at `gen/decode.py:65` — the splice table has no entry under that key.

**Fix applied** (in `gen/decode.py`): a one-line alias dict next to `_SPLICE_CONVENTION`,

```python
_GEN_VOCAB_ALIAS = {"BHI": "BRANCH_HISTORY_INJECTION"}
```

used only at the `model.sample(...)` call site (`_GEN_VOCAB_ALIAS.get(args.cls, args.cls)`), so the
generator sees the checkpoint's real vocab name. `_SPLICE_CONVENTION`, `build_gen_body(...)`, and all
gadget/file ids continue to use `args.cls` (the short form `BHI`) unchanged — that table's `("BHI", ...)`
entries were already correct and untouched.

**Verification**: `python3 gen/decode.py --class BHI --arch x86_64 --n 1 --validate` was re-run after the
fix and completed with a real Spectector verdict (`safe`, signal=0.0), no exception. BHI was then re-run
at the original `n=10` to produce the real per-class counts folded into the totals above. `tests/gen/`
(33 tests, unchanged count) was re-run after the fix and passed in full — the alias addition did not
regress any existing behavior.

No other class (SPECTRE_V1, SPECTRE_V4, SPECTRE_V2, RETBLEED, INCEPTION, L1TF, MDS) produced a Python
exception at any point in this task.

## What this means for next steps

This run establishes the honest current baseline for the next brainstorm ("improving generator
validity"): **73/80 (91.25%) of real generator output that made it into the oracle failed to compile as
x86_64 assembly**, consistent with (slightly better than) the previously-measured 2.3% raw syntactic
validity rate — this run's rate benefits from `oracle_splice.py`'s grounding (Task 1), which repairs
some of the generator's raw token stream before compilation, but the residual is still dominant. The 7
samples (3 leak, 4 safe) that did compile and reach adjudication show the pipeline is wired correctly
end-to-end when given valid input, across multiple classes (SPECTRE_V1, SPECTRE_V2, BHI) — the bottleneck
is generator/splice output validity, not the Spectector integration built in Tasks 1-5.

**See also `gen/SYNTACTIC_FAILURE_CATEGORIZATION.md`** for a follow-up, larger-scale (2000-sample)
breakdown of exactly *why* generator/splice output fails to compile: it splits the raw syntactic
failures into `unresolved_placeholder` (itself two distinct sub-causes — literal unresolved `<fn>`
tokens, and `.L`-label tokens misused in non-branch-target operand slots), `operand_type_violation`,
and a majority `other` bucket. The most consequential single finding there is that a handful of
`other`-bucket failures are **ARM64 mnemonics (`ldr`, `ldrsb`) leaking into x86_64-targeted output**
— and that this leak class evades the project's existing `isa_purity()` guard
(`gen/train_generator.py:61`) because its `_ARM_ONLY` opcode set (`v54/inline_features.py:48-50`)
doesn't include `ldr`/`ldrsb`/`ldur`/`str`/`stur`, meaning the previously recorded 97.6%/96.1%
ISA-purity figures are likely over-optimistic for this specific leak family.

## Anomalies summary (per task instructions: crash vs. expected verdict)

- **Expected, not a bug**: 73/80 `unrunnable` verdicts — real GCC compile failures inside the Spectector
  Docker container, consistent with the known 2.3% syntactic-validity baseline.
- **Real bug, found and fixed within this task**: BHI's `KeyError` crash in `decode.py`/`generator.py`
  (class-name mismatch, described above) initially produced 0/10 BHI samples. Root-caused, fixed with a
  one-line vocab alias, verified, and BHI was re-run to get real data — now included in the totals above.
  All other classes/samples ran to completion without any Python exception, both before and after the fix.
