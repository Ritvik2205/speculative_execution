"""Feedback arm (oracle/revizor/scripts/adaptive_arm.py)."""
import sys
from collections import Counter
from pathlib import Path

REPO = Path(__file__).resolve().parents[2]
for p in (REPO / "gen", REPO / "oracle" / "revizor" / "scripts"):
    sys.path.insert(0, str(p))

import adaptive_arm as aa  # noqa: E402
import revizor_arms as ra  # noqa: E402
import revizor_native as rn  # noqa: E402
from test_revizor_arms import CORPUS  # noqa: E402

LM = [ra.to_program(ra.UnigramModel(CORPUS).sample(__import__("random").Random(k)),
                    __import__("random").Random(k), rn.imm_pool(CORPUS)) for k in range(300)]


def _arm(seed=0, lm=True):
    return aa.Adaptive(rn, ra, CORPUS, list(LM) if lm else [], seed)


def test_every_proposal_is_a_valid_new_program():
    arm, seen = _arm(), set()
    train = {tuple(rn.tokenize(rn.parse_program(t))) for t in CORPUS}
    for _ in range(150):
        op, text = arm.propose()
        key = tuple(rn.tokenize(rn.parse_program(text)))
        assert op in aa.OPS and rn.check_invariants(text) == []
        assert key not in train and key not in seen
        seen.add(key)
        arm.update(op, text, False)


def test_the_bandit_moves_its_budget_to_the_operator_that_pays():
    # a corpus large enough that shuffling parents does not run out of new programs
    arm, picks = aa.Adaptive(rn, ra, LM[:150], LM[150:], 1), Counter()
    import random
    world = random.Random(7)
    for k in range(600):
        op, text = arm.propose()
        hit = world.random() < (0.30 if op == "shuffle" else 0.01)
        arm.update(op, text, hit)
        if k >= 300:
            picks[op] += 1
    assert picks["shuffle"] > 0.6 * sum(picks.values()), picks


def test_same_seed_and_outcomes_give_the_same_campaign_so_it_can_be_resumed():
    def run(n):
        arm, out = _arm(seed=3), []
        for k in range(n):
            op, text = arm.propose()
            out.append((op, text))
            arm.update(op, text, k % 7 == 0)
        return out
    assert run(60)[:40] == run(40)


def test_found_violators_become_parents():
    arm = _arm(seed=0, lm=False)
    op, text = arm.propose()
    arm.update(op, text, True)
    assert text in arm.corpus and arm.weights[-1] > 1
    assert "lm" not in arm.ops
