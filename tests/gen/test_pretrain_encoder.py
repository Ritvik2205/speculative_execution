"""
Task 6.3 Step 1: prove pretrain-then-measure actually helps.

Fixture choice: a deterministic 300-record subset of v54/data/v54_train.jsonl
(real compiled x86_64/arm64 sequences, not synthetic strings) — this is the
same corpus/format the class-conditioned generator already trains on
(gen/train_generator.py), so the fixture exercises the real tokenizer
(spec/asm_tokenizer.py's MultiArchTokenizer) and the real record shape
end-to-end, at a size small enough to stay well under the 60s budget on CPU.
The 300-record subset is split by class+arch stratum (80/20) so every
held-out record's label/arch also appears in the pretrain split (a class/arch
unseen in the pretrain split can't be scored — there's no <CLS_x>/<ARCH_x>
token for it in that model's vocab).

The comparison controls for random init: `pretrain(..., epochs=0)` seeds
torch/numpy identically to `pretrain(..., epochs=N)` and does the SAME
deterministic vocab build before constructing the model, so epochs=0 yields
the exact untrained "from scratch" weights the trained model started from.
Any perplexity gap is therefore attributable to the training, not to a
lucky/unlucky random seed for the two models separately.
"""
import json
from collections import defaultdict
from pathlib import Path

import numpy as np

from gen.pretrain_encoder import pretrain, heldout_perplexity, MultiArchTokenizer

ROOT = Path(__file__).resolve().parent.parent.parent
V54_TRAIN = ROOT / "v54" / "data" / "v54_train.jsonl"

FIXTURE_N = 300
SPLIT_SEED = 12345
TRAIN_SEED = 0
EPOCHS = 20


def _load_fixture():
    records = [json.loads(l) for l in open(V54_TRAIN) if l.strip()]
    rng = np.random.RandomState(SPLIT_SEED)
    idx = rng.choice(len(records), size=FIXTURE_N, replace=False)
    subset = [records[i] for i in sorted(idx)]

    # stratified 80/20 split by (label, arch) so heldout classes/archs are a
    # subset of the pretrain split's classes/archs
    by_stratum = defaultdict(list)
    for r in subset:
        by_stratum[(r["label"], r.get("arch", "unknown"))].append(r)

    pretrain_recs, heldout_recs = [], []
    for key, rows in by_stratum.items():
        rng.shuffle(rows)
        n_heldout = max(1, len(rows) // 5) if len(rows) >= 5 else 0
        heldout_recs.extend(rows[:n_heldout])
        pretrain_recs.extend(rows[n_heldout:])

    return pretrain_recs, heldout_recs


def test_fixture_has_overlapping_strata():
    pretrain_recs, heldout_recs = _load_fixture()
    assert len(pretrain_recs) >= 100
    assert len(heldout_recs) >= 20
    train_strata = {(r["label"], r.get("arch", "unknown")) for r in pretrain_recs}
    for r in heldout_recs:
        assert (r["label"], r.get("arch", "unknown")) in train_strata


def test_pretrain_lowers_heldout_perplexity_vs_from_scratch():
    pretrain_recs, heldout_recs = _load_fixture()
    tok = MultiArchTokenizer(mode="canonical")

    common_kwargs = dict(dim=64, layers=2, heads=2, max_len=64, min_count=2,
                          seed=TRAIN_SEED, tokenizer=tok)

    scratch = pretrain(pretrain_recs, epochs=0, save_path=None, **common_kwargs)
    trained = pretrain(pretrain_recs, epochs=EPOCHS, save_path=None, **common_kwargs)

    ppl_scratch = heldout_perplexity(scratch, heldout_recs, tokenizer=tok)
    ppl_trained = heldout_perplexity(trained, heldout_recs, tokenizer=tok)

    print(f"\n[test] heldout perplexity: from-scratch={ppl_scratch:.2f} "
          f"pretrained({EPOCHS}ep)={ppl_trained:.2f} "
          f"drop={ppl_scratch - ppl_trained:.2f} "
          f"({(1 - ppl_trained / ppl_scratch) * 100:.1f}% lower)")

    assert ppl_trained < ppl_scratch, (
        f"pretraining did not lower held-out perplexity: "
        f"scratch={ppl_scratch:.3f} trained={ppl_trained:.3f}")


def test_pretrain_is_deterministic_given_seed():
    pretrain_recs, heldout_recs = _load_fixture()
    tok = MultiArchTokenizer(mode="canonical")
    kwargs = dict(dim=64, layers=2, heads=2, max_len=64, min_count=2,
                  seed=TRAIN_SEED, tokenizer=tok)

    m1 = pretrain(pretrain_recs, epochs=5, save_path=None, **kwargs)
    m2 = pretrain(pretrain_recs, epochs=5, save_path=None, **kwargs)

    ppl1 = heldout_perplexity(m1, heldout_recs, tokenizer=tok)
    ppl2 = heldout_perplexity(m2, heldout_recs, tokenizer=tok)
    assert ppl1 == ppl2
