import json
from realworld import benign_debian as bd
from realworld.records import WIN_LO, WIN_HI

PKGS = [f"pkg{i}" for i in range(40)]


def _func(name, body_lines):
    return f"{name}:\n\t.cfi_startproc\n" + "\n".join(body_lines) + "\n\tret\n\t.cfi_endproc\n"


def _body(tag, n):
    # distinct normalised content per tag/index
    return [f"\taddq\t${tag * 1000 + i}, %rax" for i in range(n)]


def _prov():
    return dict(pkg="p", version="1.0-1", snapshot="20261101T000000Z", retrieved="2026-11-06")


def test_split_packages_disjoint_and_deterministic():
    tr, ev = bd.split_packages(PKGS)
    assert not set(tr) & set(ev)
    assert sorted(tr + ev) == sorted(PKGS)
    assert len(ev) == 8
    assert bd.split_packages(PKGS) == (tr, ev)
    assert bd.split_packages(list(reversed(PKGS))) == (tr, ev)


def test_mitigated_function_dropped():
    asm = _func("bad", _body(1, 30) + ["\tlfence"]) + _func("good", _body(2, 30))
    recs = bd.records_from_asm([("a.s", asm)], "x86_64", "gcc", **_prov())
    assert recs and {r["function"] for r in recs} == {"good"}
    assert all(r["label"] == "BENIGN" and r["group"] == "debian:p" for r in recs)
    assert recs[0]["provenance"]["commit_or_version"] == "p_1.0-1@20261101T000000Z"


def test_cap_per_package():
    asm = "".join(_func(f"f{i}", _body(i + 1, 30)) for i in range(300))
    recs = bd.records_from_asm([("a.s", asm)], "x86_64", "gcc", **_prov())
    assert len(recs) == 200


def test_length_bounds():
    asm = _func("short", _body(1, 10)) + _func("mid", _body(2, 30)) + _func("long", _body(3, 130))
    recs = bd.records_from_asm([("a.s", asm)], "x86_64", "gcc", **_prov())
    fns = {r["function"] for r in recs}
    assert "short" not in fns and {"mid", "long"} <= fns  # R2: <25 dropped before windowing
    assert all(WIN_LO <= len(r["sequence"]) <= WIN_HI for r in recs)


def test_dedupe_identical_windows():
    asm = _func("a", _body(1, 30)) + _func("b", _body(1, 30))
    assert len(bd.records_from_asm([("a.s", asm)], "x86_64", "gcc", **_prov())) == 1


def test_train_and_eval_outputs_share_no_group(tmp_path):
    def fake_build(pkg, arch, cc, snapshot, work):
        return "1.0-1", [("a.s", _func("f", _body(len(pkg), 30)))]
    pk = tmp_path / "pk.txt"
    pk.write_text("\n".join(PKGS))
    bd.run(pk, "x86_64", "gcc", "20261101T000000Z", tmp_path / "tr", tmp_path / "ev",
           build_fn=fake_build, log=lambda *a: None)
    tr = [json.loads(l) for l in open(tmp_path / "tr" / "benign_x86_64_gcc.jsonl")]
    ev = [json.loads(l) for l in open(tmp_path / "ev" / "realworld_benign_x86_64.jsonl")]
    assert tr and ev
    assert not {r["group"] for r in tr} & {r["group"] for r in ev}
    assert all(r["subset"] == "benign" for r in ev)
    assert (tmp_path / "tr" / "skipped_benign_x86_64_gcc.jsonl").exists()


# ---- R23: train window lengths follow a reference attack-length histogram ----
REF = [28] * 3 + [32] * 3 + [38] * 4 + [42] * 3 + [60] * 3 + [85] * 2 + [100] * 2


def _ks(a, b):
    import numpy as np
    a, b = np.sort(a), np.sort(b)
    xs = np.union1d(a, b)
    return float(np.max(np.abs(np.searchsorted(a, xs, "right") / len(a) - np.searchsorted(b, xs, "right") / len(b))))


def _long_asm(n_funcs, n_instr):
    return "".join(_func(f"f{i}", _body(i + 1, n_instr)) for i in range(n_funcs))


def test_train_lengths_match_reference():
    # long functions so the cap-at-function-length rarely bites; KS statistic vs ref must be < 0.1
    asm = _long_asm(150, 900)
    recs = bd.records_from_asm([("a.s", asm)], "x86_64", "gcc", cap=10 ** 6, length_ref=REF, **_prov())
    lens = [len(r["sequence"]) for r in recs]
    assert len(lens) > 500
    assert _ks(lens, REF) < 0.1


def test_length_sampling_deterministic():
    asm = _long_asm(20, 400)
    a = bd.records_from_asm([("a.s", asm)], "x86_64", "gcc", length_ref=REF, **_prov())
    b = bd.records_from_asm([("a.s", asm)], "x86_64", "gcc", length_ref=REF, **_prov())
    assert [r["sequence"] for r in a] == [r["sequence"] for r in b]


def test_tiles_are_non_overlapping_and_capped_at_function_length():
    asm = _func("g", _body(5, 60))
    recs = bd.records_from_asm([("a.s", asm)], "x86_64", "gcc", length_ref=[100], **_prov())
    assert len(recs) == 1 and len(recs[0]["sequence"]) <= 61


def test_eval_windows_unchanged(tmp_path):
    def fake_build(pkg, arch, cc, snapshot, work):
        return "1.0-1", [("a.s", _long_asm(3, 300))]
    pk = tmp_path / "pk.txt"
    pk.write_text("\n".join(PKGS))
    ref = tmp_path / "ref.jsonl"
    ref.write_text("\n".join(json.dumps({"label": "X", "sequence": ["a"] * n}) for n in REF)
                   + "\n" + json.dumps({"label": "BENIGN", "sequence": ["a"] * 5}) + "\n")
    bd.run(pk, "x86_64", "gcc", "20261101T000000Z", tmp_path / "tr", tmp_path / "ev",
           build_fn=fake_build, log=lambda *a: None, length_ref=ref)
    ev = [json.loads(l) for l in open(tmp_path / "ev" / "realworld_benign_x86_64.jsonl")]
    tr = [json.loads(l) for l in open(tmp_path / "tr" / "benign_x86_64_gcc.jsonl")]
    assert ev and all(WIN_LO <= len(r["sequence"]) <= WIN_HI for r in ev)
    assert max(len(r["sequence"]) for r in tr) > WIN_HI  # train uses the reference histogram (non-BENIGN rows only)
