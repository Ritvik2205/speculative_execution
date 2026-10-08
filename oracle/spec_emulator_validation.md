# Speculative emulator: agreement with ground truth it did not produce

`oracle/spec_emulator.py`, window 40 instructions, 4 input pairs per gadget, cache-line + pc observation. Executed from the committed Intel-syntax `program.asm` of each variant, not the corpus `sequence` field, whose branch labels did not survive the AT&T round trip (see `oracle/revizor_asm.py`).

The emulator models **conditional-branch misprediction only**. In-scope class: SPECTRE_V1. SPECTRE_V4 (store-to-load forwarding), MDS and L1TF (faulting/assisted loads) use mechanisms it does not model, so its verdicts there are reported but carry no information and are excluded from the headline.

## 1. Against real silicon (hardware-labelled fenced variants)

Label: the attack class if the violation persisted on the i5-8300H in 3/3 reruns, BENIGN if it disappeared in 0/3.

| class | n | emulator agrees | interior-fence bar | adjacent-fence bar | no prediction |
|---|---|---|---|---|---|
| SPECTRE_V1 (in scope) | 224 | 0.580 [0.515,0.643] 130/224 | 0.987 [0.961,0.995] 221/224 | 0.786 [0.727,0.834] 176/224 | 0 |
| L1TF (out of scope) | 314 | 0.602 [0.547,0.655] 189/314 | 1.000 [0.988,1.000] 314/314 | 0.908 [0.871,0.935] 285/314 | 0 |
| MDS (out of scope) | 165 | 0.612 [0.536,0.683] 101/165 | 0.988 [0.957,0.997] 163/165 | 0.903 [0.848,0.939] 149/165 | 0 |
| SPECTRE_V4 (out of scope) | 103 | 0.631 [0.535,0.718] 65/103 | 0.981 [0.932,0.995] 101/103 | 0.893 [0.819,0.939] 92/103 | 0 |
| **in-scope total** | 224 | 0.580 [0.515,0.643] 130/224 | 0.987 [0.961,0.995] 221/224 | 0.786 [0.727,0.834] 176/224 | 0 |

### SPECTRE_V1 by variant

| variant | hw label | n | emulator agrees | interior bar |
|---|---|---|---|---|
| entry | BENIGN | 3 | 1.000 [0.438,1.000] 3/3 | 0.000 [0.000,0.562] 0/3 |
| entry | SPECTRE_V1 | 31 | 0.000 [-0.000,0.110] 0/31 | 1.000 [0.890,1.000] 31/31 |
| fence_all | BENIGN | 45 | 1.000 [0.921,1.000] 45/45 | 1.000 [0.921,1.000] 45/45 |
| shifted | BENIGN | 41 | 1.000 [0.914,1.000] 41/41 | 1.000 [0.914,1.000] 41/41 |
| tail | SPECTRE_V1 | 31 | 0.000 [-0.000,0.110] 0/31 | 1.000 [0.890,1.000] 31/31 |
| twin | BENIGN | 41 | 1.000 [0.914,1.000] 41/41 | 1.000 [0.914,1.000] 41/41 |
| v1_fallthrough | SPECTRE_V1 | 32 | 0.000 [0.000,0.107] 0/32 | 1.000 [0.893,1.000] 32/32 |

### Verdict distribution (all classes)

| class | leak | safe | arch\_leak | unrunnable |
|---|---|---|---|---|
| L1TF | 0 | 314 | 0 | 0 |
| MDS | 0 | 165 | 0 | 0 |
| SPECTRE_V1 | 0 | 224 | 0 | 0 |
| SPECTRE_V4 | 0 | 103 | 0 | 0 |

Gadgets with no conditional branch to mispredict: 582/806. For those the emulator can only return `safe`, which for a store-bypass or faulting-load gadget is a scope limitation, not a finding.

## 2. Against the symbolic oracle (Spectector, generated x86 gadgets)

300 unique generated gadgets with a Spectector leak/safe verdict.

**This is not a like-for-like comparison, and the counts below should not be read as agreement.** Spectector adjudicates the whole spliced victim program: the generated body is inserted into a hand-written, class-specific misdirection template (a bounds-check bypass and a probe write) and compiled, and the leak Spectector reports may belong to that scaffold. The emulator is given only the generated body. 300 of 300 bodies contain no conditional branch at all, so for those there is nothing for a PHT model to mispredict and `safe` is a statement about the body, not about the program Spectector judged. Making this comparable requires running the emulator on the same compiled victim, which needs the cross-compiler in the oracle container.

| Spectector | n | emulator leak | safe | arch\_leak | unrunnable |
|---|---|---|---|---|---|
| leak | 299 | 0 | 298 | 0 | 1 |
| safe | 1 | 0 | 1 | 0 | 0 |

## How to read this

The emulator is a model. Where it agrees with real silicon on the in-scope class it is evidence that a Unicorn-driven speculation model reproduces a measured hardware property; where it does not, the honest reading is that the model is wrong, not the CPU. Its only purpose in this project is to give arm64 and riscv64 a leak check at all, so the number that matters is how far it can be trusted on the one ISA where a hardware answer exists.

