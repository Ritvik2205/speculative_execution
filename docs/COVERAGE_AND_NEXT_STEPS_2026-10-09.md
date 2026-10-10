# Class and ISA coverage: what is reachable, and what it would take

Written 2026-10-09, after fixing the generator's ARM64 path. The question this
answers: what would it actually take for the paper to cover all 9 classes on
all 3 target ISAs, and which of those gaps are closable with the tooling we
have.

The short version: **four of the eight attack classes have no leak oracle on
any ISA, and that is a property of the available tools, not of our data.**
Revizor cannot be configured to test indirect-branch or return prediction, and
Spectector cannot adjudicate them either. No amount of CPU time closes that.

---

## 1. Two different kinds of coverage

These get conflated, so they are separated throughout:

- **Detection coverage** — the classifier assigns a class. Needs labelled
  training data. We have this for all 9 classes on x86\_64 and arm64.
- **Leak-verification coverage** — an oracle independently confirms that a
  sequence leaks. Needs a tool that models the relevant speculation mechanism.
  This is the scarce one.

A detection number without verification coverage is a statement about our
labels. That is exactly the trap the 2026-10-07 hardware labelling exposed:
`allhw2` reproduced its training labels faithfully, including the wrong ones.

## 2. Leak-verification coverage today

| class | mechanism | x86\_64 | arm64 | riscv64 |
|---|---|---|---|---|
| SPECTRE\_V1 | conditional branch (PHT) | Spectector (82% adjudicable) + Revizor `cond` | — | — |
| SPECTRE\_V4 | store-to-load forwarding | Spectector (87%) + Revizor `bpas` (SSBD control) | — | — |
| MDS | assisted/sampling load | Revizor `seq-assist` | — | — |
| L1TF | faulting load | Revizor `delayed-exception-handling` | — | — |
| SPECTRE\_V2 | indirect branch (BTB) | **none** (Spectector 15%) | — | — |
| RETBLEED | return (RSB) | **none** (Spectector 0.2%) | — | — |
| INCEPTION | return (RSB), AMD Zen | **none** (wrong vendor) | n/a | n/a |
| BHI | branch history | **none** (needs eIBRS-era part) | — | — |
| BENIGN | n/a | negative class | | |

### 2.1 Why V2, RETBLEED, INCEPTION and BHI have no oracle

Revizor 2.0's `contract_execution_clause` accepts exactly:

```
seq, no_speculation, seq-assist, cond, conditional_br_misprediction, bpas,
nullinj-fault, nullinj-assist, delayed-exception-handling, div-zero,
div-overflow, meltdown, fault-skip, noncanonical,
vspec-ops-{div,memory-faults,memory-assists,gp}, vspec-all-{div,memory-faults,memory-assists}
```
(`rvzr/config.py:314-319`)

Every clause is conditional-branch misprediction, store bypass, or a
fault/assist transient. **There is no indirect-branch clause and no
return-prediction clause.** Our four demo configs map one-to-one onto the four
usable clauses, which is why there are four `_hw` classes and not more; the
missing four are not an oversight in our configs, they are outside Revizor's
contract model. Spectector is complementary but no better here: it models PHT
speculation, which is why it rules on 82% of V1 and 87% of V4 candidates but
only 15% of V2 and 0.2% of Retbleed.

So for half the attack classes, the honest position in the paper is
**detection-only, with the verification gap attributed to tooling**. Claiming
otherwise would repeat the mistake of trusting labels no oracle checked.

## 3. The ARM64 generator fix (done, 2026-10-09)

ARM64 generation was the binding constraint on every non-x86 result, and it is
now fixed without retraining.

The diagnosis had three buckets: symbol-name tokens emitted as mnemonics
(`main_func` ×30), x86 mnemonics leaking into ARM64 output
(`pushq`/`movq`/`leave`/`popq`/`mfence`), and genuine operand-form errors
(`mrs x0, #1`). Most of it was a tool that existed but had never been wired in:
`gen/arch_purity.py`'s mask was used by `generate_batch.py` but **not** by
`rl_from_oracle.py`, `decode.py`, or my own measurement script, so the RL loop
that produces our actual results ran unmasked.

Wiring it in, and then strengthening it, gives:

| condition | x86\_64 assembles | arm64 assembles |
|---|---|---|
| no mask | 1.00 | 0.15 |
| spec-engine mask (existed, unwired) | 1.00 | 0.75 |
| **+ assembler check (new)** | **1.00** | **0.96** |

The new rule: keep a token only if it can be *realised into text the target
assembler accepts*. The spec rule alone cannot know what one assembler
accepts, and what slipped through was precisely that:

- `bne` is an **ARM32** spelling that reached the arm64 vocabulary because
  `norm_arch` folds arm32 records into arm64; aarch64 spells it `b.ne`.
- `add.4s`, `movi.4s`, `and.16b` are **Apple-style NEON** syntax, which the GNU
  aarch64 assembler rejects.

The check costs one assembler call per token per ISA (7.9 s once) and is
cached. Caveat to carry: it shrinks the arm64 vocabulary to 99 tokens from 234
for x86, so validity is bought partly by restricting the generator; the
unique-realised-sequence rate is reported alongside so that trade is visible
rather than hidden.

## 4. What each remaining gap would take

Ranked by coverage gained per unit of work.

### 4.1 Re-pose the speculative emulator as a contract check (prerequisite)

`oracle/spec_emulator.py` currently finds **zero** leaks in all 806
hardware-labelled variants, because Revizor's programs mask every address into
their sandbox even on the mispredicted path, so a secret-versus-public
comparison cannot express their violation. Until it is re-posed as Revizor's
own comparison — many inputs, grouped into equivalence classes by the model's
contract trace, then compared within a class — **no mechanism added to it can
be validated against the one ground truth we have.** This blocks 4.2, so it
comes first.

Cost: moderate, no hardware. Risk: it may show the emulator cannot reproduce
hardware labels at all, which is itself a reportable result.

### 4.2 Extend the emulator to indirect-branch and return misprediction

This is the only route to V2, BHI, RETBLEED and INCEPTION that does not need
hardware we do not own, and it covers all three ISAs at once. The mechanism is
the one already implemented — roll the CPU back, force the successor the
predictor would have taken — with a different notion of "other successor":

- **indirect branch (V2, BHI):** force each candidate target drawn from the
  program's own address set (other indirect-branch targets, function labels).
- **return (RETBLEED, INCEPTION):** force a return to a stale return address
  rather than the architectural one.

Every verdict stays model-level and must be labelled so. Validation per
mechanism needs 4.1, plus a ground-truth set per class (4.4).

### 4.3 riscv64 generation

The committed generator was conditioned on x86\_64 and arm64 only, so riscv64
is unreachable even for *generation*, although the spec, realiser, tokeniser,
emulator and assembler mask all cover it. Retrain with the riscv corpus folded
in (`--extra-train`), then the assembler mask and the emulator apply unchanged.

Cost: one cluster job. This is the cheapest genuine ISA extension, and it is a
precondition for any riscv64 claim at all.

Caveat that must travel with it: our riscv corpus is ARM-transliterated
(bigram test, 6/6 classes, p=0.016), so riscv64 results describe adaptation to
riscv surface form, not idiomatic riscv attacks.

### 4.4 Custom hardware harnesses for V2 and RETBLEED on the i5

Since Revizor cannot test them, hardware ground truth for these two needs
bespoke PoCs — BTB poisoning for V2, RSB underflow for Retbleed — with
Flush+Reload and a mitigation control (IBRS/retpoline off and on), in the style
of the SSBD control that validated V4. One harness per class.

This is the only way to validate 4.2's new mechanisms, and it is worth doing
for V2 and Retbleed because the i5 is an affected part.

**The byte-match lesson applies:** a Flush+Reload verdict must compare the
recovered byte with the secret. Counting "confident hits" is what produced the
retracted V4 result.

### 4.5 arm64 hardware oracle

Revizor 2.0 ships an arm64 backend (`rvzr/arch/arm64`). It needs a bare-metal
Linux ARM board with an out-of-order core (Raspberry Pi 4 / Cortex-A72) to load
the kernel module; Apple Silicon cannot host it. This would give real-silicon
V1/V4/MDS/L1TF-equivalent ground truth on a second ISA and would let the whole
hardware-labelling pipeline run unchanged.

Cost: hardware purchase plus setup. Highest value per pound of the hardware
options.

### 4.6 INCEPTION and BHI: hardware-blocked

INCEPTION is AMD Zen only; BHI needs an eIBRS-era Intel part. Neither is
reachable on the i5-8300H whatever we build. These should be scoped out of the
paper's verification claims explicitly rather than left looking unfinished.

## 5. Recommended order

1. **4.3 riscv64 generation** — one cluster job, unblocks the third ISA.
2. **4.1 emulator as a contract check** — unblocks all emulator validation.
3. **4.2 indirect/return mechanisms** — four classes, three ISAs, no hardware.
4. **4.4 V2 + Retbleed hardware harnesses on the i5** — validates 4.2 and gives
   those two classes real ground truth.
5. **4.5 ARM board** — a second ISA with hardware truth.
6. **4.6** — scope out in writing.

## 6. What the paper should claim, as of today

- **Oracle-verified:** V1 and V4 on x86 (symbolic and hardware), MDS and L1TF
  on x86 (hardware). Four classes, one ISA.
- **Detection-only, verification gap attributed to tooling:** V2, RETBLEED,
  INCEPTION, BHI, with §2.1 as the reason.
- **Generation:** valid on x86 (0.99) and now arm64 (0.96); riscv64 not in the
  checkpoint.
- **Not validated:** every emulator leak verdict, on every ISA.
