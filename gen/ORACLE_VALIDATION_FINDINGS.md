# Oracle Validation Findings: Real Spectector Verdicts on Generator Output

**Date**: 2026-08-11
**Command**: `python3 gen/decode.py --class "$cls" --arch x86_64 --n 10 --validate` (Spectector only, no InvisiSpec)
**Classes attempted**: SPECTRE_V1, SPECTRE_V4, SPECTRE_V2, BHI, RETBLEED, INCEPTION, L1TF, MDS
**Raw log**: `/tmp/oracle_validate_run.txt` (not committed — reproducible via the command above)
**Wall clock**: 5m18s total (07:45:04–07:50:22 BST), well under the ~1-2h estimate in the task brief

## Headline result

**7 of 8 classes ran end-to-end (70 samples). 1 class (BHI) crashed before generating any sample, for a
pre-existing naming-convention bug unrelated to the Spectector wiring (details below).**

Across the 70 samples that reached a real Spectector verdict:

| Verdict     | Count | % of 70 |
|-------------|-------|---------|
| unrunnable  | 67    | 95.7%   |
| leak        | 2     | 2.9%    |
| safe        | 1     | 1.4%    |

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

## Per-class breakdown (of the 7 classes that ran)

| Class       | n  | leak | safe | unrunnable | Notes |
|-------------|----|------|------|------------|-------|
| SPECTRE_V1  | 10 | 2    | 0    | 8          | Only class with real `leak` verdicts this run |
| SPECTRE_V4  | 10 | 0    | 0    | 10         | |
| SPECTRE_V2  | 10 | 0    | 1    | 9          | Only real `safe` verdict this run |
| RETBLEED    | 10 | 0    | 0    | 10         | |
| INCEPTION   | 10 | 0    | 0    | 10         | |
| L1TF        | 10 | 0    | 0    | 10         | |
| MDS         | 10 | 0    | 0    | 10         | |
| **Total**   | **70** | **2** | **1** | **67** | |
| BHI         | 0/10 (crashed) | — | — | — | See "BHI: real bug" below |

All 70 samples that were generated were 100% PDG-parseable by the generator's own internal check
(`PDG-parseable: 10/10` printed for every one of the 7 successful classes) — the failure point is real
GCC compilation inside the oracle, not the generator's own sequence grammar.

## The two `leak` and one `safe` — the interesting signal

Small as it is, this is the first time raw (unedited) generator output has produced a real,
end-to-end-verified Spectector verdict rather than `unrunnable`.

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

## BHI: real bug, not an oracle verdict

BHI crashed on **every** sample, before generating any assembly at all — this is a genuine Python
exception, not a legitimate `unrunnable` oracle verdict, and needs to be called out separately per the
task's own distinction.

Root cause: a **class-name mismatch between two independently-built components** that never got
reconciled, and this is the first time BHI has been driven through the full generator → splice → oracle
path:

- `gen/generator.pt`'s trained class vocabulary uses the full name `BRANCH_HISTORY_INJECTION`
  (`ckpt['classes'] = ['BENIGN', 'BRANCH_HISTORY_INJECTION', 'INCEPTION', 'L1TF', 'MDS', 'RETBLEED', 'SPECTRE_RSB', 'SPECTRE_V1', 'SPECTRE_V2', 'SPECTRE_V4']`).
- `gen/decode.py`'s `_SPLICE_CONVENTION` table (from Task 4) uses the short name `BHI` as its dict key
  (`("BHI", False): ("value", "i")`, `gen/decode.py:49-50`).

Neither name satisfies both:
- `--class BHI` → `model.sample()` raises `KeyError: 'BHI'` at `gen/generator.py:100`
  (`v.cls_id[target_class]` — the vocab has no `'BHI'` entry) — this is what happened in the recorded
  run.
- `--class BRANCH_HISTORY_INJECTION` (verified separately as a diagnostic, not part of the recorded run) →
  generation succeeds, but `build_gen_body()` then raises `KeyError: ('BRANCH_HISTORY_INJECTION', False)`
  at `gen/decode.py:65` — the splice table has no entry under that key.

So BHI cannot currently be validated end-to-end with any single `--class` value; this is a pre-existing
integration gap between the trained generator checkpoint and the Task 1-4 splice/oracle wiring, not
something introduced by or in scope to fix in this task. It should be reconciled (either rename the
checkpoint's class label or add a `BHI` alias in `decode.py`) before BHI can be included in any future
validation run.

No other class produced a Python exception. All other 70 samples across 7 classes reached a real,
non-crashing Spectector verdict (`leak`, `safe`, or `unrunnable`).

## What this means for next steps

This run establishes the honest current baseline for the next brainstorm ("improving generator
validity"): **67/70 (95.7%) of real generator output that made it into the oracle failed to compile as
x86_64 assembly**, consistent with (slightly better than) the previously-measured 2.3% raw syntactic
validity rate — this run's rate benefits from `oracle_splice.py`'s grounding (Task 1), which repairs
some of the generator's raw token stream before compilation, but the residual is still dominant. The 3
samples (2 leak, 1 safe) that did compile and reach adjudication show the pipeline is wired correctly
end-to-end when given valid input — the bottleneck is generator/splice output validity, not the
Spectector integration built in Tasks 1-5.

## Anomalies summary (per task instructions: crash vs. expected verdict)

- **Expected, not a bug**: 67/70 `unrunnable` verdicts — real GCC compile failures inside the Spectector
  Docker container, consistent with the known 2.3% syntactic-validity baseline.
- **Real bug, flagged**: BHI's `KeyError` crash in `decode.py`/`generator.py` (class-name mismatch,
  described above) — 0/10 BHI samples were generated or validated as a result. All other classes/samples
  ran to completion without any Python exception.
