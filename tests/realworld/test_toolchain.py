import subprocess
import tempfile
from pathlib import Path
import pytest
from realworld.asm import extract_named_functions, find_function
from realworld.toolchain import compile_to_asm, CompileError


def _docker_ok():
    try:
        return subprocess.run(["docker", "info"], capture_output=True, timeout=30).returncode == 0
    except Exception:
        return False


@pytest.fixture(scope="module")
def need_docker():
    if not _docker_ok():
        pytest.skip("docker unavailable")
    r = subprocess.run(["docker", "image", "inspect", "specexec-toolchain"], capture_output=True)
    if r.returncode != 0:
        pytest.skip("specexec-toolchain image not built")


@pytest.fixture
def tmp_path():
    # colima only shares $HOME with the VM; pytest's /private/var tmp is not mountable
    with tempfile.TemporaryDirectory(dir=Path(__file__).parent) as d:
        yield Path(d)


def test_compile_x86_and_riscv(need_docker, tmp_path):
    src = tmp_path / "a.c"
    src.write_text("int f(int*a,int i){return a[i];}\n")
    for arch in ("x86_64", "riscv64"):
        for cc in ("gcc", "clang"):
            asm = compile_to_asm(src, arch, cc, "-O2")
            body = find_function(extract_named_functions(asm), "f")
            assert body is not None, (arch, cc)
            if arch == "x86_64":
                assert any(("%e" in l or "%r" in l) for l in body), (cc, body)
            if arch == "riscv64":
                assert any(("lw" in l or "ld" in l) for l in body)


def test_compile_error(need_docker, tmp_path):
    src = tmp_path / "bad.c"
    src.write_text("int f( {\n")
    with pytest.raises(CompileError):
        compile_to_asm(src, "x86_64", "gcc", "-O2")
