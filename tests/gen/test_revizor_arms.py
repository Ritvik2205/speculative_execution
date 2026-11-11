"""Program arms for the hardware comparison (gen/revizor_arms.py)."""
import random
import sys
from collections import Counter
from pathlib import Path

REPO = Path(__file__).resolve().parents[2]
for p in (REPO, REPO / "gen"):
    sys.path.insert(0, str(p))

import revizor_arms as ra  # noqa: E402
import revizor_native as rn  # noqa: E402
from test_revizor_native import PROG  # noqa: E402

PROG2 = PROG.replace("adc cl, al", "sub bl, dl").replace("xor si, 23", "or di, 7").replace("jnp", "jb")
CORPUS = [PROG, PROG2]


def _units(text):
    return Counter(t for t in rn.tokenize(rn.parse_program(text)) if not t.startswith("<"))


def test_shuffle_mutation_keeps_each_programs_units_and_the_invariants():
    rng = random.Random(0)
    for _ in range(20):
        text, parents = ra.mutate(CORPUS, rng, mode="shuffle")
        assert len(parents) == 1 and _units(text) == _units(CORPUS[parents[0]])
        assert rn.check_invariants(text) == []


def test_splice_mutation_takes_blocks_from_two_programs():
    rng = random.Random(0)
    seen_two = False
    for _ in range(20):
        text, parents = ra.mutate(CORPUS, rng, mode="splice")
        assert rn.check_invariants(text) == []
        got = _units(text)
        both = _units(PROG) + _units(PROG2)
        assert all(got[u] <= both[u] for u in got)
        seen_two |= len(set(parents)) == 2
    assert seen_two


def test_unigram_arm_draws_known_shapes_at_corpus_lengths():
    rng = random.Random(0)
    model = ra.UnigramModel(CORPUS)
    shapes = {t for c in CORPUS for t in rn.tokenize_factored(rn.parse_program(c))
              if not t.startswith("<")}
    for _ in range(20):
        toks = model.sample(rng)
        assert {t for t in toks if not t.startswith("<")} <= shapes
        n = sum(not t.startswith("<") for t in toks)
        assert 5 <= n <= 6                              # both programs have 5 units
        assert rn.check_invariants(ra.to_program(toks, rng, model.imm)) == []


def test_novelty_is_measured_against_training_programs_up_to_immediates():
    assert ra.is_copy(PROG.replace("95", "17"), CORPUS)
    assert not ra.is_copy(PROG.replace("adc cl, al", "adc bl, al"), CORPUS)


def test_campaign_config_drops_seeds_and_reproduce_overrides():
    cfg = ("contract_execution_clause:\n  - seq\nprogram_size: 16\ninputs_per_class: 2\n"
           "enable_speculation_filter: false\nenable_observation_filter: false\n"
           "program_generator_seed: 100\n\n# Overwrite some of the configuration options to "
           "reproduce the violation\ndata_generator_seed: 610\ninputs_per_class: 1\n")
    out = ra.campaign_config(cfg)
    assert "seed" not in out and out.count("inputs_per_class") == 1
    assert "inputs_per_class: 2" in out
    assert "enable_speculation_filter: true" in out and "enable_observation_filter: true" in out
    assert "program_size: 16" in out and "  - seq" in out
