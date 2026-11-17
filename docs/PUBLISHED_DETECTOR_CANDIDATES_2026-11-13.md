# Published learned Spectre-gadget detectors: which one can score our pairs

Date: 2026-11-13. Fact-finding only; no third-party code was executed. Clones are under
`/private/tmp/claude-501/-Users-ritvikgupta-SpecExec/02e6f899-8232-45c6-9f8a-6afe3218b6ee/scratchpad/detectors/`
(nothing from them is stored in this repository).

## Bottom line

1. **FastSpec** (EuroS&P 2021) is the only candidate with shipped trained weights, and it is
   the best choice. This corrects `eval/replication/FASTSPEC_SHORTCUTS.md` lines 14-15
   ("files that are not shipped"): a fine-tuned classifier checkpoint, its vocabulary and a
   config are in `FastSpec/example/` of the authors' repository.
2. **The shipped checkpoint does not match the shipped config or the paper.** The checkpoint
   holds 8 encoder layers; the config next to it and the paper both say 3. This must be
   resolved (steps below) before any number is quoted.
3. **SPECDET** (HASP'22) is the fallback: no weights, and its code does not run as shipped,
   but it retrains in minutes on CPU from data that is shipped.
4. Nothing else found has a public artifact. SCR-Spectre and µLAM have none.

## Comparison

| | FastSpec | SPECDET (gadget CNN) | SCR-Spectre | µLAM |
|---|---|---|---|---|
| Venue | EuroS&P 2021 | HASP'22 (workshop, short paper) | Computers & Electrical Engineering 123, 2025 | ePrint 2024/1978; page says ICCAD 2024 |
| Read level | Paper text (arXiv HTML v2) + full code read | Code fully read; paper partly (PDF text extraction lost the results pages) | **Abstract-only** | **Abstract-only** |
| Artifact | github.com/vernamlab/FastSpec @ `813230aa` (2023-04-12), Apache-2.0 | github.com/biringaChi/SPECDET = github.com/bayegaspard/SpecDet @ `e57b760f` (2024-03-29), MIT | None found | None found |
| Input | x86-64 AT&T assembly tokens from `objdump -d`; windows of tokens | x86-64 assembly text, whitespace tokens, word2vec (32-d), first 1000 tokens | Assembly (per abstract) | C source + system config + performance-counter values |
| Our pairs convertible | Yes, x86 only (2,225 of 2,310 pairs) | Yes, x86 only | Unknown | No (not assembly) |
| Trained weights shipped | **Yes** (`example/model.ckpt-3000.*`), with caveat 2 above | No | No | No (fine-tuned GPT-3.5, hosted) |
| Training code + data | Both shipped; paths must be rebuilt by hand | Both shipped; code broken as shipped | No | No |
| Framework | TensorFlow 1.x (`tf.contrib`), no pin file | torch, gensim, sklearn; no versions pinned | n/a | OpenAI API |
| Headline claim | 99.9% precision and recall on test split; AUC 0.998 on OpenSSL; 0.74 / 0.87 on Phoronix | Test F1: CNN 0.964, random forest 1.000 | "Significantly outperforms" (no numbers seen) | No numbers in abstract |
| Variants | Spectre-V1 only | Spectre-V1 only | Unknown | Several attack families (per abstract) |
| Verdict | **First choice** | **Fallback** | Not usable | Not usable |

## Per-candidate notes

### 1. FastSpec

**Citation.** Tol, Gulmezoglu, Yurtseven, Sunar. "FastSpec: Scalable Generation and Detection
of Spectre Gadgets Using Neural Embeddings." IEEE EuroS&P 2021, pp. 616-632. arXiv:2006.14147.
Repository github.com/vernamlab/FastSpec, commit `813230aa68d4101ae4d600ac31f7a8079a0961bc`.
Licence Apache-2.0 (the `NOTICE` file says the code derives from Google BERT). The older
copy at github.com/canertol/FastSpec (`96b3d2c1`, 2022-09-07) has the same files. The
Hugging Face repository `canertol/FastSpec` is a stub (README only, no weights).

**Input.** x86-64, AT&T syntax. The shipped pipeline (`example/scan.sh`) is:
`objdump -d --no-show-raw-insn` → strip the address column → `asm_parser.py` +
`reducer.py` (labels → `<label>`, immediates → `<imm>`, out-of-vocabulary → `<UNK>`,
`<end>` after some instructions) → `list2tsv.py` sliding windows → `run_classifier.py`.
Tokenisation is whitespace-only: `tokenization.py` has BERT's word-piece and punctuation
splitting removed (confirmed by diff against upstream google-research/bert).

**Window.** `example/scan.sh` uses 50 tokens with overlap 49 (stride 1) and
`max_seq_length=256`. The paper reports 80 tokens as best on OpenSSL (Sec. V-C, Fig. 5), a
function's score being the maximum over its windows, threshold 0.48. `list2tsv.py` drops a
trailing window of 10 tokens or fewer.

**Can our pairs be converted without destroying the distinguishing property?** Yes, with
three things to measure and report:
- Both sides go through the same pipeline, so the comparison within a pair is fair.
- `lfence`, `mfence`, `sfence` are in the vocabulary (ids 216, 214, 183 in
  `combined_reduced_vocab_format.v5.txt`), so the fence pairs keep their difference. Token
  order is kept, so reorder pairs keep theirs.
- Every immediate becomes `<imm>` and every label `<label>`. Any pair whose two sides differ
  only in a constant becomes identical input and must be counted as a tie, not dropped.
- Fed as text, 8.1% of mnemonic tokens in our x86 pairs are out of vocabulary (mostly
  Revizor's `bt*`, `cmov*`, `adc`/`sbb` forms with size suffixes). Measured with
  `scratchpad/myscripts/cov.py` against the shipped vocabulary. Assembling and
  disassembling with objdump first (the authors' own route) changes the spelling and
  should be the primary format.
- Format matters for the absolute score. Our earlier check on their data found
  `mov` present ⇒ benign at 0.95 balanced accuracy (objdump prints `mov`, compiler output
  prints `movq`). Run both formats and report both.
- FastSpec is V1-only. Headline on our V1 sets (injected, linux, V1 share of the hardware
  sets); report L1TF, MDS and V4 separately as out of the model's stated scope.
- arm64 pairs (85) cannot be scored.

**Weights.** Shipped: `FastSpec/example/model.ckpt-3000.{data-00000-of-00001,index,meta}`
(4.46 MB), with `combined_reduced_vocab.v5.txt` (JSON, 1,297 tokens),
`combined_reduced_vocab_format.v5.txt` (1,302 lines with the 5 special tokens) and
`bert_small_config_old.json`. The README says "The classifier code and trained model is in
this folder."

I parsed the checkpoint's `.index` file directly (my own parser,
`scratchpad/myscripts/ckpt_index.py`; no TensorFlow). It contains:
- `bert/embeddings/word_embeddings` [1302, 64], `position_embeddings` [256, 64];
- **`bert/encoder/layer_0` … `layer_7`** (8 layers), hidden 64, intermediate 128;
- `bert/pooler`, and the classifier head `output_weights` [2, 64], `output_bias` [2];
- Adam slots; `global_step`. 372,035 non-optimiser values in total.

So it is a fine-tuned two-class classifier, not just a pre-trained encoder.

**Dependency state.** The README says "TensorFlow = v1.5". The code uses
`tf.contrib.tpu.TPUEstimator`, which upstream BERT needs TensorFlow ≥ 1.11 for; in
practice TensorFlow 1.15, Python ≤ 3.7, x86-64 Linux. There are no TensorFlow 1.x wheels
for Apple silicon; use the cluster or a `linux/amd64` container. `modeling.py` differs from
upstream BERT only in comments, so the weights are a plain small BERT and can also be
loaded into a PyTorch `BertForSequenceClassification` by copying tensors by name.
`example/scan.sh` has a stray space (`--data_dir= ./`) and appends to its `.s` file with
`>>`; both are trivial.

**Retraining, if needed.** Code and data are shipped (`dataset/`: spectre_train 956,096
files, spectre_test 239,025, benign_train 1,581, benign_test 396). The paper states an
NVIDIA Titan XP, about 6 h pre-training, 1 h positional pre-training, 20 min fine-tuning
(Sec. V-B). The README commands point at `~/FastSpec/data/...` files that are not shipped
(`data.txt`, `train_raw.tsv`, `combined_word_dict_format.txt`); they must be regenerated
from `dataset/` with `asm_parser.py`. The author said the same in issue #3 (2023-03-17):
the training script will not run as-is. The paper's 107 M-line pre-training corpus of
Linux libraries is not shipped beyond the 1,977 benign files.

**Paper claims.**
- Test split: 1.3 M true positives, 110 false positives, 99.9% precision; 99.9% recall
  (Sec. V-B). Test data: 20% of the fuzzed gadgets plus disassembled Linux libraries.
- OpenSSL 3.0.0 functions, labels from SpecFuzz: AUC 0.998 at 80-token windows, F-score
  0.99 at threshold 0.48 (Sec. V-C, Fig. 5).
- Phoronix Test Suite: precision 0.74, recall 0.87 on average, against oo7 0.47 / 0.44 and
  Spectector 0.43 / 0.67 (Sec. V-D, Table II).
- Architecture: 3 Transformer blocks, hidden 64, 2 heads, vocabulary 960 (Sec. V-B).

These were pulled from the arXiv HTML by keyword and by a summarising fetch. A person
should open the cited sections before they go in the paper.

**Blocking problems.**
1. **Layer mismatch.** The checkpoint has 8 encoder layers. `bert_small_config_old.json`
   and the paper say 3. BERT's loader matches variables by name and ignores the rest, so
   the shipped example would silently build layers 0-2 and attach a pooler and head that
   were trained on top of layer 7. Either the example is broken as shipped, or the right
   config is 8 layers and this is not the paper's architecture.
2. **Not provably the paper's model.** Vocabulary 1,302 here against 960 in the paper;
   `scan.sh` calls it `fastspec.v1` and the config is named `_old`; it stopped at step
   3,000. What it was trained on is not recorded.
3. **Which output column means "spectre" is not recorded** (labels are `"0"`, `"1"`; no
   training file is shipped). It has to be read off their own test split.
4. No expected output is shipped for the example binary, so there is nothing to diff
   against except the paper's test-split figures.
5. V1 only, x86-64 only.

### 2. SPECDET (gadget detector, "SGDetector")

**Citation.** Biringa, Baye, Kul. "Short Paper: Static and Microarchitectural ML-Based
Approaches For Detecting Spectre Vulnerabilities and Attacks." HASP'22 (with MICRO'22),
pp. 53-57. arXiv:2210.14452. Repository github.com/biringaChi/SPECDET; the copy cloned
here, github.com/bayegaspard/SpecDet, is at the same commit
`e57b760f6942cbadbab5e7f12ceb9e09bd2ab74f`. MIT licence.

**Input.** The FastSpec files read whole, first two lines dropped, split on whitespace,
truncated to 1,000 tokens, each token a 32-d word2vec vector; the CNN sees a (tokens × 32)
image. x86-64 only. Our pairs convert trivially (join lines, split on whitespace). Because
directives and symbol names reach the model, pairs must be fed without them on both sides.

**Weights.** None. `train.py` would write `model.pth`; it is not in the repository. The
word2vec vectors (`*.wordvectors`) are not shipped either, only the looked-up embeddings
for train and test (`training_embedding.pickle`, `test_embedding.pickle`). So new inputs
cannot be embedded in the authors' vector space; word2vec must be refitted.

**Code state (read, not run).**
- `spectre_embed.py`: the methods that build the splits sit after the
  `if __name__ == "__main__":` block and outside the class; `generate()` calls `self.pad()`
  with no argument; a separate word2vec is fitted for each of train, validation and test.
- `data_transfrom()` loads `validation_embedding.pickle`, which is not shipped, from a
  `CNN/data/` path that does not exist (`main.py` imports `CNN.train`; the folder is
  `SGDetector`).
- Training uses only the first 3,000 training and first 1,000 test samples; default 2
  epochs.
- `spectre_cnn.py`: three one-channel 3×3 convolutions in sequence, adaptive max-pool to
  10×10, two linear layers, sigmoid. Tiny; CPU minutes.
- `requirements.txt`: numpy, pandas, torch, gensim, matplotlib, sklearn, no versions.
- The classical models in the paper's table (random forest, SVC, logistic regression,
  naive Bayes) have no code under `SGDetector/`.

**Paper claims.** Test F1: 1D-CNN 0.964, naive Bayes 0.972, SVC 0.998, logistic regression
0.999, random forest 1.000, on a 60,000-sample subset of the FastSpec data (49,000 /
1,000 / 10,000). These figures are carried over from `eval/replication/SPECDET_SHORTCUTS.md`;
the PDF text I extracted today did not include the results table. The paper lists as
limitations: semi-synthetic gadgets, no ablation, V1 only (Sec. 6).

**Blocking problems.** No weights. Running it means repairing the code and refitting
word2vec, so the result is "our retraining of their architecture on their data", not their
model. Workshop short paper. Our earlier work already shows its data is separable by one
token and by length alone.

### 3. SCR-Spectre (abstract-only)

Lu, Luo, Pan. "SCR-Spectre: Spectre gadget detection method with strengthened context
relevance." Computers and Electrical Engineering 123 (April 2025).
DOI 10.1016/j.compeleceng.2024.110029. Per the abstract: a BERT variant ("SCR-BERT") that
learns data and control flow, plus dynamic taint analysis to filter conditional
instructions; claims to outperform prior methods and names FastSpec as the only earlier
deep-learning method. The publisher page returned 403; no full text read. No repository
found on GitHub (searches for "SCR-Spectre", "SCR-BERT spectre": zero relevant hits) and no
code link in any listing. A ResearchGate listing carries an abstract with emotion-recognition
datasets in it, which looks like a mix-up; ignore it. **Not usable without the authors.**

### 4. µLAM (abstract-only)

Mandal, Shukla, Rastogi, Bhattacharya, Mukhopadhyay. "µLAM: A LLM-Powered Assistant for
Real-Time Micro-architectural Attack Detection and Mitigation." IACR ePrint 2024/1978; the
ePrint page says published at ICCAD 2024. A fine-tuned GPT-3.5 that takes source code,
system configuration and performance-counter readings. No code or model link. Not an
assembly-level gadget detector and not runnable by a third party. Our existing LLM
baseline (`eval/pairs/LLM.md`) is the nearest thing we can defend; do not call it µLAM.

### Looked at and excluded (not learned gadget detectors)

- Runtime attack detectors over performance counters (SPECDET's `CPSDetector`, MAD-EN,
  SCAGuard, the 2025 GAN-augmentation paper, jdepoix/spectre-real-time-detection): they
  classify traces of a running attack, not code.
- ZeroLeak (LLM patching; detection is done by Spectector and similar tools), uGen (LLM
  attack generation), µRL / SpecRL (discovery by reinforcement learning; already in
  `docs/RELATED_WORK_NEAR_MISSES_2026-11-12.md`).
- oo7, Spectector, SpecFuzz, SpecTaint, Kasper, Teapot, InSpectre Gadget: not learned.

I found no graph-network or LLM-fine-tuned Spectre gadget detector with a public artifact,
2019-2026. Search coverage was limited (see log), so this is "none found", not "none exist".

## Ranked recommendation

### First: FastSpec, shipped checkpoint (about 3-4 working days)

It is the only published learned detector whose authors' own weights can be run, it is the
field's reference system, and it takes the same kind of input we have.

1. **Environment (half a day).** On the cluster or an amd64 container: Python 3.7,
   `tensorflow==1.15.5`. Pin the repository at `813230aa`. Record checksums of the three
   checkpoint files.
2. **Resolve the layer question (one day). Do this before anything else.** Score the
   authors' own `spectre_test` / `benign_test` files through `example/` unchanged, twice:
   with the shipped 3-layer config, and with a copy that sets `num_hidden_layers` to 8.
   Whichever reproduces something close to the paper's 99.9% is the model to use; this
   also fixes which output column is "spectre". If neither does, stop and go to the
   fallback. Report both results either way.
3. **Independent port (half a day).** Load the same tensors into a PyTorch
   `BertForSequenceClassification` and check it agrees with TensorFlow on the same
   windows to within rounding. This guards against a silent loading error and gives a run
   path that does not need TensorFlow 1.
4. **Convert pairs (one day).** For each x86 side: assemble (`as` or `llvm-mc`), then the
   authors' objdump route, then their parser unchanged. Second format: our text lines
   straight into their parser. Log per pair: token count, share of `<UNK>`, whether the two
   sides are identical after tokenisation.
5. **Score (half a day).** Window 50 / stride 1 as shipped and 80 as in the paper; side
   score = maximum window confidence. Write `{"pair_id","side","score"}` lines and run
   `python3 -m eval.pairs.score --scores FastSpec=...`. Also report recall and specificity
   at the paper's 0.48.
6. **Write to the authors** with the layer finding and the reproduction before anything is
   published (plan item B6). Issue #3 shows the first author answered in 2023.

What a reviewer can be told: authors' code at a fixed commit, authors' weights, authors'
preprocessing, their paper's figure reproduced on their data first, then our pairs.

### Fallback A: retrain FastSpec from the shipped data (about 1-2 weeks, roughly 8 GPU-hours per run)

If the checkpoint reproduces nothing. Rebuild `data.txt` and the classifier files from
`dataset/` with their parser, then follow the README: pre-train, positional pre-train,
fine-tune, with the paper's settings (3 layers, hidden 64, 2 heads). Accept only if it
reaches the paper's test-split figure. Three seeds. Weaker claim ("retrained from the
authors' code and data"), and the benign pre-training corpus is much smaller than the
paper's.

### Fallback B: SPECDET CNN, retrained (about 2 days, CPU)

Repair the split and path code, fit one word2vec on the training split, train the CNN,
accept only if test F1 is near the paper's 0.964, then score pairs. Add the random forest
on the same embeddings since the paper reports it as best. Present it as a second,
weaker system, not as a replacement for FastSpec.

## Search log

| Where | Query or action | Result |
|---|---|---|
| Repository | `docs/PLAN_2026-11-11_post_review.md` 4B; `.scratch/litreview2-additions/`; `eval/replication/*.md`; `paper_backup/references.bib` | Named: FastSpec, SPECDET, µLAM. Bib has FastSpec only |
| Web search | machine learning Spectre gadget detection assembly neural network github artifact | FastSpec, SPECDET, SCR-Spectre |
| Web search | Spectre gadget detection graph neural network binary code 2023-2025 | Nothing relevant |
| Web search | large language model detect Spectre gadgets fine-tuned model dataset 2025 | ZeroLeak, µRL; no detector |
| Web search | LLM Spectre v1 gadget detection benchmark assembly 2025 2026 | Nothing new |
| Web search | µLAM (three phrasings) | ePrint 2024/1978; uGen |
| Web search | FastSpec BERT pretrained weights checkpoint PyTorch port reimplementation | No port found |
| Web search | SCR-Spectre (three phrasings) | Publisher abstract only; no code |
| Web search | papers citing FastSpec, transformer / GNN / LSTM | SCR-Spectre only |
| Web search | speculative execution vulnerability detection deep learning source / IR / binary | Nothing Spectre-specific |
| Semantic Scholar API | citations of arXiv:2006.14147 | 20 returned; relevant: SPECDET, SCR-Spectre. Citations of SPECDET: rate-limited, not obtained |
| Crossref API | SCR-Spectre | DOI, volume, authors |
| OpenAlex API | seven queries | **Rate-limited, no results.** Gap |
| GitHub search API | 11 queries (SCR-Spectre, FastSpec, spectre gadget + bert / neural / classifier / LLM / GNN, …) | Only vernamlab/FastSpec |
| Hugging Face API | "spectre gadget", "fastspec", "spectre v1" | `canertol/FastSpec` stub only |
| GitHub | vernamlab/FastSpec issues | One issue (#3, closed 2023); read as a summary |
| Clone, read | vernamlab/FastSpec, canertol/FastSpec, bayegaspard/SpecDet | See notes |
| Diff | FastSpec `modeling.py`, `tokenization.py`, `run_classifier.py` against google-research/bert | Model unchanged; tokeniser reduced to whitespace |

Not done: Google Scholar "cited by" lists; full text of SCR-Spectre, µLAM and the SPECDET
results pages; FastSpec paper Sec. VI-D and appendix; non-English venues.

## Sources

- https://github.com/vernamlab/FastSpec , https://github.com/canertol/FastSpec , https://huggingface.co/canertol/FastSpec
- https://arxiv.org/abs/2006.14147 (HTML v2)
- https://github.com/vernamlab/FastSpec/issues/3
- https://github.com/bayegaspard/SpecDet , https://github.com/biringaChi/SPECDET
- https://arxiv.org/abs/2210.14452
- https://doi.org/10.1016/j.compeleceng.2024.110029
- https://eprint.iacr.org/2024/1978
- https://github.com/google-research/bert (for the diff)
