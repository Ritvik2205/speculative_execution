"""One Linux toolchain (gcc/clang, x86_64/riscv64) via Docker."""
import subprocess
import sys
from pathlib import Path

IMAGE = "specexec-toolchain"
CROSS_PREFIX = {"x86_64": "x86_64-linux-gnu-", "riscv64": "riscv64-linux-gnu-"}
_DIR = Path(__file__).parent / "toolchain"


class CompileError(RuntimeError):
    pass


def build() -> None:
    subprocess.run(["docker", "build", "-t", IMAGE, str(_DIR)], check=True)


def compiler_argv(arch: str, cc: str) -> list[str]:
    """Cross-compiler argv inside the image (native arm64 image, cross for both targets)."""
    if arch not in CROSS_PREFIX:
        raise ValueError(f"unsupported arch {arch}")
    prefix = CROSS_PREFIX[arch]
    if cc == "gcc":
        return [prefix + "gcc"]
    if cc == "clang":
        triple = prefix[:-1]
        return ["clang", f"--target={triple}", f"--sysroot=/usr/{triple}",
                f"--gcc-toolchain=/usr"]
    raise ValueError(f"unsupported cc {cc}")


def compile_to_asm(src: Path, arch: str, cc: str, opt: str,
                   extra_flags=(), include_dirs=()) -> str:
    src = Path(src).resolve()
    argv = compiler_argv(arch, cc)
    cmd = ["docker", "run", "--rm", "-v", f"{src.parent}:/src:ro"]
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
