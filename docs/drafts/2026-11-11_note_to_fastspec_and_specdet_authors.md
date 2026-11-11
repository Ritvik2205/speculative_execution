# Draft notes to the FastSpec and SPECDET authors

Status: DRAFT for the project owner to edit and send. Nothing has been sent. Plan item B6
(`docs/PLAN_2026-11-11_post_review.md`): the authors see the reproduction before any of it is
written up. Numbers are from `eval/replication/FASTSPEC_SHORTCUTS.md` and
`eval/replication/SPECDET_SHORTCUTS.md` at commit `02b234e5`.

Before sending, decide:
- Whether to attach the two write-ups and the scripts (recommended: yes, they are short and
  contain none of the authors' data).
- How long to wait for a reply before submission (common practice: 30–45 days, stated in the note).
- Who signs, and whether the supervisor is copied.

---

## 1. To the FastSpec authors (Tol, Gulmezoglu, Yurtseven, Sunar)

**Subject:** Question about the FastSpec dataset format (benign vs. gadget files)

Dear Dr Tol and colleagues,

I am a student working on learned detection of speculative-execution gadgets, and I have been
using the dataset released with FastSpec (github.com/vernamlab/FastSpec, `dataset/`) as an
external reference point. While reproducing baselines on it I found some properties of the
data that I would like to check with you before I describe them anywhere, in case I have
misread the pipeline.

What I did. I took a random sample of 3,000 files from each of `spectre_train` and
`spectre_test` and all files in `benign_train` and `benign_test`. I tokenised them with my own
re-implementation of the preprocessing rules, written from reading `asm_parser.py`,
`reducer.py` and `list2tsv.py`, and using your `word_dict.txt`. I did not run your code or your
BERT model. I cut windows of 80 tokens and trained random forests on token counts. So
everything below is about what the data allows a model to do, not about what your model does.

What I saw.

1. The two classes appear to be in different assembly formats. Benign files look like
   disassembler output (`mov`, `callq`), gadget files like compiler output (`movq`, `movl`).
   The single rule "the token `mov` is present, so benign" reaches 0.95 balanced accuracy on
   the shipped test split; `mov` is in 93% of benign windows and 3% of gadget windows.
2. A random forest on token counts, with no order information, reaches 0.9994 balanced
   accuracy on the shipped split.
3. 99.9% of test gadget windows share compiler family and base example (the integer in the
   file name) with a training window. Holding out half of the base examples leaves the
   token-count model at 1.0000.
4. When I assemble the test gadgets and disassemble them, so that only the format changes, the
   token-count model calls 17% of the windows gadgets (100% before). Benign functions left in
   compiler-output format are called gadgets 95% of the time.
5. With mnemonics canonicalised so that format is removed, a mnemonic-count model still
   reaches 0.99 on the split and survives the format change. But on 31 gadgets where
   Spectector reports a leak and reports no leak after an `lfence` is inserted behind the
   bounds check, it flags both versions in all 31 cases.

What I would like to ask.

- Is my reading of the two folders' formats correct, or does a step in your pipeline
  normalise them before training that I have missed?
- Did you evaluate on benign code in compiler-output format, or on gadgets after
  assembling and disassembling? The Phoronix result in the paper (0.74 precision, 0.87
  recall) suggests the model does transfer to disassembled binaries, and I would like to
  represent that fairly.
- Would you be willing to share the trained checkpoint, or to run the two small test sets
  (format-swapped gadgets, fenced gadgets) through your model? That would settle whether the
  BERT model is affected, which my experiments cannot show.

Limits I am aware of: it is a sample, not the full 1.2 million files; my tokeniser may differ
from yours in corner cases; I only tried window size 80; random forests are a stand-in.

I intend to mention these observations in a paper on evaluation methodology for gadget
detectors, including the same kind of flaws in my own earlier pipeline, and I would much
rather include your corrections and context than be wrong in print. I am happy to share the
scripts and the full write-up, and I will not submit anything describing FastSpec before
[DATE, e.g. 30 days from sending] so that you have time to respond.

Thank you for releasing the data and code; it is the reason this check was possible.

Kind regards,
[NAME]
[AFFILIATION]

---

## 2. To the SPECDET authors (Biringa, Baye, Kul)

**Subject:** Question about the SGDetector sample data in the SPECDET repository

Dear Dr Biringa and colleagues,

I am a student working on learned detection of speculative-execution gadgets. I have been
looking at the sample data shipped with SPECDET (github.com/biringaChi/SPECDET, pickles under
`src/SGDetector/data/`, commit e57b760f) as an external reference, and I found some properties
I would like to check with you before describing them anywhere.

What I did. I loaded the training, validation and test pickles and tokenised each sample the
way I understand `wrangle` plus the whitespace split to do. I did not run your models. I
measured how well very simple rules separate the two labels on the test split.

What I saw.

1. Assembler directives and symbol names reach the token stream. `.cfi_startproc` and
   `victim_function:` occur in every gadget sample of the training split and in no benign
   sample; either token alone gives 1.0000 balanced accuracy on the test split.
2. Length alone separates the classes: "at least 352 tokens, so benign" gives 0.9993, and
   "at least 130 instructions, so benign" gives 1.0000.
3. A random forest on mnemonic counts gives 1.0000.
4. The test split is about 96% gadget samples (9,604 of 10,000).

What I would like to ask.

- Is this sample the data behind the results in the HASP'22 paper, or a reduced example?
- Does the model in the paper see the directive and label tokens, or are they removed in a
  step I have missed? My reading of the code is that fixed-length head slices of each file are
  used; please correct me if not.
- Were the benign and gadget samples produced by the same toolchain and in the same format?

Limits I am aware of: I looked only at the shipped sample and at simple rules, not at your
trained models, and I may have misread the preprocessing.

I intend to mention these observations in a paper on evaluation methodology for gadget
detectors, which also documents the same kind of flaws in my own earlier pipeline. I would
rather include your corrections than be wrong in print. I can share the script (it reads your
pickles in place and stores nothing from your repository) and the write-up, and I will not
submit anything describing SPECDET before [DATE] so that you have time to respond.

Thank you for making the repository public.

Kind regards,
[NAME]
[AFFILIATION]

---

## Notes for the sender

- The FastSpec data inside the SPECDET repository is a byte-identical copy of FastSpec's
  `dataset/` archive, so point 1 of the FastSpec note may also interest the SPECDET authors;
  the SPECDET note does not say so, to keep each note about the recipient's own work.
- Neither repository states a licence for the dataset. Nothing from them is stored in this
  repository, and the notes do not promise redistribution.
- If an author answers that a normalisation step exists, re-run with it before anything else.
- If there is no answer by the stated date, the paper says: "we contacted the authors on
  [date] and had not received a reply at submission".
