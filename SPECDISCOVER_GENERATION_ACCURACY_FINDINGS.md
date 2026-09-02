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
1. **arm64 syntactic validity (L2 ≈ 2%)** — the single biggest hole; blocks arm
   structure/leak entirely. Needs its own triage (arm side of A1).
2. **`.L0` / `<sym>` placeholder** — top x86 link-ready blocker (A3).
3. x86 indirect branch — **fixed this pass**.

## Pending

- **A1** (re-triage `other` bucket with arch-purity, n=100) is running in the
  background → `eval/generator_other_triage_archpurity_2026-09-02.txt`. Its ranked
  cause list will refine the arm64 vs placeholder split above.
- **B1** (oracle verdict × structure cross-tab) needs a fresh Spectector run on
  generator output; the persisted oracle labels (22 records) are template gadgets,
  not free-generator output. This is the next real oracle job.
