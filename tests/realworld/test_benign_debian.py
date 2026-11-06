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


def test_heldout_benign_whole_functions(tmp_path):
    # C1/R39: held-out eval benign = WHOLE functions (>= WIN_LO, mitigation-filtered), not tiles;
    # the per-package cap applies to functions, evenly spaced and deterministic
    def fake_build(pkg, arch, cc, snapshot, work):
        fns = _long_asm(3, 300) + _func("short", _body(77, 10)) + _func("mit", _body(78, 60) + ["\tlfence"])
        return "1.0-1", [("a.s", fns)]
    pk = tmp_path / "pk.txt"
    pk.write_text("\n".join(PKGS))
    ref = tmp_path / "ref.jsonl"
    ref.write_text("\n".join(json.dumps({"label": "X", "sequence": ["a"] * n}) for n in REF)
                   + "\n" + json.dumps({"label": "BENIGN", "sequence": ["a"] * 5}) + "\n")
    bd.run(pk, "x86_64", "gcc", "20261101T000000Z", tmp_path / "tr", tmp_path / "ev",
           build_fn=fake_build, log=lambda *a: None, length_ref=ref, base_pools=())
    ev = [json.loads(l) for l in open(tmp_path / "ev" / "realworld_benign_x86_64.jsonl")]
    tr = [json.loads(l) for l in open(tmp_path / "tr" / "benign_x86_64_gcc.jsonl")]
    assert ev
    for pkg in {r["package"] for r in ev}:
        rs = [r for r in ev if r["package"] == pkg]
        # one row per function; R47: held-out floor is EVAL_MIN_INSTR (10), so the 10-instr `short` is kept
        assert sorted(r["function"] for r in rs) == ["f0", "f1", "f2", "short"]
    assert all(r.get("unit") == "function" for r in ev)
    assert min(len(r["sequence"]) for r in ev) < bd.WIN_LO
    assert all(len(r["sequence"]) >= bd.WIN_LO for r in tr)                # train floor unchanged (R2)
    assert "short" not in {r["function"] for r in tr}
    assert max(len(r["sequence"]) for r in tr) > WIN_HI  # train uses the reference histogram (non-BENIGN rows only)
    # cap on functions: evenly spaced, deterministic
    asm = "".join(_func(f"g{i:03d}", _body(i + 1, 30 + i % 7)) for i in range(50))
    a = bd.records_from_asm([("a.s", asm)], "x86_64", "gcc", cap=10, whole=True, **_prov())
    b = bd.records_from_asm([("a.s", asm)], "x86_64", "gcc", cap=10, whole=True, **_prov())
    assert [r["function"] for r in a] == [r["function"] for r in b] == [f"g{i * 5:03d}" for i in range(10)]


def test_split_excludes_packages_in_base_pool(tmp_path):
    # I1/R40: a package whose name is a path component of the base pool's source_file/source is never
    # held out (it goes to train); the split stays deterministic and still holds out round(0.2 n)
    pool = tmp_path / "pool.jsonl"
    rows = [dict(label="BENIGN", sequence=["nop"], source_file="githubCrawl/benign_asm/arm64/x/pkg3/y.s"),
            dict(label="BENIGN", sequence=["nop"], source="ext/pkg11/z.s"),
            dict(label="BENIGN", sequence=["nop"], source_file="a/pkg1x/b.s")]   # not a component match
    pool.write_text("\n".join(json.dumps(r) for r in rows) + "\n")
    excl = bd.base_pool_packages(PKGS, [pool])
    assert excl == {"pkg3", "pkg11"}
    plain_tr, plain_ev = bd.split_packages(PKGS)
    tr, ev = bd.split_packages(PKGS, exclude=excl)
    assert not excl & set(ev) and excl <= set(tr)
    assert len(ev) == 8 and sorted(tr + ev) == sorted(PKGS)
    assert bd.split_packages(list(reversed(PKGS)), exclude=excl) == (tr, ev)
    # run() wires it: excluded packages land in the train file, never in eval
    def fake_build(pkg, arch, cc, snapshot, work):
        return "1.0-1", [("a.s", _func("f", _body(len(pkg) * 100 + int(pkg[3:]), 30)))]
    pk = tmp_path / "pk.txt"
    pk.write_text("\n".join(PKGS))
    bd.run(pk, "x86_64", "gcc", "trixie", tmp_path / "tr", tmp_path / "ev", build_fn=fake_build,
           log=lambda *a: None, base_pools=[pool])
    evp = {json.loads(l)["package"] for l in open(tmp_path / "ev" / "realworld_benign_x86_64.jsonl")}
    assert evp == set(ev) and not evp & excl


def test_build_style_options(tmp_path, monkeypatch):
    # I3/R41: --opt / --hardening reach the build env and give their own cache cell + output files;
    # a non-default style never writes held-out eval rows (eval stays the Debian default build)
    seen = []

    def fake_run(cmd, **kw):
        seen.append(cmd)
        class R:
            returncode = 0
            stdout = stderr = ""
        return R()
    monkeypatch.setattr(bd.subprocess, "run", fake_run)
    try:
        bd.build_package("zlib", "amd64", "gcc", "trixie", work=tmp_path / "w", opt="O0", hardening="off")
    except bd.BuildSkip:
        pass
    cmd = next(c for c in seen if c[:2] == ["docker", "run"] and "--name" in c)
    assert "OPT=O0" in cmd and "HARDENING=off" in cmd and "CELL=zlib-amd64-gcc-O0-hoff" in cmd
    assert 'DEB_BUILD_MAINT_OPTIONS=hardening=-all' in bd.BUILD_SH
    assert bd.cell_name("zlib", "amd64", "gcc") == "zlib-amd64-gcc"
    assert bd.style_suffix("default", "on") == "" and bd.style_suffix("O0", "off") == "_O0_hoff"

    built = []

    def fake_build(pkg, arch, cc, snapshot, work):
        built.append(pkg)
        return "1.0-1", [("a.s", _func("f", _body(len(pkg) * 100 + int(pkg[3:]), 30)))]
    pk = tmp_path / "pk.txt"
    pk.write_text("\n".join(PKGS))
    bd.run(pk, "x86_64", "gcc", "trixie", tmp_path / "tr", tmp_path / "ev", build_fn=fake_build,
           log=lambda *a: None, base_pools=(), opt="O0", hardening="off")
    _, ev = bd.split_packages(PKGS)
    assert not set(built) & set(ev)
    assert not (tmp_path / "ev" / "realworld_benign_x86_64.jsonl").exists()
    tr = [json.loads(l) for l in open(tmp_path / "tr" / "benign_x86_64_gcc_O0_hoff.jsonl")]
    assert tr and all(r["opt"] == "O0(debian,hardening=off)" for r in tr)
    assert (tmp_path / "tr" / "skipped_benign_x86_64_gcc_O0_hoff.jsonl").exists()


def test_timeout_removes_container(tmp_path, monkeypatch):
    seen = []

    def fake_run(cmd, **kw):
        seen.append(cmd)
        if cmd[:2] == ["docker", "run"] and "--name" in cmd:
            raise bd.subprocess.TimeoutExpired(cmd, 1)
        class R:
            returncode = 0
            stdout = stderr = ""
        return R()
    monkeypatch.setattr(bd.subprocess, "run", fake_run)
    try:
        bd.build_package("zlib", "amd64", "gcc", "trixie", work=tmp_path / "w", timeout=1)
    except bd.BuildSkip as ex:
        assert ex.reason == "timeout"
    name = next(c for c in seen if "--name" in c)
    name = name[name.index("--name") + 1]
    assert ["docker", "rm", "-f", name] in seen


def test_default_snapshot_is_trixie():
    assert bd.DEFAULT_SNAPSHOT == "trixie"


def _mk_cache(tmp_path, version="1.0-1", snapshot="trixie", partial=""):
    c = tmp_path / "c" / "p-amd64-gcc"
    (c / "asm").mkdir(parents=True)
    (c / "asm" / "a.s").write_text(_func("f", _body(1, 30)))
    (c / "version.txt").write_text(version)
    (c / "snapshot.txt").write_text(snapshot)
    if partial:
        (c / "partial.txt").write_text(partial)
    return c


def test_cache_hit_same_version(tmp_path):
    c = _mk_cache(tmp_path, partial="later step failed")
    hit = bd.cache_lookup(c, "p", "trixie", version_fn=lambda p, s: "1.0-1", log=lambda *a: None)
    assert hit and hit[0] == "1.0-1" and hit[2] == "later step failed" and hit[1][0][0] == "a.s"


def test_cache_miss_on_version_mismatch(tmp_path):
    c = _mk_cache(tmp_path)
    msgs = []
    assert bd.cache_lookup(c, "p", "trixie", version_fn=lambda p, s: "2.0-1", log=msgs.append) is None
    assert msgs and "cache miss" in msgs[0]
    # a different snapshot id is also a miss, without even asking apt
    assert bd.cache_lookup(c, "p", "20261101T000000Z", version_fn=lambda p, s: "1.0-1", log=msgs.append) is None
    # unverifiable version -> miss
    def boom(p, s):
        raise RuntimeError("net")
    assert bd.cache_lookup(c, "p", "trixie", version_fn=boom, log=lambda *a: None) is None


def test_build_system_probes_dropped():
    # CMake compiler-id / try-compile and autoconf conftest programs are build-system probes, identical
    # across packages (they leaked a held-out json-c `main` into train by hash): never collected
    probe = _func("main", _body(5, 40))
    real = _func("deflate", _body(6, 40))
    items = [("build/CMakeFiles/3.31.6/CompilerIdC/CMakeCCompilerId.s", probe),
             ("build/CMakeFiles/CMakeScratch/TryCompile-x/src.c.s", probe),
             ("conftest.s", probe), ("lib/deflate.s", real)]
    recs = bd.records_from_asm(items, "x86_64", "gcc", whole=True, **_prov())
    assert {r["function"] for r in recs} == {"deflate"}
