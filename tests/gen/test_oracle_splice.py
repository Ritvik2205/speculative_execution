"""Tests for gen/oracle_splice.py -- the realized-instruction-to-grounded-
inline-asm splice algorithm. Structural assertions first (fast, no
toolchain needed), then a real-compile check (needs gcc, matches this
project's established pattern of verifying generated asm actually
assembles rather than eyeballing it -- see eval/riscv_h1_alias_dataflow_verify.py
for the precedent of not trusting a plausible-looking fix without a real
downstream check)."""
import subprocess
import sys
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent.parent.parent / "gen"))

from oracle_splice import splice, find_registers, remap_instrs  # noqa: E402


def test_find_registers_dedupes_x86_width_aliases():
    instrs = ["movq %rax, %rbx", "addl %eax, %ecx"]
    regs = find_registers(instrs, "x86_64")
    assert regs.count("rax") == 1  # %rax and %eax collapse to one identity
    assert "rcx" in regs


def test_find_registers_dedupes_arm_width_aliases():
    instrs = ["ldrb w0, [x1]", "lsl x0, x0, #6"]
    regs = find_registers(instrs, "arm64")
    assert regs.count("arm0") == 1  # w0 and x0 collapse to one identity
    assert "arm1" in regs


def test_splice_pointer_convention_seeds_first_register():
    realized = ["movzbl (%rax), %ebx", "shlq $6, %rbx"]
    asm_text, clobbers = splice(realized, "x86_64", "pointer",
                                 "arr + i", "probe")
    # the seed register (whatever it is) must appear as the FIRST
    # instruction's source, since the realized sequence's first-used
    # register was remapped to it
    assert asm_text.strip().startswith(("movq %0", "mov %0"))


def test_splice_does_not_double_shift_when_realized_sequence_already_shifts_sink():
    """Regression: the realized sequence's own last instruction here
    ("shlq $6, %rbx") already shifts the sink register by
    CACHE_LINE_SHIFT once rbx lands on sink. splice() must NOT append a
    second "shlq $6" after it -- that would shift by 12 total (x4096
    instead of x64), addressing far outside `probe` and producing an
    out-of-bounds write. Exactly one shift-left instruction must appear
    in the emitted text."""
    realized = ["movzbl (%rax), %ebx", "shlq $6, %rbx"]
    asm_text, clobbers = splice(realized, "x86_64", "pointer",
                                 "arr + i", "probe")
    assert asm_text.count("shl") == 1


def test_splice_value_convention_has_no_extra_load():
    realized = ["shlq $1, %rax"]
    asm_text, clobbers = splice(realized, "x86_64", "value", "v", "probe")
    # value convention: input is already a byte value, not a pointer to
    # dereference -- the emitted text must not contain a second memory
    # dereference of the seed register before the realized instructions run
    # (structural check: count of parenthesized memory operands referencing
    # the seed register should be 0 in the seed/setup portion)
    assert asm_text.count("(%0)") == 0 or "movq %0" in asm_text.split("\n")[0]


def test_splice_falls_back_to_seed_when_no_destination_register():
    realized = ["nop"]
    asm_text, clobbers = splice(realized, "x86_64", "value", "v", "probe")
    assert asm_text  # doesn't crash, produces something


def test_splice_produces_compilable_x86_output():
    """Real-compile check: wrap splice() output in a minimal C function
    matching the pointer convention's contract and confirm gcc -S accepts
    it. This is the check that actually matters -- structural assertions
    above catch obvious bugs, this catches real asm errors."""
    realized = ["movzbl (%rax), %ebx", "shlq $6, %rbx"]
    asm_text, clobbers = splice(realized, "x86_64", "pointer", "p", "out")
    clobber_str = ", ".join(f'"{c.lstrip("%")}"' for c in clobbers)
    c_src = f'''
#include <stdint.h>
extern uint8_t out[];
void gadget(uint8_t *p) {{
    __asm__ __volatile__(
        "{asm_text}"
        : : "r"(p), "r"(out) : {clobber_str}, "memory");
}}
'''
    # This host's `gcc` is Apple clang, which defaults to the native
    # arm64-apple-darwin target -- it happily *parses* the C around the
    # asm string but then tries to instantiate x86 mnemonics as ARM
    # assembly and rejects them (confirmed: plain `gcc -S` fails with
    # "unknown token in expression" on %r15 etc). `-arch x86_64` makes
    # clang cross-target the inline-asm validation to x86_64 without
    # needing an actual x86_64 gcc binary.
    cmd = ["gcc", "-x", "c", "-O0", "-S", "-o", "/dev/null", "-"]
    machine = subprocess.run(["gcc", "-dumpmachine"], capture_output=True, text=True).stdout
    if "arm64" in machine or "aarch64" in machine:
        cmd = ["gcc", "-arch", "x86_64", "-x", "c", "-O0", "-S", "-o", "/dev/null", "-"]
    result = subprocess.run(
        cmd, input=c_src, capture_output=True, text=True, timeout=10,
    )
    assert result.returncode == 0, f"gcc rejected splice output:\n{result.stderr}\n---\n{c_src}"


def test_splice_produces_compilable_arm64_output_if_cross_compiler_available():
    import shutil
    cc = shutil.which("aarch64-linux-gnu-gcc") or shutil.which("aarch64-elf-gcc")
    if not cc:
        return  # skip: no ARM64 cross-compiler on this host, don't fail the suite over it
    realized = ["ldrb w9, [x0]", "lsl x9, x9, #6"]
    asm_text, clobbers = splice(realized, "arm64", "pointer", "p", "out")
    clobber_str = ", ".join(f'"{c}"' for c in clobbers)
    c_src = f'''
#include <stdint.h>
extern uint8_t out[];
void gadget(uint8_t *p) {{
    __asm__ __volatile__(
        "{asm_text}"
        : : "r"(p), "r"(out) : {clobber_str}, "memory");
}}
'''
    result = subprocess.run(
        [cc, "-x", "c", "-O0", "-S", "-o", "/dev/null", "-"],
        input=c_src, capture_output=True, text=True, timeout=10,
    )
    assert result.returncode == 0, f"cross-gcc rejected splice output:\n{result.stderr}"
