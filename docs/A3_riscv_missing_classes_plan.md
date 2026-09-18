# A3 — close the missing RISC-V attack classes (L1TF, MDS, SPECTRE_V2)

**Goal:** give RISC-V an idiomatic, gate-passing ATTACK sample for the three
classes it currently has zero of, so the leave-one-ISA-out eval (A4) can report
per-class transfer for them instead of "no data".

**Status of the gap (measured):** the idiomatic riscv attack corpus has
SPECTRE_V1(12), RETBLEED(10), SPECTRE_RSB(6), SPECTRE_V4(5), BHI(4) — and
**L1TF=0, MDS=0, SPECTRE_V2=0**. Root cause: the existing PoC C for these
(`l1tf.c`, `mds.c`, `spectre_2.c`) uses x86-only inline asm / intrinsics
(`callq *%0`, `mfence`, `_mm_lfence`, `clflush`, `rdtsc`) that cannot compile to
riscv64, so the harvester (`gen/harvest_riscv_from_cvulns.py`) drops them.
`spectre_2.c`'s exclusion is now documented in that file (commit e5c3774).

---

## The honesty framing (decide this FIRST — it sets each class's weight)

There is **no RISC-V speculation oracle** (Spectector is x86-symbolic; Revizor
is x86 hardware). So every riscv attack label here is **provenance-based**
(compiled from a known-class portable gadget), never oracle-verified. On top of
that, the three classes differ in how "real" a RISC-V version even is:

| class | is a RISC-V version real? | claim it supports |
|---|---|---|
| **SPECTRE_V2** (branch target injection) | **Yes** — indirect branches exist on RISC-V; BTI-style speculation is cross-ISA-real | genuine cross-ISA attack transfer |
| **L1TF** (L1 terminal fault) | **No** — Intel-microarchitecture-specific (L1D + present-bit) | STRUCTURAL-shape transfer only |
| **MDS** (microarch data sampling) | **No** — Intel fill/store-buffer-specific | STRUCTURAL-shape transfer only |

**Consequence:** V2 is worth authoring as a real transfer result. L1TF/MDS can
only be authored as *structural analogs* — "does the detector recognize the code
SHAPE of an L1TF/MDS gadget when compiled to RISC-V", NOT "RISC-V is vulnerable
to L1TF". The paper must say exactly that; otherwise it overclaims. Recommend:
**prioritize V2; do L1TF/MDS structural analogs only if time allows**, and label
them "structural transfer" everywhere.

---

## Plan

### A3.1 — Author portable gadget C (no x86 asm/intrinsics)
Write into `c_vulns/c_code/`, using the existing portable shim
(`utils.c` / `utils_riscv.c`: `probe_array`, `CACHE_LINE_SIZE`, a portable
compiler barrier — NOT `_mm_*`). Each file keeps the class-DEFINING structure so
the compiler emits the right shape, and transmits via a portable array-index
probe (`probe_array[secret * CACHE_LINE_SIZE]`), no `clflush`/`rdtsc`:

- **`spectre_v2_portable.c`** (SPECTRE_V2, real): a function-pointer indirect
  call whose target is speculatively mistrained, the mis-speculated callee doing
  the probe-array transmit. Keep the indirect `call` (compiler emits `jalr` on
  riscv) — that is the class-defining structure.
- **`l1tf_portable.c`** (L1TF, structural): the L1TF SHAPE — a
  page-probe indexed load (`probe_array[(*ptr) << shift]`) behind a
  fault-suppressed / speculatively-reached load. No PTE manipulation (can't on
  riscv); just the structural indexed-load-after-speculative-load idiom.
- **`mds_portable.c`** (MDS, structural): the MDS SHAPE — a load that samples a
  transient value then transmits it via the probe array, no `verw`.

Constraints for each: compiles clean with `riscv64-*-gcc -S -O{0,2}
-ffreestanding` through the harvest shim; contains no x86 mnemonic/intrinsic;
the gadget function is `__attribute__((noinline))` so it survives as its own
function for per-function extraction.

### A3.2 — Register in the harvester
Add to `FILE_CLASS` in `gen/harvest_riscv_from_cvulns.py`:
`"spectre_v2_portable.c": "SPECTRE_V2"`, `"l1tf_portable.c": "L1TF"`,
`"mds_portable.c": "MDS"`. (Leave the un-portable `spectre_2.c`/`l1tf.c`/`mds.c`
excluded and documented.)

### A3.3 — Harvest + gate (the acceptance bar)
Run `python3 gen/build_riscv_attack_corpus.py --apply` (A1 driver). Each new
class must clear **three gates** or it is not admitted:
1. **compiles** to riscv64 (harvest reports it as kept, not compile_fail),
2. **idiomaticity**: `eval/isa_independence_check.py` per-class verdict is NOT
   FAIL (not an ARM/x86 transliteration — the whole point),
3. **neutralization**: no class-naming token survives (harvest already checks).
If a class fails a gate, iterate the C (or drop it and keep the gap honest).

### A3.4 — Fold in + re-run the powered eval
Rebuild training with the grown corpus and re-run the A4 multi-seed
leave-one-ISA-out (`eval/loio_multiseed.sbatch`). Report per-class riscv recall
+ benign-FP with CIs for the newly-covered classes alongside the existing five.

### A3.5 — Write it up honestly
In the results doc: V2 as genuine cross-ISA attack transfer; L1TF/MDS as
structural-shape transfer (explicitly not a claim that RISC-V is vulnerable to
Intel-uarch attacks); all riscv labels provenance-based (no riscv oracle).

---

## Effort / priority
- **V2 portable gadget:** small (one file + gate + fold). Highest value — a real
  result. **Do first.**
- **L1TF/MDS structural analogs:** moderate; weaker (structural-only) claim.
  Optional — do if the V2 result lands and time allows, else scope both as
  future work with this document as the rationale.

## Acceptance
A class is "closed" only when it compiles, passes the per-class idiomaticity
gate, and shows a per-class recall number (with CI, even if low) in
`eval/loio_multiseed.md`. Anything short of that stays listed as an open gap —
do not report a class as covered on provenance alone.

## Non-goals
- No RISC-V speculation oracle (out of scope; would be its own project).
- No claim that RISC-V hardware is vulnerable to L1TF/MDS.
