"""
Tests for gen/train_generator.py's --init-from vocab-transfer wiring
(pretrain -> fine-tune link, Task 6.3 Step 5).

Uses tiny fake checkpoints built directly with gen.generator.GenVocab /
CondTransformerLM (not a real gen/pretrain_encoder.py run) so the tests stay
fast (dim=16) while exercising the real transfer code path in
gen/train_generator.py.

Note: CondTransformerLM.save()/.load() (gen/generator.py) only persist
dim/max_len in "cfg", not layers/heads — .load() always reconstructs with the
constructor defaults (layers=3, heads=4). So every "pretrained" fixture here
is built with those same defaults (only `dim` varies), matching what a real
round-tripped checkpoint looks like; the layer-count-mismatch test instead
varies the FINE-TUNE model's requested layer count against that fixed
3-layer pretrained checkpoint.
"""
import torch

from gen.generator import GenVocab, CondTransformerLM
from gen.train_generator import init_from_pretrained, _build_model, MAX_LEN

CLASSES = ["BENIGN", "SPECTRE_V1"]
ARCHS = ["x86_64", "arm64"]
TLEN = 8


def _vocab(instr_tokens):
    return GenVocab(instr_tokens, list(CLASSES), list(ARCHS))


def _pretrained_ckpt(tmp_path, instr_tokens, dim=16):
    vocab = _vocab(instr_tokens)
    model = CondTransformerLM(len(vocab), dim=dim, max_len=TLEN)  # defaults: layers=3, heads=4
    model.vocab = vocab
    path = tmp_path / "pretrained.pt"
    model.save(path)
    return path, model, vocab


def test_init_from_pretrained_transfers_overlapping_token_rows(tmp_path):
    ckpt, pretrained, pre_vocab = _pretrained_ckpt(
        tmp_path, ["mov", "add", "jmp", "nop"])
    fine_vocab = _vocab(["mov", "add", "sub", "ret"])  # mov/add overlap, sub/ret new

    # Replicate init_from_pretrained's exact RNG-consumption order (it builds
    # a temporary `pretrained` model via CondTransformerLM.load() — whose
    # random init is immediately overwritten by load_state_dict, but still
    # advances the RNG — before constructing the fine-tune model) so `fresh`
    # is the true "what the fine-tune model's weights would be with no
    # transfer at all" baseline, not just a differently-seeded model.
    torch.manual_seed(123)
    CondTransformerLM.load(str(ckpt))
    fresh = CondTransformerLM(len(fine_vocab), dim=16, max_len=TLEN)

    torch.manual_seed(123)
    model, report = init_from_pretrained(str(ckpt), fine_vocab, dim=16,
                                          max_len=TLEN)

    overlap_tokens = [t for t in fine_vocab.itos if t in pre_vocab.stoi]
    # PAD/EOS/CLS_*/ARCH_* are shared (same classes/archs) plus mov/add
    assert "mov" in overlap_tokens and "add" in overlap_tokens
    assert report["overlap"] == len(overlap_tokens)
    assert report["dim_match"] is True

    # overlapping rows: copied from pretrained (not fresh init)
    for t in overlap_tokens:
        fi, pi = fine_vocab.stoi[t], pre_vocab.stoi[t]
        assert torch.allclose(model.tok.weight[fi], pretrained.tok.weight[pi])
        assert torch.allclose(model.head.weight[fi], pretrained.head.weight[pi])
        assert torch.allclose(model.head.bias[fi], pretrained.head.bias[pi])

    # non-overlapping rows: untouched fresh init, distinct from anything pretrained
    non_overlap = [t for t in fine_vocab.itos if t not in pre_vocab.stoi]
    assert set(non_overlap) == {"sub", "ret"}
    for t in non_overlap:
        fi = fine_vocab.stoi[t]
        assert torch.allclose(model.tok.weight[fi], fresh.tok.weight[fi])
        assert not torch.allclose(model.tok.weight[fi], pretrained.tok.weight[0])

    # transformer layers + positional embedding copied (shapes match)
    assert torch.allclose(model.pos.weight, pretrained.pos.weight)
    assert torch.allclose(model.dec.layers[0].linear1.weight,
                          pretrained.dec.layers[0].linear1.weight)
    assert "pos.weight" in report["copied_layers"]
    assert report["skipped_layers"] == []


def test_init_from_pretrained_skips_dim_mismatch_without_crashing(tmp_path):
    ckpt, pretrained, pre_vocab = _pretrained_ckpt(tmp_path, ["mov", "add"], dim=16)
    fine_vocab = _vocab(["mov", "add", "sub"])

    # fine-tune dim (8) differs from pretrained dim (16) -> row copy impossible
    model, report = init_from_pretrained(str(ckpt), fine_vocab, dim=8, max_len=TLEN)

    assert report["dim_match"] is False
    assert report["overlap"] == 0
    assert model.tok.weight.shape == (len(fine_vocab), 8)
    # vocab-independent layers also incompatible (dim is baked into every
    # tensor shape) -> skipped, not crashed
    assert report["skipped_layers"] != []
    assert report["copied_layers"] == []


def test_init_from_pretrained_skips_layer_count_mismatch(tmp_path):
    ckpt, pretrained, pre_vocab = _pretrained_ckpt(tmp_path, ["mov", "add"], dim=16)
    fine_vocab = _vocab(["mov", "add", "sub"])

    # pretrained (loaded) always has 3 layers (CondTransformerLM.load()'s
    # default); ask the fine-tune model for only 2 -> layer-2's tensors don't
    # exist in the fine-tune model, so they're skipped rather than crashing,
    # while layers 0 and 1 (shapes match) copy normally.
    model, report = init_from_pretrained(str(ckpt), fine_vocab, dim=16,
                                          layers=2, max_len=TLEN)

    assert report["dim_match"] is True
    assert report["overlap"] > 0
    assert any(name.startswith("dec.layers.2.") for name in report["skipped_layers"])
    assert torch.allclose(model.dec.layers[0].linear1.weight,
                          pretrained.dec.layers[0].linear1.weight)
    assert torch.allclose(model.dec.layers[1].linear1.weight,
                          pretrained.dec.layers[1].linear1.weight)


def test_build_model_default_path_unchanged(tmp_path):
    """Smoke: with init_from=None, _build_model must be byte-identical to the
    original from-scratch construction (`CondTransformerLM(len(vocab), ...)`
    + `model.vocab = vocab`) that gen/train_generator.py's main() used before
    --init-from existed."""
    vocab = _vocab(["mov", "add", "sub"])

    torch.manual_seed(7)
    expected = CondTransformerLM(len(vocab), max_len=MAX_LEN)

    torch.manual_seed(7)
    model = _build_model(vocab, None, max_len=MAX_LEN)

    assert model.vocab is vocab
    for (n1, p1), (n2, p2) in zip(expected.state_dict().items(),
                                  model.state_dict().items()):
        assert n1 == n2
        assert torch.equal(p1, p2), f"mismatch in {n1}"
