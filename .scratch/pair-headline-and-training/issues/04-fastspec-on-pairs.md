# 04 — FastSpec scored on the Spectre-V1 pairs

Status: needs-triage
Type: task
Blocked by: nothing

## Question

Does the shipped FastSpec checkpoint reproduce the paper's figure on FastSpec's own test split, and what does that model score on our pairs?

## Steps

1. Verify the claimed mismatch (8 layers in the checkpoint against 3 in the config) by reading the checkpoint index.
2. Score their test split under both configurations; find which output column means Spectre from their own labelled data.
3. If one reproduces the paper, convert our x86 pairs with their preprocessing and score them. If neither does, retrain from their code and data and say so.
4. Report Spectre-V1 pairs as the headline row; other classes separately as outside its stated scope. Report ties caused by conversion.

## Done when

A FastSpec column in `PAIRS.md` with a note saying whether it is the authors' checkpoint or our retraining.

Spec: `../spec.md`.

## Comments

### 2026-11-13 — step 1 checked (Claude)

Read the bytes of `FastSpec/example/model.ckpt-3000.index` at commit `813230aa` (nothing of
theirs was executed): it names encoder layers 0 to 7. The only config beside it is
`bert_small_config_old.json` (note "old" in the name): 3 layers, hidden size 64, vocabulary
1,302. So the mismatch is real, and the config's own name suggests it predates the checkpoint.
Not yet checked: which configuration reproduces the paper on their test split; the paper's
stated layer count and vocabulary size (to be read in the paper itself).
