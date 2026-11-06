import json
import subprocess
import pytest
import yaml
from realworld import repos
from realworld.asm import find_function

REQ = {"name", "url", "commit", "licence", "paper", "cve", "split", "arches", "compilers", "opts", "items"}

ASM = """\
victim:
\t.cfi_startproc
\tmovl\tsize(%rip), %eax
\tcmpq\t%rax, %rdi
\tjae\t.L1
\tmovzbl\tarr(%rdi), %eax  # load
\tshlq\t$9, %rax
.L1:
\tret
\t.cfi_endproc
"""


def _git(d, *a):
    return subprocess.run(["git", "-C", str(d), *a], check=True, capture_output=True, text=True).stdout.strip()


@pytest.fixture
def clone(tmp_path):
    d = tmp_path / "fx"
    d.mkdir()
    _git(d, "init", "-q")
    _git(d, "config", "user.email", "t@t")
    _git(d, "config", "user.name", "t")
    (d / "a.c").write_text("void victim(long x){}\n")
    (d / "k.s").write_text(ASM)
    _git(d, "add", ".")
    _git(d, "commit", "-qm", "init")
    return d


def entry(clone, **kw):
    e = dict(name="fx", url="https://example.org/fx", commit=_git(clone, "rev-parse", "HEAD"),
             licence="MIT", paper="P", cve=None, split="eval", subset="benchmark",
             arches=["x86_64", "riscv64"], compilers=["gcc"], opts=["-O0", "-O2"],
             items=[dict(file="a.c", function="victim", label="SPECTRE_V1", safe=False, note="n")])
    e.update(kw)
    return e


def fake_compile(src, arch, cc, opt, **kw):
    return ASM


def test_manifest_schema():
    m = yaml.safe_load(open(repos.MANIFEST))
    assert m
    for e in m:
        assert REQ <= set(e), (e["name"], REQ - set(e))
        assert e["split"] in ("eval", "train")
        assert e["subset"] in ("benchmark", "poc", "vendor", "riscv_artifact")
        for it in e["items"]:
            assert {"file", "function", "label", "safe"} <= set(it)
    assert len({e["name"] for e in m}) == len(m)


def test_eval_item_written_with_provenance(clone, tmp_path):
    out = tmp_path / "out"
    recs, skips = repos.run(entry(clone), clone, out, tmp_path / "tr", compile_fn=fake_compile,
                            train_file=None, log=lambda *_: None)
    assert len(recs) == 4  # 2 arches x 1 cc x 2 opts
    assert {(r["arch"], r["opt"]) for r in recs} == {(a, o) for a in ("x86_64", "riscv64") for o in ("-O0", "-O2")}
    r = recs[0]
    assert r["label"] == "SPECTRE_V1" and r["subset"] == "benchmark" and r["function"] == "victim"
    assert r["provenance"]["commit_or_version"] == _git(clone, "rev-parse", "HEAD")
    assert r["provenance"]["licence"] == "MIT" and r["provenance"]["retrieved"]
    assert not any("# load" in l for l in r["sequence"])  # x86 comment stripped
    rows = [json.loads(l) for l in open(out / "realworld_fx.jsonl")]
    assert len(rows) == 4
    assert len({r["group"] for r in rows}) == 1
    assert (out / "skipped_fx.jsonl").exists()


def test_safe_item_is_benign(clone, tmp_path):
    e = entry(clone)
    e["items"][0]["safe"] = True
    recs, _ = repos.run(e, clone, tmp_path / "o", tmp_path / "t", compile_fn=fake_compile,
                        train_file=None, log=lambda *_: None)
    assert {r["label"] for r in recs} == {"BENIGN"}
    assert recs[0]["vuln_class"] == "SPECTRE_V1" and recs[0]["safe"] is True


def test_train_split_goes_to_train_dir(clone, tmp_path):
    recs, _ = repos.run(entry(clone, split="train"), clone, tmp_path / "o", tmp_path / "t",
                        compile_fn=fake_compile, train_file=None, log=lambda *_: None)
    assert (tmp_path / "t" / "realworld_fx_train.jsonl").exists()
    assert not (tmp_path / "o" / "realworld_fx.jsonl").exists()


def test_train_overlap_flagged(clone, tmp_path):
    e = entry(clone, arches=["x86_64"], opts=["-O0"])
    seq = repos.normalise_for_arch(ASM.splitlines()[2:-1], "x86_64")
    tf = tmp_path / "train.jsonl"
    tf.write_text(json.dumps(dict(sequence=seq, label="SPECTRE_V1", arch="x86_64", group="g")) + "\n")
    recs, _ = repos.run(e, clone, tmp_path / "o", tmp_path / "t", compile_fn=fake_compile,
                        train_file=tf, log=lambda *_: None)
    assert recs and all(r["train_overlap"] for r in recs)
    recs2, _ = repos.run(e, clone, tmp_path / "o2", tmp_path / "t", compile_fn=fake_compile,
                         train_file=None, log=lambda *_: None)
    assert not any(r["train_overlap"] for r in recs2)


def test_raw_asm_entry(clone, tmp_path):
    def boom(*a, **k):
        raise AssertionError("must not compile")
    e = entry(clone, raw_asm=True, arches=["x86_64"],
              items=[dict(file="k.s", function="victim", label="SPECTRE_V1", safe=False, note="n")])
    recs, skips = repos.run(e, clone, tmp_path / "o", tmp_path / "t", compile_fn=boom,
                            train_file=None, log=lambda *_: None)
    assert len(recs) == 1 and recs[0]["file"] == "k.s" and recs[0]["arch"] == "x86_64"
    assert recs[0]["compiler"] is None


def test_build_failure_logged_and_continues(clone, tmp_path):
    calls = []

    def flaky(src, arch, cc, opt, **kw):
        calls.append(arch)
        if arch == "riscv64":
            raise RuntimeError("no such header")
        return ASM
    recs, skips = repos.run(entry(clone), clone, tmp_path / "o", tmp_path / "t", compile_fn=flaky,
                            train_file=None, log=lambda *_: None)
    assert len(recs) == 2
    assert {s["reason"] for s in skips} == {"build_failed"}
    lines = [json.loads(l) for l in open(tmp_path / "o" / "skipped_fx.jsonl")]
    assert len(lines) == len(skips)


def test_function_missing_logged(clone, tmp_path):
    e = entry(clone)
    e["items"][0]["function"] = "nope"
    recs, skips = repos.run(e, clone, tmp_path / "o", tmp_path / "t", compile_fn=fake_compile,
                            train_file=None, log=lambda *_: None)
    assert recs == [] and {s["reason"] for s in skips} == {"function_not_in_asm"}


def test_commit_mismatch_refused(clone, tmp_path):
    with pytest.raises(RuntimeError):
        repos.run(entry(clone, commit="0" * 40), clone, tmp_path / "o", tmp_path / "t",
                  compile_fn=fake_compile, train_file=None, log=lambda *_: None)


def test_comment_strip_arch_aware():
    assert repos.strip_comments_arch(["movl $1, %eax # c", ".ascii \"a # b\"", "# only"], "x86_64") \
        == ["movl $1, %eax", ".ascii \"a # b\""]
    assert repos.strip_comments_arch(["add x0, x1, #1", "ldr x0, [x1] // c"], "arm64") \
        == ["add x0, x1, #1", "ldr x0, [x1]"]
    assert repos.strip_comments_arch(["addi a0, a0, 1 # c"], "riscv64") == ["addi a0, a0, 1"]


def test_find_function_suffixes_and_mangled():
    f = {"foo.isra.0": ["a"], "bar.constprop.0": ["b"], "baz.part.0": ["c"], "_ZN3Foo3barEv": ["d"],
         "_Z6victimi": ["e"], "_ZL8LeakBytePKcm": ["f"]}
    assert find_function(f, "foo") == ["a"]
    assert find_function(f, "bar") == ["b"]
    assert find_function(f, "baz") == ["c"]
    assert find_function(f, "victim") == ["e"]
    assert find_function(f, "LeakByte") == ["f"]
    assert find_function(f, "nothere") is None


def test_train_overlap_by_source_path(clone, tmp_path):
    e = entry(clone, arches=["x86_64"], opts=["-O0"])
    tf = tmp_path / "train.jsonl"
    tf.write_text(json.dumps(dict(sequence=["nop"], label="BENIGN", arch="x86_64", group="g",
                                  source_file="/tmp/ext/fx/a.c")) + "\n")
    recs, _ = repos.run(e, clone, tmp_path / "o", tmp_path / "t", compile_fn=fake_compile,
                        train_file=tf, log=lambda *_: None)
    assert recs and recs[0]["train_overlap"] and recs[0]["train_overlap_reason"] == "source_path"


def test_per_compiler_flags(clone, tmp_path):
    seen = []

    def spy(src, arch, cc, opt, extra_flags=(), **kw):
        seen.append((cc, tuple(extra_flags)))
        return ASM
    e = entry(clone, compilers=["gcc", "clang"], arches=["x86_64"], opts=["-O0"], extra_flags_clang=["-fms-extensions"])
    repos.run(e, clone, tmp_path / "o", tmp_path / "t", compile_fn=spy, train_file=None, log=lambda *_: None)
    assert ("clang", ("-w", "-fms-extensions")) in seen and ("gcc", ("-w",)) in seen


# ---- fix round 1: family / group, harness, dedupe ----
def test_kocher_family_overlaps_train_without_hash_or_path(clone, tmp_path):
    e = entry(clone, arches=["x86_64"], opts=["-O0"], family_train_tokens=["spectector"])
    e["items"][0]["family"] = "kocher:01"
    tf = tmp_path / "train.jsonl"
    tf.write_text(json.dumps(dict(sequence=["nop"], label="SPECTRE_V1", arch="x86_64",
                                  group="ext_spectector_p1_vanilla", source_file="/tmp/x/hwsw/a.s")) + "\n")
    recs, _ = repos.run(e, clone, tmp_path / "o", tmp_path / "t", compile_fn=fake_compile,
                        train_file=tf, log=lambda *_: None)
    r = recs[0]
    assert r["family"] == "kocher:01" and r["group"] == "kocher:01"
    assert r["train_overlap"] and r["train_overlap_reason"].startswith("family")
    recs2, _ = repos.run(e, clone, tmp_path / "o2", tmp_path / "t", compile_fn=fake_compile,
                         train_file=None, log=lambda *_: None)
    assert not recs2[0]["train_overlap"]


def test_two_repos_share_group_for_same_case(clone, tmp_path):
    e1 = entry(clone, name="r1", arches=["x86_64"], opts=["-O0"])
    e2 = entry(clone, name="r2", arches=["x86_64"], opts=["-O0"])
    for e in (e1, e2):
        e["items"][0]["family"] = "kocher:03"
    a, _ = repos.run(e1, clone, tmp_path / "o", tmp_path / "t", compile_fn=fake_compile, train_file=None, log=lambda *_: None)
    b, _ = repos.run(e2, clone, tmp_path / "o", tmp_path / "t", compile_fn=fake_compile, train_file=None, log=lambda *_: None)
    assert a[0]["group"] == b[0]["group"] == "kocher:03"


def test_default_family_is_repo_item(clone, tmp_path):
    recs, _ = repos.run(entry(clone), clone, tmp_path / "o", tmp_path / "t", compile_fn=fake_compile,
                        train_file=None, log=lambda *_: None)
    assert recs[0]["family"] == "fx:a.c:victim" and recs[0]["group"] == recs[0]["family"]


def test_harness_flag(clone, tmp_path):
    e = entry(clone)
    e["items"][0]["harness"] = True
    recs, _ = repos.run(e, clone, tmp_path / "o", tmp_path / "t", compile_fn=fake_compile, train_file=None, log=lambda *_: None)
    assert all(r["harness"] is True for r in recs)
    recs, _ = repos.run(entry(clone), clone, tmp_path / "o", tmp_path / "t", compile_fn=fake_compile, train_file=None, log=lambda *_: None)
    assert all(r["harness"] is False for r in recs)


def _row(seq, name, arch="x86_64"):
    return dict(sequence=seq, label="BENIGN", arch=arch, group="g", file="f", function=name,
                provenance=dict(url="u", commit_or_version="c", licence="l", retrieved="d"))


def test_dedupe_marks_later_rows_only(tmp_path):
    from realworld import dedupe
    a, b = tmp_path / "realworld_a.jsonl", tmp_path / "realworld_b.jsonl"
    same = ["movq %rax, %rbx", "ret"]
    a.write_text(json.dumps(_row(same, "first")) + "\n" + json.dumps(_row(["nop", "ret"], "other")) + "\n")
    b.write_text(json.dumps(_row(same, "second")) + "\n" + json.dumps(_row(same, "third", arch="arm64")) + "\n")
    n = dedupe.run([b, a])  # order of args must not matter
    rows = [json.loads(l) for p in (a, b) for l in open(p)]
    assert n == 1
    assert rows[0]["dup_of"] is None and rows[1]["dup_of"] is None
    assert rows[2]["dup_of"] == "u@c#f:first"
    assert rows[3]["dup_of"] is None  # different arch
    assert dedupe.run([a, b]) == 1  # idempotent
