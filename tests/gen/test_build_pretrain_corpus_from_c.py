"""Tests for gen/build_pretrain_corpus_from_c.py.

`--from-local` against a tiny fixture (tests/gen/fixtures/pretrain_c/) is the
fully-offline path exercised here -- it needs a real toolchain (clang and/or
a riscv64 gcc) but no network. Every test that compiles anything is guarded
by `detect_toolchains()` so it skips cleanly on a host with no compiler at
all, rather than failing.

Fixture shape (see fixtures/pretrain_c/):
  - utils_math.c: add_loop() (19 x86_64/O0 instructions) + zero() (5 --
    below DEFAULT_MIN_INSTR=10, a short fragment).
  - hash.c: hash_bytes() (23 x86_64/O0 instructions).
  - dup.c: add_loop_dup(), same parameter shape as add_loop() -- a real
    compiler emits a byte-identical instruction sequence for it (verified:
    both hash to 37f466e2 at x86_64/O0), exercising the dedup path.
"""
import json
import sys
from pathlib import Path

import pytest

ROOT = Path(__file__).resolve().parent.parent.parent
sys.path.insert(0, str(ROOT))

from gen.build_pretrain_corpus_from_c import (
    REAL_ARCHES,
    build_from_c_files,
    detect_toolchains,
    stage_hf_c_sources,
)
from gen.stage_pretrain_corpus import CorpusUnavailable

FIXTURE_DIR = Path(__file__).resolve().parent / "fixtures" / "pretrain_c"
C_FILES = sorted(FIXTURE_DIR.glob("*.c"))

TOOLCHAINS = detect_toolchains()
needs_toolchain = pytest.mark.skipif(
    not TOOLCHAINS,
    reason="no compiler toolchain (clang / riscv64-*-gcc) found on PATH",
)


# ---------------------------------------------------------------------------
# --from-local (build_from_c_files against the tiny fixture): known arch,
# min-instr respected, deduped, counts match.
# ---------------------------------------------------------------------------

@needs_toolchain
def test_known_arch_min_instr_and_dedup(tmp_path):
    archs = list(TOOLCHAINS)
    # min_instr=15: drops zero() (5 instr on every ISA we've measured) while
    # keeping add_loop()/hash_bytes() (19/23 on x86_64/O0, larger on the
    # other ISAs) -- deterministic across whichever toolchains are present.
    records, stats = build_from_c_files(
        C_FILES, archs, opts=["O0"], min_instr=15, max_instr=2000,
    )

    assert records, "expected at least one record"

    # every record carries a REAL arch -- never "unknown", never None.
    for rec in records:
        assert rec["arch"] in REAL_ARCHES
        assert rec["arch"] in archs
        assert rec["source"] == "compiled_c"
        assert rec["opt"] == "O0"
        assert len(rec["sequence"]) >= 15
        assert all(isinstance(x, str) for x in rec["sequence"])

    # counts match: 2 kept functions (add_loop, hash_bytes) per available
    # arch -- zero() dropped everywhere, and add_loop_dup() (dup.c) is a
    # content-duplicate of add_loop() so it's deduped away, not double-counted.
    by_arch = {}
    for rec in records:
        by_arch.setdefault(rec["arch"], []).append(rec)
    for arch, recs in by_arch.items():
        assert len(recs) == 2, f"{arch}: expected 2 kept records, got {len(recs)}"

    # dedup actually fired (add_loop vs add_loop_dup) and short frags dropped.
    assert stats.get("dropped_dup", 0) >= len(archs)
    assert stats.get("dropped_short", 0) >= len(archs)

    # dedup: no two records in the output share sequence content.
    import hashlib
    hashes = [hashlib.sha256("\n".join(r["sequence"]).encode()).hexdigest() for r in records]
    assert len(hashes) == len(set(hashes))


@needs_toolchain
def test_fragment_filter_drops_short_sequence(tmp_path):
    # Restrict to x86_64 (present whenever clang is) for a deterministic,
    # single-ISA check that zero() (5 instructions) is dropped by the
    # default min_instr=10 floor while add_loop()/hash_bytes() survive.
    if "x86_64" not in TOOLCHAINS:
        pytest.skip("no x86_64 (clang) toolchain on PATH")

    records, stats = build_from_c_files(
        C_FILES, ["x86_64"], opts=["O0"], min_instr=10, max_instr=2000,
    )

    seqs_by_len = sorted(len(r["sequence"]) for r in records)
    assert all(n >= 10 for n in seqs_by_len)
    assert stats.get("dropped_short", 0) >= 1  # zero() got dropped
    # zero() compiles to a handful of instructions well under 10 -- confirm
    # nothing that short made it into the output.
    assert not any(n < 10 for n in seqs_by_len)


@needs_toolchain
def test_max_instr_drops_long_sequence(tmp_path):
    if "x86_64" not in TOOLCHAINS:
        pytest.skip("no x86_64 (clang) toolchain on PATH")

    records, stats = build_from_c_files(
        C_FILES, ["x86_64"], opts=["O0"], min_instr=1, max_instr=10,
    )
    # add_loop (19) and hash_bytes (23) both exceed max_instr=10 -- only
    # zero() (5) should survive.
    assert all(len(r["sequence"]) <= 10 for r in records)
    assert stats.get("dropped_long", 0) >= 2


@needs_toolchain
def test_per_cell_cap_limits_records_per_arch_opt(tmp_path):
    archs = list(TOOLCHAINS)
    records, stats = build_from_c_files(
        C_FILES, archs, opts=["O0"], min_instr=1, max_instr=2000, per_cell_cap=1,
    )
    by_cell = {}
    for rec in records:
        by_cell.setdefault((rec["arch"], rec["opt"]), []).append(rec)
    for cell, recs in by_cell.items():
        assert len(recs) <= 1, f"{cell}: cap not respected ({len(recs)} records)"


# ---------------------------------------------------------------------------
# toolchain detection
# ---------------------------------------------------------------------------

def test_detect_toolchains_reports_real_archs_only():
    for arch, desc in TOOLCHAINS.items():
        assert arch in REAL_ARCHES
        assert isinstance(desc, str) and desc


# ---------------------------------------------------------------------------
# --from-hf: loud-failure contract (mirrors gen/stage_pretrain_corpus.py's
# CorpusUnavailable pattern -- no network mocking needed for the missing-
# package case, which is host-independent)
# ---------------------------------------------------------------------------

def test_from_hf_fails_loud_not_silent_when_datasets_missing(tmp_path, monkeypatch):
    import builtins
    real_import = builtins.__import__

    def fake_import(name, *a, **kw):
        if name == "datasets":
            raise ImportError("no module named datasets")
        return real_import(name, *a, **kw)

    monkeypatch.setattr(builtins, "__import__", fake_import)

    with pytest.raises(CorpusUnavailable) as exc_info:
        stage_hf_c_sources("some/hf-c-dataset", limit=10, tmp_dir=tmp_path)

    msg = str(exc_info.value)
    assert "pip install" in msg
    assert "datasets" in msg
    assert not list(tmp_path.iterdir())  # nothing fabricated
