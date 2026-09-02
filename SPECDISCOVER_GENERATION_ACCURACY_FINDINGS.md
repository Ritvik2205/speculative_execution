# Generation accuracy — findings (Phase A/B first pass)

*2026-09-02. First actions from `SPECDISCOVER_GENERATION_PLAN.md`. Oracle-free
analysis on the current generator (`gen/generator.pt`) with the arch-purity mask on.
The full oracle cross-tab (B1) needs a fresh Spectector run — see "Pending".*

## B2 — does class-conditioning learn STRUCTURE or just n-grams?

For each class, the fraction of generated gadgets whose canonical-op set contains
the class's *defining primitive* (n=40 per cell):

| class | x86_64 | arm64 | defining primitive |
|---|---|---|---|
| SPECTRE_V1 | 88% | 0% | bounds-check + strided secret load |
| SPECTRE_V2 | 0% → **22%*** | 25% | indirect branch |
| SPECTRE_RSB | 92% | 85% | return / call RSB manipulation |
| L1TF | 82% | 0% | page-probe strided load |
| MDS | 90% | 42% | load (fill-buffer) |

**Conditioning genuinely learns structure — this refutes "the generator only learned
local n-grams."** On x86 most classes carry their defining primitive at 82–92%. But
two clear patterns:

1. **arm64 is broadly weak** (V1 0%, L1TF 0%), tracking its collapsed syntactic
   validity (L2 ≈ 2%). arm generation is the bigger structural hole.
2. **`*`** SPECTRE_V2 on x86 was **0%** — and that turned out to be a concrete bug,
   now fixed (below), taking it to 22%.

Implication for the accuracy plan: on **x86 the structure is largely present**, so
the L4 leak collapse there is more likely dataflow-wiring / syntactic-validity than
wrong structure. On **arm the structure itself is missing** — fix arm validity and
conditioning first. These are different problems and should be worked separately.

## Bug found and fixed — x86 indirect branches were structurally impossible

x86 SPECTRE_V2 needs an indirect branch. It was generated 0% of the time, and the
cause was not the model:

- The normalized vocabulary **dropped the AT&T `*`** indirection marker, so
  `call *%rax` (indirect) and `call foo` (direct) both tokenized to opcode `call`.
- The realizer emitted the indirect-call token `call <reg>` as `call %rax` — which
  is **invalid AT&T** (indirect needs `call *%rax`) and, even where tolerated, reads
  as a *direct* call. So an indirect branch could never appear on x86.
- arm is unaffected — `blr`/`br` are distinct mnemonics — which is exactly why arm
  V2 worked (25%) while x86 V2 was 0%.

**Fix** (`gen/realize.py` + `spec/x86_64.json` `indirect_star_ops`, x86-only,
no retrain): restore the `*` on register/memory operands of `call/callq/jmp/jmpq`.
`call <reg>` → `call *%rcx` — now assembles and reads as `CALL_IND`.

Impact:
- x86 SPECTRE_V2 has-indirect-branch: **0% → 22%** (now a conditioning question,
  not a structural impossibility).
- x86 per-sequence L2 (all instructions assemble): **34% → 75%** — the invalid
  `call/jmp <reg>` tokens were a large share of x86 failures.
- x86 L2.5 link-ready: **16% → 31%**.

## A2 — the honest per-sequence metric (recap, see eval/generator_L2_5_link_ready_2026-09-02.txt)

Whole-sequence llvm-mc assembly == per-instruction (llvm-mc tolerates undefined
symbols in both). The honest metric is **link-ready** (`ExternalOracle.link_ready`:
assemble to object + no undefined symbols): after the `*` fix, x86 31%, arm 2%. The
remaining x86 link blocker is the undefined `.L0` placeholder (A3 target; defining it
recovers ~+11pp in a proof-of-concept).

## Where this leaves Phase A

Ranked, with evidence:
1. **arm64 syntactic validity — FIXED this pass: L2 2% → 57%** (operand realization:
   <sym>→immediate, ldp/stp immediate-offset, barrier options; see
   `eval/generator_arm_operand_fix_2026-09-02.txt`). Now on par with x86.
2. **`.L0` branch target — FIXED (A3): self-relative offset** (`jmp .+2` / `b .+4`),
   link-ready without an undefined label. x86 link-ready 22%→43%; arm undefined-symbol
   blockers eliminated (0). arm's remaining gap is pure assembly (L2), not symbols.
3. x86 indirect branch — **fixed this pass**.

## A1 — re-triage of the `other` bucket, arch-purity ON (n=100, 2043 instrs)

The arch-purity mask changed the bucket's composition decisively:

- **100% known_mnemonic / wrong_operands** (was 84.5%; the 15.5% unknown-mnemonic /
  cross-ISA / symbol-as-opcode class is GONE — clean confirmation the arch-purity
  mask did its job).
- Residual is now purely operand-shape:
  - 80.6% `invalid operand for instruction` (incl. the pre-fix `call %rax`-no-`*`
    cases, which the indirect-star fix above now removes)
  - 8.3% `expected compatible register, symbol or integer in range` — arm immediate range
  - 3.1% `index must be a multiple of N in range` — arm addressing scale
  - 2.1% `without a size suffix` — x86 `str`-like

The arm-flavoured clusters (immediate-range, index-multiple) are the realizer
violating arm's operand constraints — the arm side of the "arm64 is the big hole"
finding, and the concrete A-phase arm target: realize arm immediates and indexed
addresses within the ISA's legal ranges/scales.
(`eval/generator_other_triage_archpurity_2026-09-02.txt`)

## Pending

- **A3** — DONE (self-relative branch targets). x86 link-ready 22%→43%; arm
  undefined-symbol blockers eliminated.
- **arm64 assembly residual — FIXED**: L2 57%→79.3% (per-instr bad 3%→1.4%) via
  <fn>-operand repair, adrp/adr→".", shift-amount clamp, condition-code ops→"eq",
  ldp/stp post-index alignment. arm64 now exceeds x86 on assembly. Tiny tail
  (<0.4% each): dc cache-op, literal-pool ldr, push/pop (an arch-purity gap).
- **arm64 operand realization** — DONE (L2 2%→57%). Residual: bitfield/post-index
  immediate ranges (small).
- **B1** — driver built (`gen/b1_oracle_structure.py`); structure half run and
  committed (`eval/b1_oracle_structure_records.jsonl`). The oracle `--validate` half
  needs Docker + the Spectector image → Linux box (LINUX_BOX_RUNBOOK.md "Run C").
  It produces the verdict×structure cross-tab that gates Phase C.
