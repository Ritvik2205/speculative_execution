# FastSpec / SpectreGAN and SPECDET: replication feasibility and claim check

Date: 2026-11-11. Sources read: both paper PDFs (arXiv), both GitHub repositories (READMEs, file trees, small scripts), the first 4 MB of the FastSpec dataset archive, and SPECDET's small pickled validation set and label files. The full dataset (391 MiB) was not downloaded and no code was run.

## Verdict

- **SPECDET is replicable on a laptop in a day or two.** Its data is a byte-identical copy of the FastSpec dataset and its exact sample ships as pickles; only the 1D-CNN code for gadgets is in the repo.
- **FastSpec's detector is replicable at the data level, not the model level.** The dataset ships pre-split with the benign set included; the BERT code needs TensorFlow 1.5 and intermediate files that are not shipped.
- **The two classes are in different text formats.** Gadgets are compiler `.s` output with directives; benign files are `objdump` disassembly. In SPECDET's shipped validation set, the token `.cfi_startproc` alone separates the classes 900/900 vs 0/100.
- **The SpectreGAN 72% benign bar is blocked**: the fuzzer and the proof-of-concept verification code are not in the repository.
- **Of the six claims, one is partly wrong** (the AUC 0.998 is from the OpenSSL case study, not the test split) and three need corrections (see table).

## Claim-by-claim table

Section numbers are those of the arXiv v2 PDF of FastSpec (https://arxiv.org/pdf/2006.14147v2) and the arXiv PDF of SPECDET (https://arxiv.org/pdf/2210.14452).

| # | Claim | Status | Evidence |
|---|---|---|---|
| 1 | Starts from ~15 Kocher examples; fuzzing expands to ~1 million gadgets | CONFIRMED, with a correction: 17 C sources, not 15 | §4.1 Step 1: "There are 15 Spectre-V1 gadgets written in C by Kocher [26] and two modified examples introduced by Spectector [8]." Step 2: "We compiled each example with GCC, clang, and icc compilers using -o0 and -o2 optimization flags. Therefore, we obtain 6 different assembly functions from each C function with AT&T syntax." End of §4.1: "we obtained a data set of almost 1.1 million Spectre gadgets". Abstract: "more than 1 million". |
| 2a | SpectreGAN 72% vs 5% for fuzzing | CONFIRMED | §4.1: "The overall success rate of the fuzzing technique is 5% out of compiled gadgets." §4.3.2: "a higher accuracy (72%) compared to the fuzzing technique (5%)." Conclusion: "We demonstrate 72% of the compiled code snippets behave as a Spectre gadget". Fig. 2 caption: "Spectre gadget success rate shows the percentage of gadgets out of compiled functions." Note §4.2.4 words it differently: "the success rate of gadgets increases by up to 72%." |
| 2b | The GAN infills only ~30% of an already-verified gadget | PARTLY CONFIRMED (inferred from paper plus code, not stated in one sentence) | §4.2.3: "we generate m as a contiguous block with a random starting position in the adversarial training". §4.2.4: masking rate 0.3 gives the best success rate; "70,000 gadgets are generated with a masking rate of 0.3". The training data is the fuzzing output (§4.1: "The generated gadgets are used to train SpectreGAN"). `SpectreGAN/generate_samples.py` iterates over the real train/validation sequences and masks them (`p = model_utils.generate_mask(x_len)`). The repository README's example generation command uses `--is_present_rate=0.80`, not 0.70, so the exact 30% at generation time is not confirmed by the artifact. |
| 3a | FastSpec reports ~99.9% precision/recall on a test split of the same data | CONFIRMED | §5.2: "We separate 80% of the data set for training and validation, and the remaining 20% is used for FastSpec evaluation." "we obtained 1.3 million true positives and 110 false positives (99.9% precision rate) in the test data set"; "we only have 55 false negatives (99.9% recall rate), which yield a 0.99 F-1 score on the test data set." |
| 3b | AUC 0.998 on that test split | WRONG (attribution) | The 0.998 is from the OpenSSL case study, labelled by SpecFuzz, at window size 80. §5.3: "FastSpec achieves the highest performance ... when the window size is set to 80 tokens, which corresponds to 0.998 as an area under the curve (AUC) value." Introduction: "achieve a 0.998 Area Under the Curve (AUC) score for OpenSSL libraries in the test phase." No AUC is given for the 20% test split. Fig. 5 lists AUC 0.942, 0.744, 0.991, 0.998 and 0.556 for windows 50 to 90. |
| 3c | Benign class = disassembled Linux libraries | CONFIRMED | §5.2: "We combine the assembly data set generated in Section 4 and the disassembled Linux libraries to train FastSpec. Although Linux libraries may contain Spectre-V1 gadgets, we assume that the total number of hidden Spectre gadgets is negligible". |
| 4 | Phoronix average precision ~0.74, recall ~0.87 | CONFIRMED | Table 2, "Average" row: "0.47 0.44 ... 0.43 0.67 ... 0.74 0.87" (oo7, Spectector, FastSpec; precision then recall). Ground truth, §5.4: "For the ground truth, the SpecFuzz technique is chosen". Twelve small benchmarks. Column mapping read from the table header order in the extracted text. |
| 5a | No opcode-count or other trivial baseline | CONFIRMED (absence) | Full-text search of the PDF for "opcode", "baseline", "Naive", "SVM", "logistic": no classifier baseline. "n-gram" appears only as a diversity metric (§4.3). Comparisons are against oo7 and Spectector only. |
| 5b | No split grouped by base example | CONFIRMED (absence in the paper); NOT VERIFIED for the released split | The paper gives only the 80/20 sentence. `FastSpec/run_classifier.py` `shuffle_and_save` does an unseeded `random.shuffle` over token windows from `train_raw.tsv` (the call is disabled with `if False:`). The released archive has file-level `spectre_train`/`spectre_test` folders; how they were divided is not documented. |
| 5c | No benign bar for the 72% | CONFIRMED (absence) | The only comparison for the 72% is the 5% of fuzzing. The text does not say whether the first verification test (out-of-bounds-only inputs, "candidate gadget is broken") was applied to GAN output; §4.2.4 says only "tested them with all the attacker code to verify their secret leakage." |
| 6a | Every SPECDET classifier, Naive Bayes included, reaches test F1 0.96–1.00 | CONFIRMED | Table 2, "Spectre Vulnerabilities", Testing F1: 1D-CNN 0.964, NB 0.972, SVC 0.998, LR 0.999, RF 1.000 (read from the page image; pages 3–4 of the PDF have no text layer). |
| 6b | Random split | CONFIRMED in the paper text; CONTRADICTED by the code | §4.2: "we split and shuffle our vulnerabilities and attacks datasets into 80-20%, where 80% denotes (70-10%) for training and validations sets, and 20% for our testing set. Furthermore, we used a k-fold cross-validation technique". The gadget code (`src/SGDetector/spectre_embed.py`) does no random split: it reads FastSpec's `benign_train`, `spectre_train`, `benign_test`, `spectre_test` folders and takes fixed head slices. |
| 6c | No trivial baseline or grouped split | CONFIRMED (absence) | Whole 5-page paper read. Threats to validity lists "semi-synthetically generated gadgets" and "lack of granular and ablation analysis on classifiers". |

Other statements in the review that I checked:

- "about 5,000 observations, split 60/40 malicious/benign": matches §4.2 ("~5000 observations"; "60-40 percent (%) for malicious and benign"). The shipped label pickles hold more: train 49,000 (47,519 gadget / 1,481 benign), validation 1,000 (900 / 100), test 10,000 (9,604 / 396). The code then keeps the first 3,000 train and first 1,000 test rows, which gives a test set of 396 benign and 604 gadget.
- The FastSpec OpenSSL numbers are internally inconsistent: §5.3 says "4242 functions are extracted" and then "Positive and negative classes include 720 and 2500 functions".

## Data and code availability

### a. What "SPECDET" is

"SPECDET" is the name of the GitHub repository, not of the paper. The paper does not use the word.

Chidera Biringa, Gaspard Baye, Gökhan Kul. "Short Paper: Static and Microarchitectural ML-Based Approaches For Detecting Spectre Vulnerabilities and Attacks." Proceedings of the 11th International Workshop on Hardware and Architectural Support for Security and Privacy (HASP'22, held with MICRO'22), pp. 53–57, 2022. arXiv:2210.14452, DOI 10.48550/arXiv.2210.14452, https://arxiv.org/abs/2210.14452. Venue and pages are from the repository README's citation block. **The ACM DOI was not verified**: two searches did not return it and dblp blocked automated access.

### b. FastSpec / SpectreGAN dataset

- **Location**: https://github.com/vernamlab/FastSpec, folder `dataset/`. No Zenodo or other mirror found. Last push 2023-04-12.
- **Files**: `dataset_aa` to `dataset_ae`, a split gzip tarball. Four parts of 94,371,840 bytes and one of 32,822,791 bytes, about 391 MiB in total. `build.sh` concatenates and extracts them.
- **Contents after extraction** (from `dataset/README.md`): `spectre_train` 3.8 GB, `spectre_test` 972 MB, `benign_train` 1.6 GB, `benign_test` 306 MB.
- **Benign set**: included. The first 60 entries of the archive are `benign_test/*.s` files such as `libnss_mdns4.so.2.s`, `libQtDesigner.so.4.8.7.s`, `radare2.o.s`. It need not be rebuilt.
- **Format, benign**: `objdump -d` text, x86-64 AT&T, one file per library or object file, with "Disassembly of section" lines, 16-digit hex addresses, `<symbol>` headers and `#` comments. Not tokenised.
- **Format, gadgets**: not seen in the FastSpec archive itself (the gadget folders come after the first 4 MB). Seen in SPECDET's `validation_set.pickle`, which is built from the same folders: compiler-emitted `.s` text, x86-64 AT&T, with `.cfi_startproc`, `.globl victim_function`, symbol names `array1_size`, `array2`, `temp`.
- **Licence**: the repository has no top-level licence (GitHub API reports `license: null`). `FastSpec/LICENSE` is Apache 2.0 (code derived from Google's BERT, per `FastSpec/NOTICE`). `SpectreGAN/LICENSE` exists but I did not read it. No licence is stated for the dataset.
- **Base example and compiler provenance**: NOT VERIFIED for file names, because I did not list the gadget folders. From the 900 gadget samples in SPECDET's validation pickle:
  - a `.file "NN.c"` token naming the base example survives in only 2.2% of samples;
  - the compiler is recoverable from label style in about 98% of samples (icc `..B` labels 40.8%, clang `.LBB` 28.4%, gcc `.LFB` 29.2%), and an `.ident` compiler string survives in 26.4%;
  - the unmutated bases are in `FastSpec/sources/` (`victimN.s`, `clangN.s`, `intelN.s`, about 118 files). Fuzzing only inserts instructions, so each gadget could be assigned to a base by subsequence alignment. This is untested.
- **GAN-generated gadgets**: whether they are in the archive, and whether they are marked, is NOT VERIFIED.

### c. FastSpec train/test split

- The file-level split is recoverable as shipped folders (`*_train`, `*_test`).
- The method that produced it is not documented, and there is no seed or split script for it.
- The window-level split code (`run_classifier.py`, `shuffle_and_save`) is unseeded and writes 100% of rows to `train.tsv`, then rows 80–90% to `dev.tsv` and 90–100% to `test.tsv`. As written, dev and test are subsets of train. The call is disabled, so I cannot say it produced the paper's numbers.
- `FastSpec/list2tsv.py` hard-codes `numSpec=956096` ("Number of spectre functions in training data").
- SpectreGAN: `SpectreGAN/data/spec_loader.py` uses an unseeded `np.random.permutation` and a 70/30 split, where the paper (§4.2.3) says "We separate 10% of the data set for model validation."

### d. SPECDET data and code

- **Location**: https://github.com/biringaChi/SPECDET. MIT licence. Last push 2024-03-29.
- **Gadget data**: `datasets/spectre_gadgets/dataset_aa..ae` have the same git blob hashes as the five FastSpec parts, so it is the same archive. `build.sh` there looks for `spectre_data*`, which does not match the shipped file names.
- **Exact sample**: shipped in `src/SGDetector/data/` as pickles: `training_set.pickle` (63 MB), `test_set.pickle` (14 MB), `validation_set.pickle` (2 MB), matching label pickles, and train/test embeddings. Samples are whitespace token lists cut to 1,000 tokens. They carry no file names.
- **Split**: recoverable from the pickles. No seed is involved for the gadget task, because it is a fixed slice of FastSpec's folders. `train.py` sets `torch.manual_seed(100)`.
- **Code**: only the 1D-CNN for gadgets (`spectre_cnn.py`, `train.py`, `test.py`). I found no gadget-task code for Naive Bayes, SVC, logistic regression or random forest in the file tree; the only scikit-learn classifier is an SVC for the CPU-counter task in `src/CPSDetector/train.py`. Issues #12 and #13 report that the gadget pipeline does not run as published, and `spectre_embed.py` has methods defined after the `__main__` block.
- **Class-format confound (my measurement on the shipped validation pickle, 100 benign and 900 gadget samples)**:

| Marker present in sample | Benign | Gadget |
|---|---|---|
| `.cfi_startproc` | 0.000 | 1.000 |
| a token containing `victim_function` | 0.000 | 1.000 |
| `array1_size` | 0.000 | 0.889 |
| a 16-hex-digit address token | 0.980 | 0.000 |

SPECDET feeds these raw tokens to word2vec. FastSpec's own vocabulary file (`FastSpec/example/combined_reduced_vocab.v5.txt`) also keeps `victim_function` (id 27), `array1_size` (id 50), `array2`, `array1` and `temp` as tokens, so the BERT detector may see the same markers. I did not verify that from a FastSpec-preprocessed sample.

### e. Is the FastSpec detector runnable?

Code is present; a clean run from the artifact is doubtful. I did not try.

- README requirement: "TensorFlow = v1.5".
- A small trained checkpoint ships in `FastSpec/example/` (`model.ckpt-3000`, 4.4 MB) with `scan.sh`, which disassembles one OpenSSL object and scores it. Whether this is the paper's model is not stated.
- Training from scratch needs `data.txt`, `train_raw.tsv` and `combined_word_dict_format.txt`, none of which ship, and the scripts hard-code `~/FastSpec/...` paths. Issue #3 (2023) reports an empty `data` directory.
- The README's "Train (Fine-tune)" command sets `--do_train=False`.
- No fuzzer and no proof-of-concept attacker or verification code are in the file tree. `SpectreGAN/` has training, sampling and a `recompiler.py` only.

### f. Published critiques, replications, errata

- **Found**: Pedro Bernardo, "SpecTacle" MSc thesis, November 2021, https://pedro-bernardo.github.io/pdf/86500-Pedro-Bernardo-dissertacao.pdf. Section 3.3 says: "Through our analysis of FastSpec's training dataset [68], we found that some of the generated Spectre-PHT do not constitute a valid Spectre-PHT gadget" and "code like the one in fig. 3.2 is used to train FastSpec's classifier leads to false positives by design." It also reports that FastSpec "consistently assigns confidence levels above 0.7 to non-program-specific functions like libc csu init and libc csu fini". Table 5.7 compares precision and recall at confidence 0.48, 0.6 and 0.8. This is a label-validity critique, not a shortcut or leakage study.
- **None found**: a peer-reviewed replication, a leakage or shortcut analysis, or an erratum for either paper. The class-format difference above does not appear in anything I found.
- **Searches run**: (1) FastSpec SpectreGAN with replication, reproduction, "data leakage", "shortcut", "limitations"; (2) "FastSpec" with "false positives", "does not generalize", "overfit"; (3) FastSpec criticism with SpecTacle, Teapot, SCR-Spectre, Kasper, survey; (4) the SPECDET title with HASP 2022 and DOI, twice; (5) the SpecTacle thesis; (6) the issue trackers of both repositories. Not searched: Google Scholar "cited by" lists, OpenReview, Semantic Scholar.

## What can be replicated and how

### SPECDET: feasible in 1–2 days

1. Read the shipped pickles (use a non-executing reader or a sandbox; they are plain lists of strings and ints).
2. Reproduce Table 2's gadget rows with word2vec (32 dimensions, length 256) and scikit-learn defaults. This is a re-implementation for four of five classifiers, since their code is not shipped.
3. Add the controls on the same sample: opcode-count random forest; a single-token rule (`.cfi_startproc`); a format-normalised version of both classes.
4. Blocker for a grouped split: the pickles have no file names and are truncated to 1,000 tokens. Do the grouped split from the full archive instead.

### FastSpec detector: data-level replication feasible in days; BERT replication is the hard part

1. Download 391 MiB, extract about 6.7 GB. Fits a laptop.
2. Opcode-count random forest on the shipped file-level split: straightforward. Subsample; the paper's unit is a token window (1.3 million positive windows in test), not a file.
3. Format normalisation is required before any number means anything. Options: strip directives, labels, symbol names and addresses from both classes; or assemble each gadget `.s` and run it through `objdump -d` so both classes share one pipeline. The second needs x86-64 binutils, which on an arm64 laptop means a cross toolchain or a container.
4. Grouped split: assign each gadget to its base source in `FastSpec/sources/` and to a compiler, then hold out whole base examples. Depends on the provenance check in the open questions.
5. Out-of-distribution benign test: compile ordinary benign C to `.s` with gcc and clang (compiler-output format, unlike the benign training class) and measure the false-positive rate. Also the reverse: gadgets passed through `objdump`.
6. BERT model: blocked on TensorFlow 1.5 and the missing intermediate files. Workarounds are an x86 container with an old Python and TensorFlow 1.x for inference with the shipped checkpoint, or a re-implementation in a current framework (L=3, H=64, A=2, vocabulary 960, sequence length 250, per §5.2). The second is a re-implementation, not a replication.
7. Phoronix and OpenSSL case studies: the labelled function lists are not in the repository. Reproducing them means re-running SpecFuzz.

### SpectreGAN 72% benign bar: blocked as a replication

- Missing from the artifact: the fuzzer, the 16 verification programs, and any generated-sample set marked as GAN output.
- The success test is a hardware proof of concept on an Intel CPU.
- What remains possible: apply a 0.3 contiguous mask to released gadgets, infill with copy, unigram, random-instruction and deletion controls, and judge leakage with this repo's own oracles. That measures the base rate under a different oracle, so it would be a new experiment and could not be quoted as reproducing the 72%.

## Open questions

1. Do file names in `spectre_train` / `spectre_test` encode the base example, compiler or mutation index? Needs the full archive listing.
2. Are GAN-generated gadgets in the archive, and are they distinguishable from fuzzing output?
3. Does the released file-level split put descendants of one base example on both sides? Almost certainly yes with 17 sources, but not measured.
4. After FastSpec's own preprocessing (`asm_parser.py`, `reducer.py`), do directive and symbol-name tokens survive in the gadget class? The vocabulary file suggests symbol names do.
5. How many gadget files are there? `list2tsv.py` says 956,096 training functions; the paper says almost 1.1 million from fuzzing and 1.2 million with the GAN.
6. Is the shipped `model.ckpt-3000` the model behind the paper's numbers?
7. The ACM DOI of the HASP'22 paper.
8. `SpectreGAN/LICENSE` text and the dataset's licence.
9. Whether the SpectreGAN generation run used a present-rate of 0.7 (paper) or 0.8 (README example).

## Sources

- FastSpec paper, arXiv v2 PDF: https://arxiv.org/pdf/2006.14147v2 (HTML: https://arxiv.org/html/2006.14147v2)
- FastSpec repository: https://github.com/vernamlab/FastSpec
  - `README.md`, `dataset/README.md`, `dataset/build.sh`, `FastSpec/README.md`, `SpectreGAN/README.md`
  - `FastSpec/run_classifier.py`, `FastSpec/list2tsv.py`, `FastSpec/asm_parser.py`, `FastSpec/example/scan.sh`, `FastSpec/example/combined_reduced_vocab.v5.txt`, `FastSpec/sources/`
  - `SpectreGAN/generate_samples.py`, `SpectreGAN/data/spec_loader.py`, `SpectreGAN/recompiler.py`
  - first 4 MB of `dataset/dataset_aa` (archive listing and one benign file)
  - issues: https://github.com/vernamlab/FastSpec/issues?q=is%3Aissue
- SPECDET paper, arXiv: https://arxiv.org/abs/2210.14452 (PDF: https://arxiv.org/pdf/2210.14452)
- SPECDET repository: https://github.com/biringaChi/SPECDET
  - `README.md`, `datasets/spectre_gadgets/README.md`, `datasets/spectre_gadgets/build.sh`
  - `src/SGDetector/spectre_embed.py`, `train.py`, `test.py`, `config.py`; `src/CPSDetector/train.py`
  - `src/SGDetector/data/validation_set.pickle` and the three label pickles
  - issues: https://github.com/biringaChi/SPECDET/issues?q=is%3Aissue
- GitHub API metadata and file trees: https://api.github.com/repos/vernamlab/FastSpec, https://api.github.com/repos/biringaChi/SPECDET
- SpecTacle thesis: https://pedro-bernardo.github.io/pdf/86500-Pedro-Bernardo-dissertacao.pdf
- Second-hand description under test: `/Users/ritvikgupta/Downloads/Spectre Gadgets Feedback.md`, section B and the related-work table
