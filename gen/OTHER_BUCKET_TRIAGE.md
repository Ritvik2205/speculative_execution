# Generator "other" failure bucket — triage and the dominant fix

*2026-08-30. Follow-up to `gen/SYNTACTIC_FAILURE_CATEGORIZATION.md`, which named
the bucket but did not open it.*

## What was unknown

`categorize_failure()` sorts every llvm-mc rejection into three buckets;
`other` is the fall-through — **52.4% of all malformed instructions (7,568)** —
and it carried no account of *why* llvm-mc rejects those, because the categorizer
only ever pattern-matched the instruction text, never llvm-mc's own diagnostic.

## Method

`gen/triage_other_failures.py` re-samples the generator, and for every
instruction that lands in `other` it captures llvm-mc's actual stderr
(`ExternalOracle.assemble_error`, added for this) and clusters by a normalized
form of the diagnostic (numbers/registers/symbols masked). It also asks, per
failure, whether the mnemonic is even a real instruction for that ISA (via the
spec's canonical vocabulary), separating a Realizer operand bug from a generator
vocabulary bug. Run: `n=100`, 6,468 `other` instructions.

## What the bucket actually is

| share | llvm-mc diagnostic | root cause |
|---|---|---|
| **70.4%** | `invalid operand for instruction` | **x86 register-width vs size-suffix mismatch** (below) |
| 9.0% | `unrecognized instruction mnemonic` | symbol in mnemonic position (`main_func`, `inception_train_arm`) + cross-ISA leak |
| 8.2% | `index must be an integer in range` | ARM `ldur/stur [xN, xM]` — needs `[xN, #imm]`, Realizer emits a register index |
| 6.1% | `invalid instruction mnemonic 'X'` | cross-ISA leak: ARM `ldur` emitted in x86 output |
| 1.7% | `without a size suffix` | cross-ISA leak: ARM `str` in x86 output |
| ~4.5% | long tail | mixed |

Root-cause split: **84.5% known mnemonic / wrong operands** (a Realizer bug),
15.5% a token that is not a valid mnemonic at all (a generator/vocabulary bug —
call-target symbols and cross-ISA mnemonics).

## The dominant cause, verified

70.4% of the bucket is one bug. The x86 register pool in `spec/x86_64.json` is
all 64-bit (`%rax`…`%r13`), and the Realizer picks from it regardless of the
opcode's AT&T size suffix, so a 32-bit mnemonic gets a 64-bit register:

```
movl  (%rsi), %rcx     -> rejected   (movl dest must be 32-bit: %ecx)
addl  $16, %r10        -> rejected   (addl dest must be 32-bit: %r10d)
movzbl (%r11,%rcx),%rsi-> rejected   (movzbl dest must be 32-bit: %esi)
```

Substituting the width-matched register makes llvm-mc accept every one —
confirmed directly, not inferred.

## The fix (`gen/realize.py`, spec-driven)

`spec/x86_64.json`'s `realize` block gains a `register_widths` table (each
64-bit register → its b/w/l/q variants), a `suffix_width_index`, a
`width_suffix_stems` allowlist, and `mixed_width_prefixes` for `movz`/`movs`. The
Realizer, when an opcode carries a real size suffix, maps each **register**
operand to the matching width — the last operand to the destination width, the
rest to the source width (they differ only for `movz`/`movs`). Registers inside
memory operands are left 64-bit, as x86-64 addressing requires.

It stays ISA-neutral: arm64 and riscv64 have no such table, so their realization
is byte-for-byte unchanged (regression-checked). The `width_suffix_stems`
allowlist prevents reading `call`/`sal`/`mul` as if their trailing letter were a
size suffix.

## Measured effect

Controlled A/B, both arms n=50 (1,000 sequences × 2 archs), same script, only
`gen/realize.py` + the `spec/x86_64.json` realize block differ:

| metric | before | after | delta |
|---|---|---|---|
| per-instruction validity | 81.1% | 87.9% | +6.8pp |
| &nbsp;&nbsp;x86_64 | 82.9% | **94.5%** | **+11.6pp** |
| &nbsp;&nbsp;arm64 | 78.5% | 78.6% | +0.1pp (unchanged — fix is x86-only) |
| **per-sequence (all instructions valid)** | **3.5%** | **21.5%** | **+18pp, 6.1x** |

The arm64 flatline is the control: the fix touches only x86 realization and
leaves arm64 byte-for-byte identical, so its +0.1pp is noise, and the x86 and
per-sequence gains are attributable to the fix rather than to sampling. The
per-sequence multiplier is the largest because a sequence needs *every*
instruction to assemble, so removing the single dominant per-instruction cause
compounds across the ~25 instructions in a gadget.

`gen/SYNTACTIC_FAILURE_CATEGORIZATION.md` argued per-sequence validity could not
get far off its floor while per-instruction sat near 80%. That still holds — 87.9%
per-instruction is not near the ~99% a usable generator needs — but this fix moved
the floor itself 6x, and it did so at the Realizer, with no retraining.

## What remains in the bucket, ranked

After this fix the residual `other` failures are, in order: cross-ISA mnemonic
leakage (ARM `ldur`/`str` emitted for x86 and x86 `movq`/`popq` for arm — a
generator vocabulary/conditioning bug, not a Realizer bug), symbol tokens in
mnemonic position (`main_func`, `inception_train_arm`), and ARM register-indexed
addressing on `ldur`/`stur` (which require an immediate offset). These are the
next targets; the largest, cross-ISA leakage, is the same purity gap already
recorded against `isa_purity()`.

