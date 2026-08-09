# Phase 0 — External-Oracle Validation Findings

**What this is.** `validate_spec.py` / `validate_graph.py` compare `SpecEngine`
against the very `PDGBuilder` the spec was exported from — a *refactor-fidelity*
round-trip (0 mismatches, as expected), which proves nothing about correctness.
`validate_external.py` compares the spec's control-flow categorization to an
**independent** oracle — `llvm-mc` (assembler) → `capstone` (disassembler,
instruction groups), sharing no code with our hand-written regexes. Disagreements
are genuine bugs the self-comparison structurally *cannot* surface.

## Result (all 25,942 unique (arch, instruction) pairs)

- Oracle coverage (assembled + decoded): **22,807 / 25,942 (87.9%)**
- Control-flow agreement on covered set: **22,533 / 22,807 (98.80%)**
- **274 real disagreements** on the coarse taxonomy {CALL, RET, JUMP, OTHER}.

Confusion matrix (rows = spec, cols = oracle):

```
            CALL     RET    JUMP   OTHER
    CALL      60       0       0      42
     RET       0      18       0       3
    JUMP       0       0     749      19
   OTHER      31       0     179   21706
```

## Two classes of genuine bug (both in `v54/pdg_builder.py`, inherited by the spec)

### 1. Missing mnemonics → speculation sources dropped to OTHER (210 cases)
- **`OTHER→JUMP` (179):** x86 two-char condition-code branches `jge/jle/jae/jbe`
  and ARM unconditional `b\t.Lxx` / `b .+4` / `bcs` are not matched. These are
  Spectre-V1 / control-flow speculation sources silently classed as OTHER.
  - `branch_cond` alternation lacks `jge|jle|jae|jbe` (has only `j[elgnas]` /
    `jn?[elgzsa]`, which cannot spell the 2-char forms).
  - `branch_uncond` = `\b(b\s|b$|jmp|jmpq)\b`: the trailing `\b` fails on
    `b\t.L33` (tab then `.` — no word boundary), so tab-separated ARM branches miss.
- **`OTHER→CALL` (31):** ARM `blr xN` (indirect call — a **key Spectre-V2 / BHI
  speculation source**) is classed OTHER. `call` = `\b(bl|call|callq)\b` won't
  match `blr` (no boundary after `bl`), and the indirect-jump probe
  `\b(jmpq?|br)\b` omits `blr`.

### 2. Cross-ISA pattern contamination → false control-flow positives (73 cases)
The merged x86+ARM `base.json` makes x86 register spellings collide with ARM
branch mnemonics:
- **`CALL→OTHER` (42):** e.g. `movb %bl, 74(%rsp)` → spec says CALL because
  `%bl` matches ARM branch-link `\bbl\b`.
- **`JUMP→OTHER` (19):** e.g. `movzbl %bpl, %ebp` → spec says JUMP because `bpl`
  matches ARM `b.pl`/`bpl`.
This is direct evidence for the reviewer's critique that combined x86+ARM patterns
do not cleanly generalize — and the concrete motivation for per-ISA spec
decomposition (Track B1): an x86-only spec would not carry ARM branch mnemonics.

### Oracle-side limitation (not a spec bug), 3 cases
- **`RET→OTHER` (3):** bare ARM `ret` — capstone did not emit the `ret` group in
  this configuration. Counted honestly as oracle abstention noise, not a spec error.

## Takeaways
- The "0-mismatch" Phase-0 claim is a round-trip test; the honest correctness
  number is **98.80% control-flow agreement vs an independent oracle, with 274
  triaged disagreements** — a far stronger, reviewable statement.
- Bug class 1 (missing mnemonics) is a targeted regex fix in `pdg_builder.py`;
  bug class 2 (cross-ISA contamination) is fixed structurally by per-ISA
  decomposition (B1). **Both change node categories → require re-export,
  re-validation, and model retraining; do not apply silently.**

Reproduce: `python3 spec/validate_external.py` (writes to stdout;
full run cached in `spec/external_findings.txt`).
