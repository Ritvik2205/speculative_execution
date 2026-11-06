import sys
from pathlib import Path

import pytest

ROOT = Path(__file__).resolve().parent.parent.parent
sys.path.insert(0, str(ROOT))

from realworld.records import (  # noqa: E402
    make_record, windows, normalise, source_key, split_leaks, has_mitigation,
)

PROV = dict(url="https://x/y", commit_or_version="abc", cve=None, paper=None,
            licence="GPL-2.0", retrieved="2026-11-05")


def _rec(**kw):
    prov = dict(PROV)
    prov.update(kw.pop("prov", {}))
    return make_record(kw.pop("sequence", ["movq (%rax), %rbx"]), "BENIGN",
                       kw.pop("arch", "x86_64"), "g", "kernel", prov, **kw)


def test_make_record_ok():
    r = _rec(function="f")
    assert r["provenance"]["cve"] is None and r["function"] == "f"
    assert r["label"] == "BENIGN" and r["group"] == "g"


def test_make_record_rejects_missing_url():
    prov = dict(PROV)
    del prov["url"]
    with pytest.raises(ValueError):
        make_record(["nop"], "BENIGN", "x86_64", "g", "s", prov)
    with pytest.raises(ValueError):
        _rec(prov={"licence": ""})


def test_windows_short_seq_once():
    s = [f"i{n}" for n in range(10)]
    assert windows(s) == [s]


def test_windows_long_seq():
    s = [f"i{n}" for n in range(100)]
    w = windows(s)
    assert all(len(x) == 45 for x in w)
    assert w[-1] == s[55:100]
    assert w[0] == s[0:45] and w[1] == s[10:55]


def test_source_key_ignores_compiler():
    a = _rec(function="f", compiler="gcc")
    b = _rec(function="f", compiler="clang", arch="aarch64")
    assert source_key(a) == source_key(b) == "https://x/y@abc#f"


def test_split_leaks_finds_cross_isa_source():
    a = _rec(function="f", sequence=["movq (%rax), %rbx"])
    b = _rec(function="f", arch="aarch64", sequence=["ldr x1, [x0]"])
    c = _rec(function="g", sequence=["nop"])
    assert split_leaks([a], [b]) == [source_key(a)]
    assert split_leaks([a], [c]) == []


def test_split_leaks_sequence_collision():
    a = _rec(function="f", sequence=["movq (%rax), %rbx"])
    b = _rec(function="g", sequence=["movq (%rax), %rbx"])
    assert len(split_leaks([a], [b])) == 1


def test_has_mitigation():
    assert has_mitigation(["lfence"])
    assert has_mitigation(["call __x86_indirect_thunk_rax"])
    assert not has_mitigation(["movq (%rax), %rbx"])


def test_normalise_drops_non_instructions():
    out = normalise([".cfi_startproc", "movq (%rax), %rbx"])
    assert out == ["movq (%rax), %rbx"]


def test_has_mitigation_mnemonic_only():
    assert not has_mitigation(["call overwrite_buf"])
    assert not has_mitigation(["my_lfence_helper:"])
    assert has_mitigation(["verw (%rax)"])
    assert has_mitigation(["\tLFENCE"])


def test_source_key_includes_file():
    a = _rec(function="f", file="a.c")
    b = _rec(function="f", file="b.c")
    assert source_key(a) == "https://x/y@abc#a.c:f"
    assert source_key(a) != source_key(b)


def test_has_mitigation_arch_barriers():
    # M1: arm64 dsb/isb/csdb/sb and riscv fence/fence.i, matched as the FIRST mnemonic, arch-aware
    for b in ("dsb sy", "\tisb", "csdb", "sb"):
        assert has_mitigation([b], arch="arm64"), b
    assert has_mitigation(["fence rw, rw"], arch="riscv64")
    assert has_mitigation(["fence.i"], arch="riscv64")
    assert not has_mitigation(["sb a0, 0(a1)"], arch="riscv64")       # riscv sb = store byte
    assert not has_mitigation(["ldr x0, [x1, #8]  // isb later"], arch="arm64")
    assert not has_mitigation(["dsb sy"], arch="x86_64")
    assert has_mitigation(["lfence"], arch="x86_64")
    assert has_mitigation(["lfence"])                                    # arch-less default keeps x86
