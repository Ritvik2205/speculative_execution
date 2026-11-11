# SPECDET gadget-detection data: format, length and content shortcuts

Paper: Biringa, Baye, Kul, "Short Paper: Static and Microarchitectural ML-Based Approaches For Detecting Spectre Vulnerabilities and Attacks", HASP'22, arXiv:2210.14452. Repository github.com/biringaChi/SPECDET at commit e57b760f (2024-03-29), pickles under `src/SGDetector/data/` (the samples its 1D-CNN uses; tokens exactly as its `wrangle` + whitespace split produce them, so directives, symbol names and addresses reach the model).

Reproduce: clone the repository, then `python3 -I eval/replication/specdet_shortcuts.py <clone>`. Nothing from that repository is stored here. The pickles were scanned with `pickletools` before loading: lists, strings and integers only.

Scope: these numbers are about SPECDET's shipped sample. FastSpec's own detector uses sliding windows over the same underlying files; whether the same shortcuts reach it is not established here.

Paper's reported test F1 for comparison (from the paper, not re-run): 1D-CNN 0.964, Naive Bayes 0.972, SVC 0.998, logistic regression 0.999, random forest 1.000.

## Splits

| split | samples | benign (0) | spectre (1) | median tokens |
|---|---|---|---|---|
| training | 49000 | 1481 | 47519 | 98 |
| validation | 1000 | 100 | 900 | 103 |
| test | 10000 | 396 | 9604 | 99 |

## Single-token rules (chosen on train, scored on test)

| token | in benign train | in spectre train | rule | test balanced accuracy |
|---|---|---|---|---|
| `victim_function:` | 0.000 | 1.000 | present => spectre | 1.0000 |
| `.cfi_startproc` | 0.000 | 1.000 | present => spectre | 1.0000 |
| `.cfi_endproc` | 0.000 | 1.000 | present => spectre | 1.0000 |
| `.globl` | 0.000 | 0.941 | present => spectre | 0.9711 |
| `jmpq` | 0.934 | 0.000 | present => benign | 0.9659 |
| `mov` | 0.993 | 0.069 | present => benign | 0.9601 |
| `add` | 0.989 | 0.069 | present => benign | 0.9613 |
| `sub` | 0.986 | 0.068 | present => benign | 0.9614 |
| `callq` | 0.935 | 0.028 | present => benign | 0.9558 |
| `victim_function` | 0.000 | 0.899 | present => spectre | 0.9502 |
| `temp(%rip)` | 0.000 | 0.874 | present => spectre | 0.9372 |
| `nopl` | 0.872 | 0.000 | present => benign | 0.9205 |

## Format-only features (share of samples containing at least one)

| feature | benign train | spectre train | benign test | spectre test |
|---|---|---|---|---|
| assembler directive (.xxx) | 0.000 | 1.000 | 0.000 | 1.000 |
| .cfi_startproc | 0.000 | 1.000 | 0.000 | 1.000 |
| 16-hex-digit token (objdump symbol address) | 0.976 | 0.000 | 0.962 | 0.000 |
| address column token (hex:) | 0.000 | 0.000 | 0.000 | 0.000 |
| byte-column token (two hex digits) | 0.469 | 0.319 | 0.419 | 0.324 |

## Length alone (tokens as the model sees them)

- rule fitted on train: >= 352 tokens => benign; test balanced accuracy 0.9993
- test median tokens: benign 1000, spectre 96

## After reducing both classes to canonical mnemonics

- mnemonic-count random forest: test balanced accuracy 1.0000
- best single-mnemonic rules (presence), chosen on train:
    `call` present => benign: in benign 0.937, in spectre 0.140, test balanced accuracy 0.9025
    `nop` present => benign: in benign 0.968, in spectre 0.214, test balanced accuracy 0.8763
    `je` present => benign: in benign 0.942, in spectre 0.224, test balanced accuracy 0.8574
    `jmp` present => benign: in benign 0.960, in spectre 0.245, test balanced accuracy 0.8628
    `movzbl` present => spectre: in benign 0.362, in spectre 0.986, test balanced accuracy 0.8110
    `test` present => benign: in benign 0.936, in spectre 0.405, test balanced accuracy 0.7683
- instruction-count rule: >= 130 => benign; test balanced accuracy 1.0000
- benign test samples whose mnemonic multiset also occurs in benign train: 97/396 (0.245)
- spectre test samples whose mnemonic multiset also occurs in spectre train: 957/9604 (0.100)

## Reading

- The classes are different kinds of text. Every spectre sample is one compiler-emitted `victim_function` with assembler directives; every benign sample is an objdump listing of many functions, cut at 1,000 tokens.
- One token decides the label on the test set (`.cfi_startproc`, `.cfi_endproc` or the label `victim_function:`: balanced accuracy 1.0000).
- Counting tokens decides it (0.9993), and counting instructions after removing all format differences decides it (1.0000).
- The split is 97% spectre, so accuracy and F1 on the positive class are high for a constant prediction; balanced accuracy is reported here for that reason.
- Not yet done: a benign set in the same format and length as the gadgets (compiler output, single short function), barrier-patched copies of the gadgets as hard negatives, and a split grouped by base example.
