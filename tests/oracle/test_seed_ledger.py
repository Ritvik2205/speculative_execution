"""Tests for oracle/revizor/scripts/seed_ledger.py

The multiclass Revizor campaign driver (`run_multiclass_campaign.sh`) must
never re-run a `program_generator_seed` that's already been used -- Revizor
regenerates byte-identical programs for a repeated seed, which is exactly
why the prior V4/SSB campaign (hardcoded seeds
`1000000 2222222 3333333 4444444 5555555`) never grew the V4 corpus past 16
unique gadgets on repeat runs. This module is the ledger that makes
duplicate-seed runs impossible: a seed already recorded in
`used_seeds.txt` is refused, fresh-seed generation never returns a ledger
seed, and the ledger records every seed actually used.
"""
import importlib.util
import sys
from pathlib import Path

import pytest

REPO_ROOT = Path(__file__).resolve().parents[2]
MODULE_PATH = REPO_ROOT / "oracle" / "revizor" / "scripts" / "seed_ledger.py"

spec = importlib.util.spec_from_file_location("seed_ledger", MODULE_PATH)
seed_ledger = importlib.util.module_from_spec(spec)
sys.modules["seed_ledger"] = seed_ledger
spec.loader.exec_module(seed_ledger)


# ---------------------------------------------------------------------------
# read_ledger
# ---------------------------------------------------------------------------

def test_read_ledger_missing_file_returns_empty_set(tmp_path):
    ledger = tmp_path / "used_seeds.txt"
    assert seed_ledger.read_ledger(ledger) == set()


def test_read_ledger_parses_seeds_ignoring_blank_lines_and_comments(tmp_path):
    ledger = tmp_path / "used_seeds.txt"
    ledger.write_text(
        "# used-seed ledger\n"
        "1000000\n"
        "\n"
        "2222222  # V4/SSB campaign 2026-09\n"
        "3333333\n"
    )
    assert seed_ledger.read_ledger(ledger) == {1000000, 2222222, 3333333}


def test_read_ledger_seeds_with_the_five_hardcoded_seeds(tmp_path):
    ledger = tmp_path / "used_seeds.txt"
    ledger.write_text("1000000\n2222222\n3333333\n4444444\n5555555\n")
    seeds = seed_ledger.read_ledger(ledger)
    assert seeds == {1000000, 2222222, 3333333, 4444444, 5555555}


# ---------------------------------------------------------------------------
# check_seeds — a seed in the ledger is refused
# ---------------------------------------------------------------------------

def test_check_seeds_flags_seeds_already_in_ledger():
    ledger = {1000000, 2222222}
    used = seed_ledger.check_seeds([1000000, 9999999], ledger)
    assert used == [1000000]


def test_check_seeds_empty_when_all_fresh():
    ledger = {1000000, 2222222}
    used = seed_ledger.check_seeds([7777777, 8888888], ledger)
    assert used == []


# ---------------------------------------------------------------------------
# generate_fresh_seeds — fresh-seed generation never returns a ledger seed
# ---------------------------------------------------------------------------

def test_generate_fresh_seeds_never_returns_ledger_seed():
    import random

    ledger = {1000000, 2222222, 3333333, 4444444, 5555555}
    rng = random.Random(42)
    fresh = seed_ledger.generate_fresh_seeds(
        50, ledger, rng=rng, min_seed=1, max_seed=10_000
    )
    assert len(fresh) == 50
    assert set(fresh).isdisjoint(ledger)


def test_generate_fresh_seeds_returns_unique_values():
    import random

    ledger = set()
    rng = random.Random(7)
    fresh = seed_ledger.generate_fresh_seeds(
        20, ledger, rng=rng, min_seed=1, max_seed=1000
    )
    assert len(fresh) == len(set(fresh))


def test_generate_fresh_seeds_raises_when_range_exhausted():
    import random

    ledger = {1, 2, 3}
    rng = random.Random(1)
    with pytest.raises(RuntimeError):
        seed_ledger.generate_fresh_seeds(5, ledger, rng=rng, min_seed=1, max_seed=3)


# ---------------------------------------------------------------------------
# append_seeds — the ledger is appended
# ---------------------------------------------------------------------------

def test_append_seeds_adds_new_seeds_to_file(tmp_path):
    ledger = tmp_path / "used_seeds.txt"
    ledger.write_text("1000000\n")
    seed_ledger.append_seeds(ledger, [6666666, 7777777])
    assert seed_ledger.read_ledger(ledger) == {1000000, 6666666, 7777777}


def test_append_seeds_creates_file_if_missing(tmp_path):
    ledger = tmp_path / "nested" / "used_seeds.txt"
    seed_ledger.append_seeds(ledger, [42])
    assert seed_ledger.read_ledger(ledger) == {42}


# ---------------------------------------------------------------------------
# CLI: check / generate / append
# ---------------------------------------------------------------------------

def test_cli_check_exits_nonzero_for_used_seed(tmp_path):
    ledger = tmp_path / "used_seeds.txt"
    ledger.write_text("1000000\n")
    rc = seed_ledger.main(["--ledger", str(ledger), "check", "1000000"])
    assert rc != 0


def test_cli_check_exits_zero_for_fresh_seed(tmp_path):
    ledger = tmp_path / "used_seeds.txt"
    ledger.write_text("1000000\n")
    rc = seed_ledger.main(["--ledger", str(ledger), "check", "9999999"])
    assert rc == 0


def test_cli_generate_prints_n_fresh_seeds(tmp_path, capsys):
    ledger = tmp_path / "used_seeds.txt"
    ledger.write_text("1000000\n2222222\n")
    rc = seed_ledger.main(
        ["--ledger", str(ledger), "generate", "--n", "5", "--min", "1", "--max", "100000"]
    )
    assert rc == 0
    out_lines = [l for l in capsys.readouterr().out.splitlines() if l.strip()]
    assert len(out_lines) == 5
    printed = {int(l) for l in out_lines}
    assert printed.isdisjoint({1000000, 2222222})
    # generate must NOT append -- the ledger is unchanged until the caller
    # actually runs the campaign and calls `append`.
    assert seed_ledger.read_ledger(ledger) == {1000000, 2222222}


def test_cli_append_records_seeds_actually_run(tmp_path):
    ledger = tmp_path / "used_seeds.txt"
    ledger.write_text("1000000\n")
    rc = seed_ledger.main(["--ledger", str(ledger), "append", "4242424", "5252525"])
    assert rc == 0
    assert seed_ledger.read_ledger(ledger) == {1000000, 4242424, 5252525}


def test_cli_append_refuses_already_used_seed(tmp_path):
    ledger = tmp_path / "used_seeds.txt"
    ledger.write_text("1000000\n")
    rc = seed_ledger.main(["--ledger", str(ledger), "append", "1000000"])
    assert rc != 0
    # refused append must not duplicate the entry
    assert seed_ledger.read_ledger(ledger) == {1000000}
