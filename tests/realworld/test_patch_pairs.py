import subprocess
import tempfile
from pathlib import Path
import json
import pytest
from realworld import patch_pairs as pp

TERMS = ["array_index_nospec", "barrier_nospec", "array_index_mask_nospec"]

HDR = "#define array_index_nospec(i, n) ((i) & -(long)((i) < (n)))\n"
BASE = """\
#include "nospec.h"

int other(int x)
{
	return x + 1;
}

int get(int *a, int i, int n)
{
	n += 0;
	return a[i];
}
"""
FIXED = BASE.replace("return a[i];", "return a[array_index_nospec(i, n)];")
COMMENT = FIXED.replace("\tn += 0;", "\t/* array_index_nospec is used below */\n\tn += 0;")


def _git(d, *a):
    return subprocess.run(["git", "-C", str(d), *a], check=True, capture_output=True, text=True).stdout.strip()


@pytest.fixture
def repo(tmp_path):
    d = tmp_path / "r"
    d.mkdir()
    _git(d, "init", "-q")
    _git(d, "config", "user.email", "t@t")
    _git(d, "config", "user.name", "t")
    (d / "nospec.h").write_text(HDR)
    _git(d, "add", "nospec.h")
    shas = []
    for text, msg in [(BASE, "initial"),
                      (FIXED, "x86: fix bounds bypass\n\nCVE-2019-1234: use array_index_nospec"),
                      (COMMENT, "comment only")]:
        (d / "get.c").write_text(text)
        _git(d, "add", "get.c")
        _git(d, "commit", "-q", "-m", msg)
        shas.append(_git(d, "rev-parse", "HEAD"))
    return d, shas


@pytest.fixture
def tmp_path():
    with tempfile.TemporaryDirectory(dir=Path(__file__).parent) as d:
        yield Path(d)


def test_find_fix_commits_returns_second_commit(repo):
    d, shas = repo
    got = pp.find_fix_commits(d, TERMS)
    assert shas[1] in got
    assert shas[0] not in got
    assert len(got) == len(set(got))


def test_changed_functions_names_get(repo):
    d, shas = repo
    assert pp.changed_functions(d, shas[1]) == [("get.c", "get")]


def test_cve_parsed_from_message(repo):
    d, shas = repo
    assert pp.parse_cve(pp.commit_message(d, shas[1])) == "CVE-2019-1234"
    assert pp.parse_cve(pp.commit_message(d, shas[0])) is None


def _cfg():
    return {"url_template": "https://example/c?id={sha}", "licence": "GPL-2.0-only",
            "arch": "x86_64", "compiler": "gcc", "opt": "-O2", "terms": TERMS,
            "default_label": "SPECTRE_V1", "cve_labels": {}}


def _asm(body):
    return f"get:\n\t.cfi_startproc\n{body}\t.cfi_endproc\n"


def test_pair_dropped_when_asm_identical(repo, tmp_path):
    d, shas = repo
    same = _asm("\tmovl (%rdi), %eax\n\tret\n")
    out = tmp_path / "o.jsonl"
    pp.run("linux", d, out, repo_cfg=_cfg(), build_asm=lambda *a: same)
    assert not out.read_text().strip()
    skipped = [json.loads(l) for l in (tmp_path / "skipped.jsonl").read_text().splitlines()]
    assert any(s["reason"] == "no_asm_change" and s["commit"] == shas[1] for s in skipped)


def test_pair_written_when_asm_differs(repo, tmp_path):
    d, shas = repo

    def fake(clone, rev, cfile, cfg):
        if rev == shas[1]:
            return _asm("\tcmpl %esi, %edx\n\tsbbl %eax, %eax\n\tret\n")
        return _asm("\tmovl (%rdi), %eax\n\tret\n")
    out = tmp_path / "o.jsonl"
    pp.run("linux", d, out, repo_cfg=_cfg(), build_asm=fake)
    recs = [json.loads(l) for l in out.read_text().splitlines()]
    sides = {r["side"]: r for r in recs}
    assert set(sides) == {"pre", "post"}
    assert sides["pre"]["label"] == "SPECTRE_V1" and not sides["pre"].get("mitigated")
    assert sides["post"]["label"] == "BENIGN" and sides["post"]["mitigated"] is True
    assert sides["pre"]["group"] == sides["post"]["group"] == f"linux:{shas[1][:12]}"
    assert sides["pre"]["provenance"]["cve"] == "CVE-2019-1234"
    assert sides["post"]["provenance"]["commit_or_version"] == shas[1]
    assert sides["pre"]["provenance"]["commit_or_version"] == shas[0]
    assert sides["pre"]["subset"] == "cve" and sides["pre"]["function"] == "get"
    assert sides["pre"]["file"] == "get.c"


def test_cve_label_map_and_patch_only(repo, tmp_path):
    d, shas = repo
    cfg = _cfg()
    cfg["cve_labels"] = {"CVE-2019-1234": "SPECTRE_V4"}

    def fake(clone, rev, cfile, c):
        return _asm("\tnop\n\tret\n" if rev == shas[0] else "\tret\n")
    out = tmp_path / "o.jsonl"
    pp.run("linux", d, out, repo_cfg=cfg, build_asm=fake)
    recs = [json.loads(l) for l in out.read_text().splitlines()]
    assert {r["label"] for r in recs} == {"SPECTRE_V4", "BENIGN"}


def _docker_ok():
    try:
        return subprocess.run(["docker", "info"], capture_output=True, timeout=30).returncode == 0
    except Exception:
        return False


def test_fixture_with_real_compiler(repo, tmp_path):
    if not _docker_ok():
        pytest.skip("docker unavailable")
    if subprocess.run(["docker", "image", "inspect", "specexec-toolchain"], capture_output=True).returncode:
        pytest.skip("specexec-toolchain image not built")
    from realworld.toolchain import compile_to_asm
    d, shas = repo

    def build(clone, rev, cfile, cfg):
        src = tmp_path / ("src_" + rev[:8]) / "get.c"
        src.parent.mkdir(exist_ok=True)
        (src.parent / "nospec.h").write_text(HDR)
        src.write_text(subprocess.run(["git", "-C", str(clone), "show", f"{rev}:{cfile}"],
                                      capture_output=True, text=True, check=True).stdout)
        return compile_to_asm(src, "x86_64", "gcc", "-O2")
    out = tmp_path / "o.jsonl"
    pp.run("linux", d, out, repo_cfg=_cfg(), build_asm=build)
    recs = [json.loads(l) for l in out.read_text().splitlines()]
    assert len(recs) == 2  # commit 2 yields a pair; comment-only commit is dropped


def test_foreign_arch_file_skipped(tmp_path):
    d = tmp_path / "r"
    (d / "arch/powerpc").mkdir(parents=True)
    _git(d, "init", "-q")
    _git(d, "config", "user.email", "t@t")
    _git(d, "config", "user.name", "t")
    f = d / "arch/powerpc/x.c"
    f.write_text("int other(void)\n{\n\treturn 1;\n}\n\nint f(int i)\n{\n\treturn i;\n}\n")
    _git(d, "add", "-A")
    _git(d, "commit", "-q", "-m", "a")
    f.write_text(f.read_text().replace("return i;", "return barrier_nospec(i);"))
    _git(d, "commit", "-q", "-am", "b")
    called = []
    out = tmp_path / "o.jsonl"
    pp.run("linux", d, out, repo_cfg=_cfg(), build_asm=lambda *a: called.append(a))
    assert not called
    skipped = [json.loads(l) for l in (tmp_path / "skipped.jsonl").read_text().splitlines()]
    assert [s["reason"] for s in skipped] == ["foreign_arch"]
