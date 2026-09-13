# Idiomatic RISC-V corpus — independence evidence (Task 5.2)

## What this is

`gen/harvest_idiomatic_riscv.py` compiles real C with a real RISC-V toolchain
(`riscv64-elf-gcc`, Homebrew bare-metal ELF target) instead of transliterating
another ISA's assembly. Output: `eval/data/idiomatic_riscv.jsonl`.

This exists because the earlier bigram independence test
(`eval/isa_independence_check.py`) rejected the default `riscv_corpus/` as a
transliteration of arm64: a one-sided sign test over shared classes found it
systematically closer to arm64 than two genuinely independent corpora
(x86_64, arm64) are to each other — **6/6 classes, p = 0.0156**. A transfer
claim cannot rest on that corpus. This is the honest replacement.

Toolchain note: the plan text names `riscv64-linux-gnu-gcc`; the verified,
available compiler in this environment is `riscv64-elf-gcc`. It targets
bare-metal ELF (no libc), so every source is compiled `-S` (assembly only) —
files needing stdio/pthread fail to compile and are **skipped and counted**,
never faked.

## Compile coverage

### Attack side — `c_vulns/c_code/*.c` (portable gadget cores)

Of the 28 `.c` files in `c_vulns/c_code/`, only 9 are portable, arch-neutral
gadget sources (the rest are `_arm64`/`_x86` variants with inline asm, or
`utils.c`/`utils_arm64.c` harness code — not candidates for a riscv64 compile
by construction, same scoping as the existing `gen/harvest_riscv_from_cvulns.py`):

| file | class | O0 | O2 | kept after structural check |
|---|---|---|---|---|
| `spectre_1.c` | SPECTRE_V1 | ok | ok | yes |
| `spectre_github.c` | SPECTRE_V1 | ok | ok | yes |
| `spectre_2.c` | SPECTRE_V2 | ok | ok | **no** — compiles, but no window retains an indirect-call site after neutralization (structural check rejects all 6 candidate windows) |
| `spectre_rsb.c` | SPECTRE_RSB | ok | ok | yes |
| `spectre_v4.c` | SPECTRE_V4 | ok | ok | yes |
| `l1tf.c` | L1TF | **fail** | **fail** | — (riscv shim gap: this source needs page-probe primitives the current `qemu_data/riscv_shim/utils_riscv.c` doesn't provide; a known, previously-documented scoping gap, not new) |
| `mds.c` | MDS | **fail** | **fail** | — (same shim gap) |
| `retbleed.c` | RETBLEED | ok | ok | yes |
| `bhi.c` | BRANCH_HISTORY_INJECTION | ok | ok | yes |

**7/9 portable sources compile; 6/9 (5 classes) survive structural
verification and are kept.** L1TF and MDS do not compile with the current
shim (pre-existing gap — see `SPECDISCOVER_QEMU_DATA_PLAN.md`); SPECTRE_V2
compiles but every window fails the structural check (no `CALL_IND` survives
in this source at O0/O2), so it contributes zero records rather than being
faked. INCEPTION has no portable riscv64-compilable source at all (its only
variants are `_arm64`/`_x86` with architecture-specific inline asm).

Result: **19 attack records**, 5 classes (SPECTRE_V1: 6, RETBLEED: 5,
SPECTRE_RSB: 4, SPECTRE_V4: 2, BRANCH_HISTORY_INJECTION: 2), 12 source
families (`{stem}:{function}`), O0+O2, deduplicated by sequence hash.

### Benign side — real third-party C (mbedTLS)

Compiled `vendor_riscv/Security-RISC/mbedtls-key-leak/mbedtls/library/*.c`
(a real, third-party, non-project crypto library — not code we wrote or
transliterated) at O0/O2, capped at 6 kept functions per file for diversity.

- 68 library files available; **28 files** yielded records within budget
  (54 compile attempts succeeded, 60 failed — mostly files needing
  config/build-generated headers this stub toolchain doesn't provide).
- Result: **162 BENIGN records**, 28 source-file families.

### Combined corpus

`eval/data/idiomatic_riscv.jsonl`: **181 records** — 19 attack (5 classes) +
162 BENIGN, 40 total families. Every record tagged `arch="riscv64"`,
`external_source="idiomatic_riscv"`, and neutralized with the same
`_neutralize`/`clean_seq` pipeline (`v54/build_dataset.py`) used for every
other ISA in this project.

## Independence test result

`eval/isa_independence_check.py`'s per-class canonical-op bigram
Jensen-Shannon divergence + one-sided sign test, run on both corpora against
the same x86_64/arm64 training-data reference
(`tests/eval/test_idiomatic_riscv_independence.py` reproduces this
programmatically):

| corpus | shared classes (n) | classes closer-to-arm64 | sign-test p |
|---|---|---|---|
| **transliterated** (`riscv_corpus/`, default) | 6 (BHI, INCEPTION, RETBLEED, SPECTRE_RSB, SPECTRE_V2, SPECTRE_V4) | 6/6 | **0.0156** |
| **idiomatic** (`eval/data/idiomatic_riscv.jsonl`) | 5 (BHI, RETBLEED, SPECTRE_RSB, SPECTRE_V1, SPECTRE_V4) | 4/5 | **0.1875** |

(Attack-only idiomatic corpus, i.e. before adding benign records, gives an
even cleaner p=0.5000, 3/5 — the benign mbedTLS records pull the pooled
result down to 0.1875 because mbedTLS's own instruction-ordering happens to
sit slightly closer to the arm64 training distribution on average; still far
above the 0.05 rejection threshold and above the transliterated baseline.)

Both sign tests have power to detect a signature at this class count
(floor = 0.5^n ≤ 0.03125 < 0.05 for both n=5 and n=6), so neither result is a
free pass from being underpowered.

**Interpretation:** the idiomatic corpus does **not** reject ISA-independence
— its per-class bigram ordering does not show the transliterated corpus's
systematic 6/6 lean toward arm64. This is the acceptance gate the plan sets
for Task 5.2, and it is met: p=0.1875 (idiomatic) is materially weaker than
p=0.0156 (transliterated), and the idiomatic corpus does not itself reach
significance in the opposite direction — consistent with "genuinely
independent codegen," not with "still secretly arm64-shaped."

## Honest limits — can this back a transfer claim?

**Only a measured, limited one — not a strong one.** Concretely:

- The attack side is **19 records across 5 of 9 vulnerability classes** (no
  INCEPTION, L1TF, MDS, SPECTRE_V2 attack coverage at all in this corpus —
  L1TF/MDS fail to compile with the current shim, SPECTRE_V2 fails structural
  verification, INCEPTION has no portable source). A per-class transfer claim
  can only be made for BHI, RETBLEED, SPECTRE_RSB, SPECTRE_V1, SPECTRE_V4, and
  even there n is small (2-6 records, 1-2 source families each) — enough to
  clear the independence bar, not enough to bound a recall estimate tightly.
- 12 attack families total means the bootstrap CI on the divergence numbers
  above is wide; the point estimates are more informative than the CIs.
- BENIGN coverage (162 records, 28 families) is comparatively strong and is
  exactly the piece whose absence previously caused the RISC-V benign
  false-positive rate to collapse (see MEMORY "RISC-V generalisation") — this
  corpus's main practical value is a genuinely idiomatic BENIGN reference,
  more than a broad attack reference.
- This corpus should be treated as **validation/gate evidence that the
  RISC-V-native code is not transliteration-shaped**, not as a training set
  and not as a statistically powered per-class recall benchmark. Following
  the pattern of `spec/data/riscv_real_validation.jsonl` and
  `spec/data/riscv_benign_validation.jsonl`, it should not be trained on
  without a deliberate decision to do so.

## Reproduce

```bash
python3 gen/harvest_idiomatic_riscv.py --apply
python3 eval/isa_independence_check.py --riscv-jsonl eval/data/idiomatic_riscv.jsonl
python3 eval/isa_independence_check.py   # default = transliterated baseline
python3 -m pytest tests/eval/test_idiomatic_riscv_independence.py -v
```
