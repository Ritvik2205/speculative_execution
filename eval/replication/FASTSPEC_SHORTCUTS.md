# FastSpec dataset: format, provenance and minimal-pair checks

Paper: Tol, Gulmezoglu, Yurtseven, Sunar, "FastSpec: Scalable Generation and Detection of
Spectre Gadgets Using Neural Embeddings", EuroS&P 2021 (arXiv:2006.14147). Data: the
`dataset/` archive of github.com/vernamlab/FastSpec (commit 813230aa), read from the
byte-identical copy in github.com/biringaChi/SPECDET. Shipped folders: spectre_train 956,096
files, spectre_test 239,025, benign_train 1,581, benign_test 396.

**What this is and is not.**
- A random sample of 3,000 files per spectre folder and all benign files.
- Tokens come from `fastspec_tokens.py`, a re-implementation of FastSpec's preprocessing
  rules written from reading `asm_parser.py`, `reducer.py` and `list2tsv.py`. Their code was
  not executed; only their vocabulary file is read. Corner cases may differ.
- Models here are random forests over token counts. FastSpec's BERT was NOT run (it needs
  TensorFlow 1.5 and files that are not shipped). The results show what the DATA allows a
  model to do, not what their model does.
- Nothing from either repository is stored in this one. Scripts: `fastspec_tokens.py`,
  `fastspec_shortcuts.py`, `fastspec_swaps.py`.

Paper's reported figures for comparison (from the paper): 99.9% precision and recall on the
test split; 0.74 precision and 0.87 recall on Phoronix binaries.

## 1. Shipped split, window level

window 80 tokens, at most 6 windows per file; balanced: train 12848 windows, test 4752 windows

## E1 single-token presence rules (tokens as FastSpec's preprocessing leaves them)

| token | share of benign windows | share of spectre windows | rule | test balanced accuracy |
|---|---|---|---|---|
| `mov` | 0.931 | 0.033 | present => benign | 0.9508 |
| `movzbl` | 0.091 | 0.721 | present => spectre | 0.8161 |
| `callq` | 0.591 | 0.023 | present => benign | 0.7940 |
| `lea` | 0.560 | 0.044 | present => benign | 0.7481 |
| `movl` | 0.094 | 0.604 | present => spectre | 0.7515 |
| `cmpq` | 0.047 | 0.509 | present => spectre | 0.7296 |
| `movb` | 0.039 | 0.481 | present => spectre | 0.7264 |
| `%al` | 0.084 | 0.521 | present => spectre | 0.7212 |

## E2 bag of tokens, random forest: test balanced accuracy 0.9994

## E3 format removed (canonical mnemonics only)

- mnemonic-count random forest: test balanced accuracy 0.9907
- best single-mnemonic rules:
    `movzbl` present => spectre: benign 0.091, spectre 0.721, test balanced accuracy 0.8161
    `call` present => benign: benign 0.592, spectre 0.072, test balanced accuracy 0.7744
    `and` present => spectre: benign 0.070, spectre 0.480, test balanced accuracy 0.7170
    `ret` present => spectre: benign 0.226, spectre 0.568, test balanced accuracy 0.6568
    `je` present => benign: benign 0.427, spectre 0.123, test balanced accuracy 0.6644
    `nop` present => benign: benign 0.417, spectre 0.115, test balanced accuracy 0.6530

## E4 provenance

- test spectre windows whose (compiler family, base example) also occurs in train: 5408/5414 (0.999)
- base examples seen (integer part of the id in the file name): 18: 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 20
- held-out base examples (9 of 18: 1 3 5 7 9 11 13 15 17); train 4228, test 4752 windows
    bag of tokens: 1.0000;  canonical mnemonics: 0.9440

## 2. Interventions

595 gadgets from the shipped test folder; window 80.

| input | windows | called spectre: bag of tokens | called spectre: canonical mnemonics |
|---|---|---|---|
| test gadgets, original format | 1273 | 1.000 | 0.998 |
| same gadgets, objdump format (swap) | 1144 | 0.168 | 0.968 |
| same gadgets + lfence after the branch, original format (fence) | 1280 | 1.000 | 0.998 |
| shipped benign test windows | 2376 | 0.001 | 0.015 |
| benign compiler-output functions (benign-s) | 2821 | 0.946 | 0.096 |

Oracle check of the barrier pairs (Spectector, default policy, entry `victim_function`, 60
gadgets): 31 pairs go from leak to safe when `lfence` is inserted after the first conditional
branch (21 of them with no unsupported instruction). On those 31 pairs both models flag the
leaking side 31/31 and the mitigated side 31/31. Of the other originals, 20 were reported safe
but contain instructions Spectector does not model, so that says nothing either way; 7 still
leak with the barrier (the first branch was not the guarding one).

## Reading

- **A model with no order information matches the headline.** Token counts give 0.9994 on the
  shipped split.
- **One mnemonic spelling carries most of it.** `mov` is in 93% of benign windows and 3% of
  spectre windows: objdump prints `mov`, compilers print `movq`. The rule "mov present means
  benign" scores 0.95.
- **The split does not separate base examples.** 99.9% of test gadgets share compiler family
  and base example with a training gadget. Holding out half the base examples changes nothing
  for the token model (1.0000), because the class is recognisable without the gadget.
- **Changing only the file format flips the answer.** The same gadgets, assembled and
  disassembled, are called spectre 17% of the time by the token model, down from 100%. Real
  benign functions in compiler-output format are called spectre 95% of the time.
- **With format removed, the model keys on content that is not the vulnerability.** It
  survives the format swap (0.97) and has a 10% false-positive rate on benign compiler
  output, but it flags every mitigated copy: 31 of 31 oracle-verified pairs.

## Not done

- FastSpec's own BERT on these interventions.
- The full dataset (sample only), other window sizes.
- SpectreGAN's 72% against 5%: the fuzzer and the verification programs are not released.
- Contact with the authors. This must happen before any of this is published.
