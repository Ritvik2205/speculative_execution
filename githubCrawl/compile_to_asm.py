import os
import subprocess
from pathlib import Path
from multiprocessing import Pool, cpu_count

SOURCE_LIST = "c_cpp_files.txt"
ASM_ROOT = "assembly_outputs"
ERROR_LOG = "compiler_errors.log"

# Define your target matrix
TARGETS = [
    ("x86_64", "gcc", "gcc", "x86-64"),
    ("x86_64", "clang", "clang", "x86-64"),
    ("arm64", "aarch64-linux-gnu-gcc", "aarch64-linux-gnu-gcc", "armv8-a"),
    ("riscv64", "riscv64-linux-gnu-gcc", "riscv64-linux-gnu-gcc", "rv64gc"),
]
OPT_LEVELS = ["O0", "O1", "O2", "O3", "Os"]

# Prepare all jobs in advance for parallel processing
def prepare_jobs(files):
    jobs = []
    for src in files:
        for arch, compiler, compiler_cmd, march_flag in TARGETS:
            for opt_level in OPT_LEVELS:
                jobs.append((src, arch, compiler, compiler_cmd, march_flag, opt_level))
    return jobs

def compile_source(args):
    src_path, arch, compiler, compiler_cmd, march_flag, opt_level = args
    src_path = Path(src_path)
    rel_src = src_path.relative_to(Path.cwd()) if src_path.is_absolute() else src_path
    out_dir = Path(ASM_ROOT) / arch / compiler / opt_level / rel_src.parent
    out_dir.mkdir(parents=True, exist_ok=True)
    out_file = out_dir / (src_path.stem + f".{arch}.{compiler}.{opt_level}.s")
    cmd = [
        compiler_cmd,
        "-S",
        f"-{opt_level}",
        f"-march={march_flag}",
        str(src_path),
        "-o",
        str(out_file)
    ]
    try:
        result = subprocess.run(cmd, capture_output=True, text=True, timeout=60)
        if result.returncode != 0:
            raise subprocess.CalledProcessError(result.returncode, cmd, result.stdout, result.stderr)
        print(f"Compiled: {src_path} -> {out_file}")
        return None
    except Exception as e:
        error_msg = f"FAILED: {' '.join(cmd)}\n"
        if isinstance(e, subprocess.CalledProcessError):
            error_msg += e.stderr + "\n"
        else:
            error_msg += str(e) + "\n"
        print(f"Failed: {src_path} [{arch} {compiler} {opt_level}]")
        return error_msg

def main():
    if not os.path.exists(SOURCE_LIST):
        print(f"Source list {SOURCE_LIST} not found.")
        return
    with open(SOURCE_LIST, "r") as f:
        files = [line.strip() for line in f if line.strip()]
    jobs = prepare_jobs(files)
    errors = []
    with Pool(processes=cpu_count()) as pool:
        for result in pool.imap_unordered(compile_source, jobs):
            if result:
                errors.append(result)
    if errors:
        with open(ERROR_LOG, "a") as logf:
            for err in errors:
                logf.write(err)
    print(f"Done. {len(errors)} errors logged to {ERROR_LOG}.")

if __name__ == "__main__":
    main() 