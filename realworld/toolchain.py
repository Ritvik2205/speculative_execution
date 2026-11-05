"""One Linux toolchain (gcc/clang, x86_64/riscv64) via Docker."""
import subprocess
import sys
from pathlib import Path

IMAGE = "specexec-toolchain"
PLATFORM = "linux/amd64"  # x86_64 host userland so plain gcc/clang emit x86_64; riscv via cross
_DIR = Path(__file__).parent / "toolchain"


class CompileError(RuntimeError):
    pass


def build() -> None:
    subprocess.run(["docker", "build", "--platform", PLATFORM, "-t", IMAGE, str(_DIR)], check=True)


def _compiler_argv(arch: str, cc: str) -> list[str]:
    if arch not in ("x86_64", "riscv64"):
        raise ValueError(f"unsupported arch {arch}")
    if cc == "gcc":
        return ["gcc"] if arch == "x86_64" else ["riscv64-linux-gnu-gcc"]
    if cc == "clang":
        return ["clang"] + ([] if arch == "x86_64" else ["--target=riscv64-linux-gnu"])
    raise ValueError(f"unsupported cc {cc}")


def compile_to_asm(src: Path, arch: str, cc: str, opt: str,
                   extra_flags=(), include_dirs=()) -> str:
    src = Path(src).resolve()
    argv = _compiler_argv(arch, cc)
    cmd = ["docker", "run", "--rm", "--platform", PLATFORM, "-v", f"{src.parent}:/src:ro"]
    inc_args = []
    for i, d in enumerate(include_dirs):
        d = Path(d).resolve()
        cmd += ["-v", f"{d}:/inc{i}:ro"]
        inc_args += ["-I", f"/inc{i}"]
    cmd += ["-w", "/src", IMAGE] + argv + [opt, "-S", "-o", "-"] + inc_args \
        + list(extra_flags) + [f"/src/{src.name}"]
    r = subprocess.run(cmd, capture_output=True, text=True)
    if r.returncode != 0:
        raise CompileError(r.stderr)
    return r.stdout


if __name__ == "__main__":
    if sys.argv[1:] == ["build"]:
        build()
    else:
        print("usage: toolchain.py build", file=sys.stderr)
        sys.exit(2)
