# Spec: leak-conditioning token (A) + contrastive fold of HW matched pairs (B)

Status: **design**. Target: `gen/generator.py`, `gen/train_generator.py`, a new
data-assembly script, and a cluster retrain + oracle-grounded eval.

## 0. Why

The flip probe (`eval/hwlabel_variants/`) proved the detector learns gadget
*shape*, not the leak *mechanism* — it flags every Revizor-sandboxed gadget,
fenced or not. The generator has the **same** blindness by construction:

- `train_generator.py` trains a class-conditioned LM on `v54_train.jsonl`,
  whose attack-class records are labelled by **class/provenance, not an oracle
  leak verdict**. So `<CLS_SPECTRE_V1>` conditions on *V1-shaped*, not
  *V1-leaking*. Whatever fence/no-fence mix the corpus had is what the model
  reproduces.
- The only place "unmitigated" is a training signal is the RL-from-oracle
  rejection loop (`rl_from_oracle.py`: LEAK +1.0 / SAFE 0.0, keep-only-LEAK),
  and that reaches **V1 (+V4), x86 only** (SpectectorValidator; V2 yield is
  dead). MDS, L1TF, RETBLEED, INCEPTION, BHI, RSB and all of arm64/riscv64 get
  **no** mitigation-awareness.
- Conditioning tokens today = **class + arch + length only**. There is no way
  to ask the model for a *leaking* vs a *mitigated* gadget of a given class.

We have, unused by generation, the exact missing signal: the 821 HW-labelled
fenced variants (`eval/data/revizor_hwlabel_variants.jsonl`), **148 base
gadgets** each present as a leaking arm and a hardware-mitigated arm, matched,
x86. These verdicts are frozen hardware ground truth — a leak/safe label for
**MDS/L1TF too**, for which no symbolic oracle exists and building an exfil
harness is the exploit-policy wall.

## 1. Goal

Make the generator able to **generate attacks that leak, not mitigated
look-alikes**, and let a caller steer it:

    model.sample(target_class="SPECTRE_V1", target_arch="x86_64", mit="leak")

should prefer the unmitigated form; `mit="safe"` the fenced/twin form. The
token raises the generator's *prior* toward unmitigated output; the oracle in
the existing loop remains the sole arbiter of whether a sample actually leaks.
Higher unmitigated prior → higher oracle leak-yield → a better RL bootstrap
(directly attacks the V1/V4 yield-ceiling problem).

**Non-goal:** this does not create a leak oracle for new classes and makes no
leak *claim* from the model itself. Every leak verdict still comes from an
external oracle (Spectector/Revizor). The token is a generation prior.

## 2. A — the leak-conditioning token

Mirror the existing **optional, additive** length-token machinery exactly, so
a model trained without the flag is byte-identical to today.

### 2.1 Vocabulary (`gen/generator.py`, `GenVocab`)

Add a `mits` family alongside `classes` / `archs` / `lens`:

```python
MIT_VALUES = ["leak", "safe", "unknown"]        # module-level, like LEN_BUCKETS
# in __init__:  self.mits = list(mits) if mits else []
#               self.mit_tokens = [f"<MIT_{m}>" for m in self.mits]
#               self.mit_id     = {m: self.stoi[f"<MIT_{m}>"] for m in self.mits}
# add self.mit_tokens into the specials block before instr_tokens
# build(): new kwarg mits=None, threaded through like lens
```

`<MIT_*>` are control tokens — never pruned by `min_count`, never emitted
mid-stream (add to the same forbidden-token set that already blocks
`<CLS_*>/<ARCH_*>/<LEN_*>`).

### 2.2 Prefix (both `encode_record` and `sample` — keep order identical)

New prefix order: `[cls, arch, mit, len]` (mit before len; len stays last so
its insertion logic is unchanged). Both sites gated on `if vocab.mit_id:`.

```python
# encode_record(seq_tokens, cls, arch, vocab, max_len, mit=None):
prefix = [vocab.cls_id[cls], vocab.arch_id[arch]]
if vocab.mit_id:
    prefix.append(vocab.mit_id[mit or "unknown"])   # default: honest "unknown"
if vocab.len_id:
    prefix.append(vocab.len_id[length_bucket(...)])
```

```python
# sample(target_class, target_arch, mit=None, ...):
ids = [v.cls_id[target_class], v.arch_id[target_arch]]
if v.mit_id:
    ids.append(v.mit_id[mit or "leak"])             # default at SAMPLE time: leak
if v.lens and target_len: ids.append(v.len_id[target_len])
```

Note the two defaults differ on purpose: at **encode** time an unlabelled
record is `unknown` (never lie about leak status); at **sample** time the
caller usually wants attacks, so the default is `leak`. `n_prefix` accounting
and the prefix-drop at the end of `sample` already length-generalise.

### 2.3 Flag

`train_generator.py`: `--leak-cond` (like `--length-cond`). Off → `mits=None`
→ no `<MIT_*>` tokens → identical to current behaviour. On → `mits=MIT_VALUES`.

## 3. B — what label each record's `<MIT_*>` token gets

The point is a **class-preserving contrast**: a mitigated V1 twin is trained as
`<CLS_SPECTRE_V1>` + `<MIT_safe>`, NOT as `<CLS_BENIGN>`. Same class token,
different mit token, different fence placement — that is the signal that lets
`mit=leak` vs `mit=safe` diverge for a fixed class.

| source | records | `<CLS_*>` | `<MIT_*>` | rationale |
|---|---|---|---|---|
| 821 HW variants — leaking arm (3/3) | 360 | base gadget's `vuln_class` | **leak** | HW-confirmed leak |
| 821 HW variants — mitigated arm (0/3) | 461 | base gadget's `vuln_class` | **safe** | HW-confirmed mitigated; keeps class so the pair contrasts |
| HW gadget pool (725, all leaking) | 725 | its class | **leak** | HW-confirmed leak (rebuild 423→725 first) |
| `v54` attack-class records | ~ | its class | **unknown** | labelled by class, never oracle-verified — do not claim leak |
| `v54` BENIGN (github/ordinary code) | ~ | BENIGN | **safe** | genuinely not a gadget |
| oracle RL SAFE samples (if folded) | — | their class | **safe** | oracle-confirmed mitigated |

Key honesty rule: **only oracle/HW-confirmed records get `leak` or `safe`;
everything unverified gets `unknown`.** This prevents the token from inheriting
the same shape-not-mechanism confusion we are trying to fix.

Arch reality: the 821 + the 725 pool are **x86 only**, so leak-conditioning is
meaningful for x86 first. arm64/riscv64 records stay `unknown` until they have
an oracle or HW labels. State this limit; do not pretend otherwise.

## 4. Data assembly (new `gen/build_leakcond_corpus.py`)

Produces one JSONL the trainer consumes, each row `{label, arch, sequence,
mit, base, variant, source}`:

1. Load `revizor_hwlabel_variants.jsonl` (stage the 821 from
   `origin/hw-label-variants`; the in-tree `cluster` copy is a stale 806).
   - leaking arm → `mit=leak`, `label=vuln_class`.
   - mitigated arm → `mit=safe`, `label=vuln_class`.
   - carry `base = violation-id` (regex, as in `score_hwlabel_variants.py`) for
     the group-holdout split.
2. Load the rebuilt 725 pool (`gen/data/hw_generator_pool.jsonl` after
   `build_hw_generator_pool.py` on the 725 per-class files) → `mit=leak`.
   Dedup by sequence against the variants (the pool originals overlap the
   variant leaking arms — keep one copy).
3. Load `v54_train.jsonl` → attack classes `mit=unknown`, BENIGN `mit=safe`.
4. Emit split assignment: **group-holdout by `base`** — whole base gadgets go
   to train or to held-out eval, never split across. Default 80/20 on the 148
   bases (stratified by `vuln_class`). The held-out bases are the ONLY honest
   place to measure whether `mit=leak` conditioning works.

## 5. Training recipe

```
python3 gen/train_generator.py --leak-cond --length-cond \
    --init-from gen/generator_pretrained.pt \
    --extra-train gen/data/leakcond_corpus_train.jsonl \
    --epochs 20 --save gen/generator_leakcond.pt
```

- `--init-from` the existing pretrained model so diversity/coverage is kept;
  the mit token is new weights only (additive).
- The reference *class* classifier that `train_generator.py` already trains to
  verify class hit-rate is unchanged and still only judges **class**, never
  leak (it is the shape classifier we proved leak-blind — it must not be
  allowed to adjudicate the leak axis).

## 6. Evaluation — oracle-grounded, held-out bases only

The success question: *does conditioning on `mit=leak` actually produce more
leaking gadgets than `mit=safe`, on classes/bases the model did not train on?*

For each class, sample K with `mit=leak` and K with `mit=safe` from the
held-out-base conditioning, realize, and adjudicate with the **external oracle
that covers it** — never the classifier:

| class | ISA | oracle | where |
|---|---|---|---|
| SPECTRE_V1, SPECTRE_V4 | x86 | Spectector / combined | cluster |
| V1, V4, L1TF, MDS | x86 | Revizor contract fuzz | i5-8300H (offline) |

Metric: `leak_rate(mit=leak) − leak_rate(mit=safe)`, with Wilson CIs.
Conditioning works iff the gap is large and positive. Report per class.

**Honest limit:** on the cluster, only V1/V4 can be oracle-adjudicated. For
MDS/L1TF the leak confirmation must go to the i5 Revizor validator offline, or
be reported as a *structural* difference (fence position/count) with the
explicit caveat that it is not an on-silicon leak confirmation. Do not quote a
classifier-judged leak number.

A secondary, cheap sanity check (not a leak claim): the mitigated-conditioned
samples should carry fences in blocking positions and the leak-conditioned ones
should not — measurable with the same fence-position logic as the flip scorer.

## 7. Integration with the existing loop

- `realize.py` → `precheck.py` (runnable gate) → oracle (leak gate) are
  unchanged. A+B shift the **prior**; the oracle stays the arbiter.
- `rl_from_oracle.py` benefits directly: sampling its batches with `mit=leak`
  should raise the LEAK fraction per round, i.e. higher yield and fewer wasted
  oracle calls — the measured lever against the V1/V4 yield ceiling. A follow-up
  can pass `mit="leak"` into `model.sample(...)` inside
  `rejection_sample_finetune` once the token exists (one-line, behind a check
  for `vocab.mit_id`).

## 8. Anti-bias / leakage guards

1. **Group-holdout by base** for every reported conditioning number — a base
   gadget's leaking and mitigated arms must never straddle train/eval, or the
   model has seen the twin.
2. **Oracle, not classifier, adjudicates leak.** The reference class-classifier
   is for class hit-rate only.
3. **`unknown` for all unverified records** — the token never asserts a leak
   status the pipeline did not confirm on an oracle or on hardware.
4. **No contamination of the detector's v54 test** — these HW gadgets are
   already disjoint from v54 train+test (pre-flight: 0 overlap, 0 fingerprint),
   so folding them into the *generator* does not touch the classifier's locked
   test.
5. **Backward-compat:** `--leak-cond` off reproduces the current generator
   exactly (new tokens absent); existing checkpoints load unchanged.

## 9. File-level change list + tests

- `gen/generator.py`: `MIT_VALUES`, `GenVocab` mit family, `encode_record(...,
  mit=None)`, `sample(..., mit=None)`, forbidden-token set, `build(mits=)`.
- `gen/train_generator.py`: `--leak-cond`, thread `mits` into `GenVocab.build`,
  pass each record's `mit` into `encode_record`.
- `gen/build_leakcond_corpus.py` (new): §4.
- `gen/eval_leak_conditioning.py` (new): §6, oracle-grounded, held-out bases.
- `gen/train_leakcond_generator.sbatch` (new): rebuild pool → assemble corpus →
  train → eval (Spectector for V1/V4).
- Tests (`tests/gen/`):
  - `test_leak_cond_vocab.py`: mit tokens present/absent per flag; control
    tokens never pruned; prefix order `[cls,arch,mit,len]` in both
    `encode_record` and `sample`; `mit=None` encode→`unknown`, sample→`leak`;
    `--leak-cond` off is byte-identical to a len-only vocab.
  - `test_build_leakcond_corpus.py`: label→mit mapping table (§3) exact;
    group-holdout never splits a base; unverified→`unknown`.

## 10. Order of operations

1. Rebuild pool 423→725 (`build_hw_generator_pool.py` on the 725 per-class
   files) — prerequisite for the `leak` positive set.
2. Implement A (token) + tests. Verify `--leak-cond` off is a no-op.
3. Implement B assembly + tests.
4. Cluster retrain `generator_leakcond.pt`.
5. Oracle-grounded held-out eval (V1/V4 on cluster; MDS/L1TF to i5 or
   structural-only with caveat).
6. If the gap is real: wire `mit="leak"` into the RL loop and remeasure yield.
