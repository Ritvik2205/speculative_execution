"""The pretrain tokenizer must share the generator's vocabulary or pretraining
does not transfer. The generator (gen/train_generator.py) tokenizes with
AsmTokenizer (raw mnemonics: `movq <reg> <reg>`). pretrain_encoder historically
used MultiArchTokenizer(mode="canonical") (ISA-neutral ops: `VECTOR`, `ADD`),
a DISJOINT vocabulary -> only the ~4 special tokens overlapped -> the observed
4/460 token overlap and near-zero transfer. These tests pin that the default
'asm' tokenizer aligns with the generator and 'canonical' does not.
"""
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent.parent
sys.path.insert(0, str(ROOT))
sys.path.insert(0, str(ROOT / "gen"))
sys.path.insert(0, str(ROOT / "spec"))

from isa_spec import load_engine                      # noqa: E402
from asm_tokenizer import AsmTokenizer                # noqa: E402
from generator import GenVocab                        # noqa: E402
from pretrain_encoder import make_tokenizer, build_vocab  # noqa: E402

RECS = [
    {"sequence": ["movq %rdi, %rax", "addl $4, %eax", "movl (%rdx,%rcx,4), %r8d",
                  "cmpl %eax, %r8d", "jae .L2"], "arch": "x86_64"},
    {"sequence": ["mov x0, x1", "add x2, x2, #4", "ldr w3, [x4, x5]",
                  "cmp w3, w6", "b.hs .L3"], "arch": "arm64"},
]


def _generator_vocab():
    """The vocab train_generator.py would build (AsmTokenizer tokens)."""
    a = AsmTokenizer(load_engine("base.json"))
    gtok = [a.tokenize_sequence(r["sequence"]) for r in RECS]
    return GenVocab.build(gtok, ["SPECTRE_V1"], ["x86_64", "arm64"], min_count=1)


def _overlap(kind):
    gvocab = _generator_vocab()
    pv, _ = build_vocab(RECS, make_tokenizer(kind), min_count=1)
    shared = sum(1 for t in gvocab.stoi if t in pv.stoi)
    return shared, len(gvocab)


def test_asm_tokenizer_vocab_aligns_with_generator():
    shared, total = _overlap("asm")
    # near-total overlap -- pretraining in this space transfers to the generator.
    assert shared >= total - 1, f"asm overlap only {shared}/{total}"


def test_canonical_tokenizer_does_not_transfer():
    shared, total = _overlap("canonical")
    # only the handful of special tokens overlap -- this is the 4/460 failure.
    assert shared <= 5, f"canonical overlap unexpectedly high: {shared}/{total}"
    # and it must be strictly worse than asm.
    asm_shared, _ = _overlap("asm")
    assert asm_shared > shared


def test_default_tokenizer_is_asm():
    # make_tokenizer() default and the two token spaces differ on content tokens.
    asm_toks = set(make_tokenizer("asm").tokenize_record(RECS[0]))
    canon_toks = set(make_tokenizer("canonical").tokenize_record(RECS[0]))
    assert asm_toks and canon_toks
    assert not (asm_toks & canon_toks), "expected disjoint content tokens"
