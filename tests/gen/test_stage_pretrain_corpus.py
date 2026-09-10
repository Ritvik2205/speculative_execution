"""Tests for gen/stage_pretrain_corpus.py (Step 4 of
docs/NEXT_STEPS_PLAN_2026-09-10.md).

`--from-local` is the fully-offline dev/test mode exercised here against a
tiny fixture (tests/gen/fixtures/asm_corpus/). The real network path
(`stage()`) is exercised only by `test_stage_network_path_smoke`, which
skips unless both the `datasets` package is importable AND
huggingface.co is actually reachable -- this dev environment has neither
lined up (the real run happens on the cluster HEAD node), so it is expected
to skip here.
"""
import json
import socket
import sys
from pathlib import Path

import pytest

ROOT = Path(__file__).resolve().parent.parent.parent
sys.path.insert(0, str(ROOT))

from gen.stage_pretrain_corpus import (
    CorpusUnavailable,
    SOURCES,
    _guess_arch,
    stage,
    stage_from_local,
)

FIXTURE_DIR = Path(__file__).resolve().parent / "fixtures" / "asm_corpus"


# ---------------------------------------------------------------------------
# --from-local
# ---------------------------------------------------------------------------

def test_from_local_produces_expected_record_count_and_shape(tmp_path):
    out = tmp_path / "corpus.jsonl"
    n = stage_from_local(out, FIXTURE_DIR)

    # 3 fixture files; too_short.s has < 2 real lines after filtering and is
    # dropped, so 2 records make it in.
    assert n == 2
    assert out.exists()

    recs = [json.loads(l) for l in open(out) if l.strip()]
    assert len(recs) == 2
    for rec in recs:
        assert set(rec.keys()) == {"sequence", "arch", "source"}
        assert isinstance(rec["sequence"], list)
        assert len(rec["sequence"]) >= 2
        assert all(isinstance(x, str) for x in rec["sequence"])
        assert rec["arch"] in ("x86_64", "arm64", "riscv64", "unknown")

    by_source = {r["source"]: r for r in recs}
    assert "x86_sample.s" in by_source
    assert "arm_sample.s" in by_source
    assert "too_short.s" not in by_source

    # comment-only lines filtered out; real instruction lines kept.
    x86_seq = by_source["x86_sample.s"]["sequence"]
    assert not any(l.startswith("#") for l in x86_seq)
    assert any("movl" in l for l in x86_seq)
    assert any("addl" in l for l in x86_seq)

    # arch heuristic: x86 AT&T registers vs. arm64 register-comma pattern.
    assert by_source["x86_sample.s"]["arch"] == "x86_64"
    assert by_source["arm_sample.s"]["arch"] == "arm64"


def test_from_local_missing_dir_raises():
    with pytest.raises(FileNotFoundError):
        stage_from_local("/tmp/does/not/exist.jsonl", "/tmp/nonexistent_asm_corpus_dir_xyz")


def test_from_local_empty_dir_raises(tmp_path):
    empty = tmp_path / "empty"
    empty.mkdir()
    with pytest.raises(FileNotFoundError):
        stage_from_local(tmp_path / "out.jsonl", empty)


def test_from_local_forced_arch_overrides_heuristic(tmp_path):
    out = tmp_path / "corpus.jsonl"
    stage_from_local(out, FIXTURE_DIR, arch="riscv64")
    recs = [json.loads(l) for l in open(out) if l.strip()]
    assert all(r["arch"] == "riscv64" for r in recs)


def test_from_local_respects_limit(tmp_path):
    out = tmp_path / "corpus.jsonl"
    n = stage_from_local(out, FIXTURE_DIR, limit=1)
    assert n == 1
    recs = [json.loads(l) for l in open(out) if l.strip()]
    assert len(recs) == 1


def test_from_local_is_resumable(tmp_path):
    out = tmp_path / "corpus.jsonl"
    n1 = stage_from_local(out, FIXTURE_DIR, limit=1)
    assert n1 == 1

    # second call with a higher limit should pick up where it left off, not
    # duplicate the already-staged source.
    n2 = stage_from_local(out, FIXTURE_DIR, limit=10)
    assert n2 == 2

    recs = [json.loads(l) for l in open(out) if l.strip()]
    sources = [r["source"] for r in recs]
    assert len(sources) == len(set(sources))  # no duplicates
    assert set(sources) == {"x86_sample.s", "arm_sample.s"}


def test_from_local_no_resume_overwrites(tmp_path):
    out = tmp_path / "corpus.jsonl"
    stage_from_local(out, FIXTURE_DIR, limit=1)
    n = stage_from_local(out, FIXTURE_DIR, limit=1, resume=False)
    assert n == 1
    recs = [json.loads(l) for l in open(out) if l.strip()]
    assert len(recs) == 1  # overwritten, not appended


# ---------------------------------------------------------------------------
# arch heuristic (unit-level, independent of the fixture files)
# ---------------------------------------------------------------------------

def test_guess_arch_x86():
    assert _guess_arch("\tmovq\t%rax, %rbx\n\taddq\t$1, %rax\n") == "x86_64"


def test_guess_arch_arm64():
    assert _guess_arch("\tadd\tw0, w0, #1\n\tret\n") == "arm64"


def test_guess_arch_unknown_for_ambiguous_text():
    assert _guess_arch("hello world\nthis is not assembly\n") == "unknown"


# ---------------------------------------------------------------------------
# stage(): loud-failure contract (no network mocking needed -- an unknown
# source name and a missing `datasets` package are both host-independent)
# ---------------------------------------------------------------------------

def test_stage_unknown_source_raises_value_error(tmp_path):
    with pytest.raises(ValueError):
        stage(tmp_path / "out.jsonl", source="not-a-real-source")


def test_default_source_is_registered():
    from gen.stage_pretrain_corpus import DEFAULT_SOURCE
    assert DEFAULT_SOURCE in SOURCES
    assert "hf_dataset" in SOURCES[DEFAULT_SOURCE]


def test_stage_fails_loud_not_silent_when_datasets_missing(tmp_path, monkeypatch):
    """Simulate the `datasets` package being unavailable (the normal state of
    this dev env / the cluster compute nodes) and assert stage() raises
    CorpusUnavailable with the exact remediation command, rather than
    writing an empty/fabricated corpus file."""
    import builtins
    real_import = builtins.__import__

    def fake_import(name, *a, **kw):
        if name == "datasets":
            raise ImportError("no module named datasets")
        return real_import(name, *a, **kw)

    monkeypatch.setattr(builtins, "__import__", fake_import)

    out = tmp_path / "out.jsonl"
    with pytest.raises(CorpusUnavailable) as exc_info:
        stage(out, source="the-stack-assembly", limit=10)

    msg = str(exc_info.value)
    assert "pip install" in msg
    assert "datasets" in msg
    assert not out.exists()  # nothing fabricated


# ---------------------------------------------------------------------------
# stage(): real network path (skips unless datasets is installed AND
# huggingface.co is actually reachable -- neither holds in this dev env)
# ---------------------------------------------------------------------------

def _network_available() -> bool:
    try:
        import datasets  # noqa: F401
    except ImportError:
        return False
    try:
        socket.setdefaulttimeout(3)
        socket.gethostbyname("huggingface.co")
        return True
    except OSError:
        return False


@pytest.mark.skipif(not _network_available(),
                    reason="datasets package and/or network to huggingface.co unavailable "
                          "in this environment; the real fetch runs on the cluster HEAD node")
def test_stage_network_path_smoke(tmp_path):
    out = tmp_path / "corpus.jsonl"
    n = stage(out, source="the-stack-assembly", limit=3)
    assert n > 0
    recs = [json.loads(l) for l in open(out) if l.strip()]
    assert len(recs) == n
    for rec in recs:
        assert "sequence" in rec and isinstance(rec["sequence"], list)
