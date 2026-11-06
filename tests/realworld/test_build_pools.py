import json
import sys
from pathlib import Path

import pytest

ROOT = Path(__file__).resolve().parent.parent.parent
sys.path.insert(0, str(ROOT))

from realworld import build_pools as bp  # noqa: E402
from realworld.records import split_leaks  # noqa: E402


def prov(url="https://x/y", ver="v1"):
    return dict(url=url, commit_or_version=ver, licence="MIT", retrieved="2026-11-06", cve=None, paper=None)


def seq(tag, n=30):
    return [f"movq ${tag * 100 + i}, %rax" for i in range(n)]


def erow(tag, label="SPECTRE_V1", n=30, **kw):
    r = dict(sequence=seq(tag, n), label=label, arch="x86_64", group=f"g{tag}", source="s_poc",
             provenance=prov(ver=f"e{tag}"), function=f"f{tag}", file=f"f{tag}.c", train_overlap=False,
             dup_of=None)
    r.update(kw)
    return r


def brow(tag, label="SPECTRE_V1", n=30, **kw):
    r = dict(sequence=seq(tag, n), label=label, arch="x86_64", group=f"base{tag}")
    r.update(kw)
    return r


def write(path, rows):
    path.write_text("".join(json.dumps(r) + "\n" for r in rows))
    return path


def test_overlap_rows_removed_from_base():
    ev = [erow(1)]
    base = [brow(1),                                       # hash collision with eval
            brow(2, group="ext_spectector_01"),            # spectector family
            brow(3, group="ext_safeside_x"),               # safeside family
            brow(4, source_file="/tmp/specexec_external/FastSpec/dataset/a.s"),  # fastspec family
            brow(5), brow(6)]                              # clean
    res = bp.build(base, ev, [])
    assert [r["group"] for r in res["pool"]] == ["base5", "base6"]
    assert res["removed"] == {"hash": 1, "family:spectector": 1, "family:safeside": 1, "family:fastspec": 1}
    assert res["leaks"] == []


def test_family_overlap_rows_removed():
    # eval rows flagged family:<tok> extend the family list beyond the three defaults
    ev = [erow(1, train_overlap=True, train_overlap_reason="family:newtool")]
    base = [brow(2, group="ext_newtool_a"), brow(3)]
    res = bp.build(base, ev, [])
    assert [r["group"] for r in res["pool"]] == ["base3"]
    assert res["removed"]["family:newtool"] == 1


def test_exits_on_remaining_leak(tmp_path):
    # the added train rows share a source_key with an eval row -> leak survives removal
    ev = [erow(1)]
    leak = erow(1, sequence=seq(9), label="BENIGN")      # same provenance/function, other sequence
    base = write(tmp_path / "base.jsonl", [brow(5)])
    ed = tmp_path / "eval"
    ed.mkdir()
    write(ed / "realworld_a.jsonl", ev)
    td = tmp_path / "train"
    td.mkdir()
    write(td / "realworld_leaky_train.jsonl", [leak])
    rc = bp.main(["--base", str(base), "--out", str(tmp_path / "out.jsonl"),
                  "--eval-glob", str(ed / "realworld_*.jsonl"),
                  "--add-glob", str(td / "realworld_*_train.jsonl"),
                  "--usage-out", str(tmp_path / "usage.json"), "--allow-length-gap"])
    assert rc != 0
    res = bp.build([brow(5)], ev, [leak])
    assert res["leaks"] and split_leaks([leak], ev)


def test_dup_of_rows_not_added():
    add = [erow(7, label="BENIGN", n=5, dup_of="x", provenance=prov(ver="t7")),
           erow(8, label="BENIGN", n=5, provenance=prov(ver="t8"))]
    res = bp.build([brow(5)], [erow(1)], add)
    assert len(res["pool"]) == 2 and res["dup_dropped"] == 1


def test_usage_json_counts_by_source():
    cat = [("ZombieLoad PoC", "https://github.com/isec-tugraz/ZombieLoad"),
           ("SafeSide", "https://github.com/google/safeside"),
           ("Other", "https://example.org/o")]
    rows = [erow(1, source="ZombieLoad_poc", provenance=prov("https://github.com/isec-tugraz/ZombieLoad")),
            erow(2, source="ZombieLoad_poc", provenance=prov("https://github.com/isec-tugraz/ZombieLoad/")),
            erow(3, source="safeside_poc", provenance=prov("https://github.com/google/safeside")),
            erow(4, source="safeside_poc", dup_of="z", provenance=prov("https://github.com/google/safeside")),
            erow(5, source="mystery", provenance=prov("https://nowhere.example/z"))]
    usage, unmatched = bp.usage_by_source(rows, cat)
    assert usage["ZombieLoad PoC"][0] == 2
    assert usage["SafeSide"][0] == 1            # dup_of row not counted
    assert "Other" not in usage
    assert unmatched == {"mystery": 1}


def test_length_gap_fails(tmp_path):
    ben = [dict(sequence=seq(i, 40), label="BENIGN", arch="x86_64", group=f"b{i}") for i in range(20)]
    att = [dict(sequence=seq(100 + i, 20), label="SPECTRE_V1", arch="x86_64", group=f"a{i}") for i in range(20)]
    base = write(tmp_path / "base.jsonl", ben + att)
    ed = tmp_path / "eval"
    ed.mkdir()
    write(ed / "realworld_a.jsonl", [erow(999)])
    args = ["--base", str(base), "--out", str(tmp_path / "out.jsonl"),
            "--eval-glob", str(ed / "realworld_*.jsonl"), "--add-glob", str(tmp_path / "none_*.jsonl"),
            "--usage-out", str(tmp_path / "usage.json")]
    assert bp.main(args) != 0
    assert bp.main(args + ["--allow-length-gap"]) == 0
    ks = bp.length_ks(ben + att)
    assert ks["overall"] == pytest.approx(1.0) and ks["x86_64"] == pytest.approx(1.0)


def test_length_ref_out_writes_attack_rows_only(tmp_path):
    base = write(tmp_path / "base.jsonl", [brow(1, "BENIGN"), brow(2, "SPECTRE_V1", n=22)])
    ed = tmp_path / "eval"
    ed.mkdir()
    write(ed / "realworld_a.jsonl", [erow(999)])
    ref = tmp_path / "ref.jsonl"
    rc = bp.main(["--base", str(base), "--out", str(tmp_path / "o.jsonl"), "--eval-glob", str(ed / "realworld_*.jsonl"),
                  "--add-glob", str(tmp_path / "none_*.jsonl"), "--length-ref-out", str(ref)])
    assert rc == 0 and not (tmp_path / "o.jsonl").exists()
    rows = [json.loads(l) for l in open(ref)]
    assert [r["label"] for r in rows] == ["SPECTRE_V1"] and len(rows[0]["sequence"]) == 22
