# Speculative emulator: agreement with ground truth it did not produce

`oracle/spec_emulator.py`, window 40 instructions, 4 input pairs per gadget, cache-line + pc observation. Executed from the committed Intel-syntax `program.asm` of each variant, not the corpus `sequence` field, whose branch labels did not survive the AT&T round trip (see `oracle/revizor_asm.py`).

The emulator models **conditional-branch misprediction only**. In-scope class: SPECTRE_V1. SPECTRE_V4 (store-to-load forwarding), MDS and L1TF (faulting/assisted loads) use mechanisms it does not model, so its verdicts there are reported but carry no information and are excluded from the headline.

## 1. Against real silicon (hardware-labelled fenced variants)

Label: the attack class if the violation persisted on the i5-8300H in 3/3 reruns, BENIGN if it disappeared in 0/3.

| class | n | emulator agrees | interior-fence bar | adjacent-fence bar | no prediction |
|---|---|---|---|---|---|
| SPECTRE_V1 (in scope) | 120 | 0.608 [0.519,0.691] 73/120 | 0.983 [0.941,0.995] 118/120 | 0.792 [0.711,0.855] 95/120 | 13 |
| **in-scope total** | 120 | 0.608 [0.519,0.691] 73/120 | 0.983 [0.941,0.995] 118/120 | 0.792 [0.711,0.855] 95/120 | 13 |

### SPECTRE_V1 by variant

| variant | hw label | n | emulator agrees | interior bar |
|---|---|---|---|---|
| entry | BENIGN | 2 | 0.500 [0.095,0.905] 1/2 | 0.000 [0.000,0.658] 0/2 |
| entry | SPECTRE_V1 | 16 | 0.438 [0.231,0.668] 7/16 | 1.000 [0.806,1.000] 16/16 |
| fence_all | BENIGN | 24 | 0.875 [0.690,0.957] 21/24 | 1.000 [0.862,1.000] 24/24 |
| shifted | BENIGN | 21 | 0.476 [0.283,0.676] 10/21 | 1.000 [0.845,1.000] 21/21 |
| tail | SPECTRE_V1 | 18 | 0.444 [0.246,0.663] 8/18 | 1.000 [0.824,1.000] 18/18 |
| twin | BENIGN | 21 | 0.905 [0.711,0.973] 19/21 | 1.000 [0.845,1.000] 21/21 |
| v1_fallthrough | SPECTRE_V1 | 18 | 0.389 [0.203,0.614] 7/18 | 1.000 [0.824,1.000] 18/18 |

### Verdict distribution (all classes)

| class | leak | safe | arch\_leak | unrunnable |
|---|---|---|---|---|
| SPECTRE_V1 | 32 | 75 | 0 | 13 |

Gadgets with no conditional branch to mispredict: 0/120. For those the emulator can only return `safe`, which for a store-bypass or faulting-load gadget is a scope limitation, not a finding.

## How to read this

The emulator is a model. Where it agrees with real silicon on the in-scope class it is evidence that a Unicorn-driven speculation model reproduces a measured hardware property; where it does not, the honest reading is that the model is wrong, not the CPU. Its only purpose in this project is to give arm64 and riscv64 a leak check at all, so the number that matters is how far it can be trusted on the one ISA where a hardware answer exists.

