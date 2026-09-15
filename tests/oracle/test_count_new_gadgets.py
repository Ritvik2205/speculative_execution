"""Tests for oracle/revizor/scripts/count_new_gadgets.py -- the end-of-run
"did this campaign actually grow the corpus?" summary.

Uses a stub `convert_fn` (rather than a real Revizor campaign + toolchain)
so these tests exercise this module's own hashing/dedup-vs-corpus logic in
isolation.
"""
import importlib.util
import json
import sys
from pathlib import Path

REPO_ROOT = Path(__file__).resolve().parents[2]
MODULE_PATH = REPO_ROOT / "oracle" / "revizor" / "scripts" / "count_new_gadgets.py"

spec = importlib.util.spec_from_file_location("count_new_gadgets", MODULE_PATH)
count_new_gadgets = importlib.util.module_from_spec(spec)
sys.modules["count_new_gadgets"] = count_new_gadgets
spec.loader.exec_module(count_new_gadgets)


def _write_jsonl(path: Path, records):
    path.parent.mkdir(parents=True, exist_ok=True)
    with open(path, "w") as f:
        for r in records:
            f.write(json.dumps(r) + "\n")


def _rec(seq, cls="MDS"):
    return {"label": cls, "arch": "x86_64", "sequence": seq, "group": "g",
             "source": "revizor_hw_i5_8300h", "campaign": "c", "src_path": "p"}


# ---------------------------------------------------------------------------
# sequence_hash / existing_hashes
# ---------------------------------------------------------------------------

def test_sequence_hash_is_deterministic_and_order_sensitive():
    a = count_new_gadgets.sequence_hash(["mov %rax, %rbx", "add $1, %rax"])
    b = count_new_gadgets.sequence_hash(["mov %rax, %rbx", "add $1, %rax"])
    c = count_new_gadgets.sequence_hash(["add $1, %rax", "mov %rax, %rbx"])
    assert a == b
    assert a != c


def test_existing_hashes_missing_file_returns_empty_set(tmp_path):
    assert count_new_gadgets.existing_hashes("MDS", tmp_path) == set()


def test_existing_hashes_reads_corpus_file(tmp_path):
    _write_jsonl(tmp_path / "revizor_mds_real.jsonl", [
        _rec(["mov %rax, %rbx"]),
        _rec(["add $1, %rax"]),
    ])
    hashes = count_new_gadgets.existing_hashes("MDS", tmp_path)
    assert hashes == {
        count_new_gadgets.sequence_hash(["mov %rax, %rbx"]),
        count_new_gadgets.sequence_hash(["add $1, %rax"]),
    }


# ---------------------------------------------------------------------------
# summarize — with a stub convert_fn (no real Revizor/toolchain needed)
# ---------------------------------------------------------------------------

def test_summarize_counts_new_vs_duplicate(tmp_path):
    data_dir = tmp_path / "eval_data"
    _write_jsonl(data_dir / "revizor_mds_real.jsonl", [_rec(["insn_a"])])

    def stub_convert_fn(classes, roots, repo_root):
        records = {"MDS": [_rec(["insn_a"]), _rec(["insn_b"]), _rec(["insn_c"])]}
        stats = {"MDS": {"matched": 3, "converted": 3, "deduped": 3}}
        return records, stats

    summary = count_new_gadgets.summarize(
        ["MDS"], run_root=tmp_path / "run", data_dir=data_dir,
        repo_root=tmp_path, convert_fn=stub_convert_fn,
    )
    assert summary["MDS"]["matched"] == 3
    assert summary["MDS"]["converted"] == 3
    assert summary["MDS"]["unique_this_run"] == 3
    assert summary["MDS"]["new_vs_corpus"] == 2       # insn_b, insn_c
    assert summary["MDS"]["duplicate_vs_corpus"] == 1  # insn_a


def test_summarize_empty_corpus_all_new(tmp_path):
    data_dir = tmp_path / "eval_data"  # no existing files at all

    def stub_convert_fn(classes, roots, repo_root):
        records = {"L1TF": [_rec(["x"], "L1TF"), _rec(["y"], "L1TF")]}
        stats = {"L1TF": {"matched": 2, "converted": 2, "deduped": 2}}
        return records, stats

    summary = count_new_gadgets.summarize(
        ["L1TF"], run_root=tmp_path / "run", data_dir=data_dir,
        repo_root=tmp_path, convert_fn=stub_convert_fn,
    )
    assert summary["L1TF"]["new_vs_corpus"] == 2
    assert summary["L1TF"]["duplicate_vs_corpus"] == 0


def test_summarize_no_matches_reports_zeros(tmp_path):
    data_dir = tmp_path / "eval_data"

    def stub_convert_fn(classes, roots, repo_root):
        return {"SPECTRE_V1": []}, {"SPECTRE_V1": {"matched": 0, "converted": 0, "deduped": 0}}

    summary = count_new_gadgets.summarize(
        ["SPECTRE_V1"], run_root=tmp_path / "run", data_dir=data_dir,
        repo_root=tmp_path, convert_fn=stub_convert_fn,
    )
    assert summary["SPECTRE_V1"] == {
        "matched": 0, "converted": 0, "unique_this_run": 0,
        "new_vs_corpus": 0, "duplicate_vs_corpus": 0,
    }


def test_format_summary_includes_total_new(tmp_path):
    summary = {
        "MDS": {"matched": 3, "converted": 3, "unique_this_run": 3,
                "new_vs_corpus": 2, "duplicate_vs_corpus": 1},
        "L1TF": {"matched": 2, "converted": 2, "unique_this_run": 2,
                 "new_vs_corpus": 2, "duplicate_vs_corpus": 0},
    }
    text = count_new_gadgets.format_summary(summary)
    assert "TOTAL NEW gadgets vs existing corpus: 4" in text
    assert "MDS" in text and "L1TF" in text
