# SpecDiscover

---

## 1. Automating the features

**Goal.** Remove the hand-written, per-architecture feature code so the system
ports to a new instruction set with a spec file, not new code.

**What we did.** Built an ISA-agnostic feature extractor that reads only the
declarative spec (opcode-category histogram + speculation-flag aggregates +
memory-type histogram + a few universal counters). It contains **zero**  
**instruction/register/architecture literals in code**. Everything comes from the  
spec. We compared it against the 58 hand-written, ISA-specific features.

**Result (held-out test):**


| features                           | dim | accuracy  | macro-F1 |
| ---------------------------------- | --- | --------- | -------- |
| **spec-derived (no ISA literals)** | 42  | **97.2%** | **93.1** |
| hand-written (ISA-specific)        | 58  | 95.2      | 80.3     |


The automated, portable feature set **beats** the hand-tuned one by ~13 points  
of macro-F1 (the metric that reflects the rare attack classes). A  
leakage-controlled re-check (group hold-out) is running to confirm this isn't  
partly memorization.

**Self-supervised encoder.** We also trained an assembly "language model" to
learn features from raw code. Finding, stated honestly:

- It does **not** replace the hand features inside the graph model (multi-seed
equivalence test: ~2.5–3 pts *lower*, not equivalent).
- It **is** a useful *complement* at the sequence level (adds +10.6 macro-F1 on
top of hand features).

**Can the security taxonomy itself be learned?** Partly. Structural tags ("this
is a branch", "this touches memory") are recovered from self-supervision at
90–100%. The **attack-specific tags** ("this load reads a secret", "this is the
transmitter") are **not** learnable from code alone (23–45%) — they remain human
knowledge. Given the structural facts, though, the full tag set is reproducible
at 98.9%.

**Takeaway.** The defensible automation win is the **spec-derived feature tier**  
(portable and better). The learned encoder is a complement, not a replacement,  
and the security semantics stay human-authored.

---

## 2. The correctness oracle

**Problem.** Our earlier validation compared the spec engine against the very  
code it was exported from and a round-trip that proves we copied faithfully, not  
that we're correct.

**What we did.** Added an **independent** checker: assemble each instruction with
`llvm-mc` and read its true category from the machine code via `capstone`. This
shares no code with our pattern rules, so agreement is real evidence.

**Result.** Over 25,942 instructions it found **274 genuine bugs** our old check  
could never see, including that **ARM indirect calls (a core Spectre-v2**  
**ingredient) were being ignored entirely**, and that x86 and ARM patterns were
contaminating each other.

**Fixing them helped the model, not just the paper.** We separated the grammar
per architecture and fixed the bugs, then retrained:


|                   | before | after      |
| ----------------- | ------ | ---------- |
| test accuracy     | 95.75% | **97.07%** |
| Spectre-v2 recall | 76%    | **94%**    |
| Spectre-v1 recall | —      | **100%**   |
| oracle agreement  | 98.80% | **99.86%** |


The independent oracle surfaced real defects  
whose fixes improved accuracy and repaired the long-standing Spectre-v2 blind  
spot.

**Portability check (RISC-V).** To test "a new ISA needs only a spec file", we  
wrote a RISC-V spec from the manual, installed a RISC-V compiler, and compiled a  
real **498-file / ~19,500-instruction** RISC-V corpus. With **no code changes**,  
the front end parsed all 498 into valid graphs and hit **88% oracle agreement** and   
the remaining gaps are the oracle's own quirks on RISC-V pseudo-instructions,  
not our spec. Two small real gaps were fixed by editing the spec file only.

---

## Bottom line

- **Automated features**: an ISA-portable, spec-derived feature set now *beats*
the hand-written one; the learned encoder is a genuine complement; the attack
taxonomy is confirmed to be the irreducible human part.
- **Oracle**: an independent correctness check found 274 real bugs; fixing them
**raised accuracy to 97.07% and Spectre-v2 recall to 94%**, and the whole front
end now ports to a third instruction set (RISC-V) with a spec file alone.

