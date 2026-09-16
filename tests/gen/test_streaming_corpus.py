"""Tests for the streaming/resumable/parallel path in
gen/build_pretrain_corpus_from_c.py (_stream_consume, _load_resume_state,
build_from_c_files_streaming).

These are compiler-free: _stream_consume and _load_resume_state are pure
w.r.t. their inputs (no subprocess), and the end-to-end
build_from_c_files_streaming test monkeypatches _compile_and_extract_one so
no real toolchain is needed. This mirrors why build_from_c_files itself is
kept untouched and still tested against a real compiler in
tests/gen/test_build_pretrain_corpus_from_c.py (guarded by
detect_toolchains()) -- this file specifically covers the NEW bookkeeping
(parallel dispatch + incremental write + resume) that build_from_c_files
never had to deal with.
"""
import io
import json
import sys
from collections import Counter
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent.parent
sys.path.insert(0, str(ROOT))

from gen.build_pretrain_corpus_from_c import (  # noqa: E402
    _load_resume_state,
    _stream_consume,
    build_from_c_files_streaming,
)


def _rec(seq, arch="x86_64", opt="O0"):
    return {"sequence": seq, "arch": arch, "source": "compiled_c", "opt": opt}


# ---------------------------------------------------------------------------
# _stream_consume
# ---------------------------------------------------------------------------

def test_stream_consume_dedups_across_sources():
    results = [
        ("src1.c", [_rec(["mov", "add", "ret"])], Counter({"x86_64:O0:kept": 1})),
        ("src2.c", [_rec(["mov", "add", "ret"])], Counter({"x86_64:O0:kept": 1})),
    ]
    out_f = io.StringIO()
    done_f = io.StringIO()
    seen_hashes = set()
    per_cell_count = {}
    stats = Counter()

    _stream_consume(iter(results), out_f, done_f, seen_hashes, per_cell_count,
                     per_cell_cap=None, stats=stats)

    lines = [l for l in out_f.getvalue().splitlines() if l.strip()]
    assert len(lines) == 1, "the duplicate sequence from src2 must not be written"
    assert stats.get("dropped_dup", 0) == 1
    done_lines = [l for l in done_f.getvalue().splitlines() if l.strip()]
    assert done_lines == ["src1.c", "src2.c"], "every consumed source is marked done, dup or not"


def test_stream_consume_respects_per_cell_cap():
    results = [
        ("src1.c", [_rec(["a", "b"]), _rec(["c", "d"]), _rec(["e", "f"])], Counter()),
    ]
    out_f = io.StringIO()
    done_f = io.StringIO()
    stats = Counter()

    _stream_consume(iter(results), out_f, done_f, set(), {}, per_cell_cap=2, stats=stats)

    lines = [l for l in out_f.getvalue().splitlines() if l.strip()]
    assert len(lines) == 2
    assert stats.get("x86_64:O0:capped_out", 0) == 1


def test_stream_consume_no_cap_keeps_all():
    results = [
        ("src1.c", [_rec(["a", "b"]), _rec(["c", "d"]), _rec(["e", "f"])], Counter()),
    ]
    out_f = io.StringIO()
    done_f = io.StringIO()
    stats = Counter()

    _stream_consume(iter(results), out_f, done_f, set(), {}, per_cell_cap=None, stats=stats)

    lines = [l for l in out_f.getvalue().splitlines() if l.strip()]
    assert len(lines) == 3
    assert stats.get("x86_64:O0:capped_out", 0) == 0


def test_stream_consume_writes_valid_jsonl_and_done_file(tmp_path):
    results = [
        ("src1.c", [_rec(["a", "b"]), _rec(["c", "d"])], Counter({"x86_64:O0:kept": 2})),
        ("src2.c", [_rec(["e", "f"])], Counter({"x86_64:O0:kept": 1})),
    ]
    out_path = tmp_path / "out.jsonl"
    done_path = tmp_path / "out.jsonl.done"
    stats = Counter()

    with out_path.open("a") as out_f, done_path.open("a") as done_f:
        _stream_consume(iter(results), out_f, done_f, set(), {}, per_cell_cap=None, stats=stats)

    records = [json.loads(l) for l in out_path.read_text().splitlines() if l.strip()]
    assert len(records) == 3
    for r in records:
        assert set(r.keys()) >= {"sequence", "arch", "source", "opt"}

    done_names = [l for l in done_path.read_text().splitlines() if l.strip()]
    assert set(done_names) == {"src1.c", "src2.c"}


# ---------------------------------------------------------------------------
# _load_resume_state
# ---------------------------------------------------------------------------

def test_load_resume_state_round_trip(tmp_path):
    out_path = tmp_path / "out.jsonl"
    done_path = tmp_path / "out.jsonl.done"

    recs = [_rec(["a", "b"], arch="x86_64", opt="O0"),
            _rec(["c", "d"], arch="arm64", opt="O2")]
    with out_path.open("w") as f:
        for r in recs:
            f.write(json.dumps(r) + "\n")
    done_path.write_text("src1.c\nsrc2.c\n")

    seen_hashes, per_cell_count, done_set = _load_resume_state(out_path, done_path)

    assert done_set == {"src1.c", "src2.c"}
    assert per_cell_count.get(("x86_64", "O0")) == 1
    assert per_cell_count.get(("arm64", "O2")) == 1

    # A re-run producing the SAME sequence content must be recognized as a dup.
    out_f = io.StringIO()
    done_f = io.StringIO()
    stats = Counter()
    _stream_consume(
        iter([("src3.c", [_rec(["a", "b"], arch="x86_64", opt="O0")], Counter())]),
        out_f, done_f, seen_hashes, per_cell_count, per_cell_cap=None, stats=stats,
    )
    assert stats.get("dropped_dup", 0) == 1
    assert out_f.getvalue().strip() == ""


def test_load_resume_state_empty_when_files_absent(tmp_path):
    seen_hashes, per_cell_count, done_set = _load_resume_state(
        tmp_path / "nope.jsonl", tmp_path / "nope.jsonl.done"
    )
    assert seen_hashes == set()
    assert dict(per_cell_count) == {}
    assert done_set == set()


def test_load_resume_state_tolerates_truncated_trailing_line(tmp_path):
    out_path = tmp_path / "out.jsonl"
    done_path = tmp_path / "out.jsonl.done"

    good = _rec(["a", "b"])
    with out_path.open("w") as f:
        f.write(json.dumps(good) + "\n")
        # Simulate a job killed mid-write: a truncated, unparseable final line.
        f.write('{"sequence": ["c", "d"], "arch": "x86_64", "opt": "O0", "sour')
    done_path.write_text("src1.c\n")

    seen_hashes, per_cell_count, done_set = _load_resume_state(out_path, done_path)

    good_hash = __import__("hashlib").sha256("\n".join(good["sequence"]).encode()).hexdigest()
    assert good_hash in seen_hashes
    assert len(seen_hashes) == 1  # the truncated line contributed nothing
    assert per_cell_count.get(("x86_64", "O0")) == 1
    assert done_set == {"src1.c"}


# ---------------------------------------------------------------------------
# build_from_c_files_streaming (workers=1, monkeypatched compiler -- no toolchain)
# ---------------------------------------------------------------------------

def test_build_from_c_files_streaming_end_to_end_and_resume(tmp_path, monkeypatch):
    import gen.build_pretrain_corpus_from_c as mod

    def fake_compile_and_extract_one(task):
        src_path_str, archs, opts, min_instr, max_instr = task
        stem = Path(src_path_str).stem
        arch, opt = archs[0], opts[0]
        records = [{
            "sequence": [f"mov_{stem}", "add", "ret", "nop", "nop",
                         "nop", "nop", "nop", "nop", "nop"],
            "arch": arch, "source": "compiled_c", "opt": opt,
        }]
        stats = Counter({f"{arch}:{opt}:kept": 1})
        return Path(src_path_str).name, records, stats

    monkeypatch.setattr(mod, "_compile_and_extract_one", fake_compile_and_extract_one)

    src_dir = tmp_path / "src"
    src_dir.mkdir()
    c_files = []
    for i in range(5):
        p = src_dir / f"f{i}.c"
        p.write_text("int f(void) { return 0; }\n")
        c_files.append(p)

    out_path = tmp_path / "out.jsonl"

    stats1 = mod.build_from_c_files_streaming(
        c_files, archs=["x86_64"], opts=["O0"], out_path=out_path,
        min_instr=1, max_instr=2000, per_cell_cap=None, workers=1, resume=False,
    )
    assert out_path.exists()
    lines1 = [l for l in out_path.read_text().splitlines() if l.strip()]
    assert len(lines1) == 5
    done_path = Path(str(out_path) + ".done")
    done_names = {l for l in done_path.read_text().splitlines() if l.strip()}
    assert done_names == {f.name for f in c_files}
    assert sum(v for k, v in stats1.items() if k.endswith(":kept")) == 5

    # Resume: every source is already in .done, so nothing new is compiled or
    # written -- the job "picks up where it left off" instead of restarting.
    stats2 = mod.build_from_c_files_streaming(
        c_files, archs=["x86_64"], opts=["O0"], out_path=out_path,
        min_instr=1, max_instr=2000, per_cell_cap=None, workers=1, resume=True,
    )
    lines2 = [l for l in out_path.read_text().splitlines() if l.strip()]
    assert len(lines2) == 5, "resume must not duplicate or re-add already-done sources"
    assert sum(v for k, v in stats2.items() if k.endswith(":kept")) == 0
