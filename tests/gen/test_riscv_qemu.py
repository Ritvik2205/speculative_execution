"""test_riscv_qemu.py — RISC-V QEMU functional-oracle backend.

The parts that need qemu + a riscv linker (actual execution) are cluster-only;
these tests cover everything that is pure/local: the return-code -> outcome
mapping, the wrapper-asm shape, fail-open when tools are absent, and that stage
C dispatches riscv64 to the QEMU runner only when it is available.
"""
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parents[2]
sys.path.insert(0, str(ROOT / "gen"))
sys.path.insert(0, str(ROOT / "spec"))
sys.path.insert(0, str(ROOT / "v54"))

from precheck import PreCheck, RiscvQemuRunner  # noqa: E402


def test_rc_to_outcome_mapping():
    m = RiscvQemuRunner._rc_to_outcome
    assert m(0) == ("ok", None)              # clean exit
    assert m(42)[0] == "ok"                  # any nonzero exit code still "ran"
    assert m(-4)[0] == "fault_insn"          # SIGILL (the riscv illegal-insn case)
    assert m(-11)[0] == "fault_mem"          # SIGSEGV
    assert m(-7)[0] == "fault_mem"           # SIGBUS
    assert m(-6)[0] == "fault_insn"          # SIGABRT
    assert m(-8)[0] == "fault_insn"          # SIGFPE
    assert m(-9)[0] == "error"               # SIGKILL -> unclassified


def test_wrapper_asm_shape():
    r = RiscvQemuRunner.__new__(RiscvQemuRunner)  # no toolchain needed for asm gen
    # _wrapper_asm now takes the body ASM TEXT (the .incbin line is built by
    # _build_and_run); demand defaults OFF.
    asm = r._wrapper_asm('\t.incbin "/tmp/body.bin"')
    assert ".globl _start" in asm
    assert '.incbin "/tmp/body.bin"' in asm
    assert "li a7, 93" in asm and "ecall" in asm        # exit(0)
    assert "la sp, _buf_top" in asm                      # stack seeded
    for i in (1, 3, 5, 31):
        assert f"la x{i}, _buf_mid" in asm
    assert "la x0," not in asm                            # x0 is hardwired zero
    assert "la x2," not in asm                            # sp handled separately
    # demand OFF -> no handler/install/data
    assert "_sigh:" not in asm and "li a7, 134" not in asm


def test_wrapper_asm_demand_mode():
    r = RiscvQemuRunner.__new__(RiscvQemuRunner)
    asm = r._wrapper_asm('\t.incbin "/tmp/body.bin"', demand=True)
    # handler + install (rt_sigaction=134) + mmap (222) + data present
    assert "_sigh:" in asm
    assert "li a7, 134" in asm                           # rt_sigaction install
    assert "li a7, 222" in asm                           # mmap in the handler
    assert "ld t0, 16(a1)" in asm                        # si_addr at offset 16
    assert "_act:" in asm and "_pgcount:" in asm
    assert f"li t4, {64}" in asm                         # the page cap
    # body + exit still present and ordered before the handler
    assert asm.index(".Lbody:") < asm.index("_sigh:")


def test_available_matches_tools_locally():
    # On a host without qemu/riscv-cc (the dev Mac, CI), the runner must report
    # unavailable and PreCheck must leave riscv_runner None (fail open).
    if not RiscvQemuRunner.available_tools():
        pc = PreCheck(emulate=True)
        assert pc.riscv_runner is None
    else:  # pragma: no cover - only on a fully-tooled cluster host
        r = RiscvQemuRunner()
        assert r.available() in (True, False)


def test_runner_rejects_wrong_arch():
    r = RiscvQemuRunner.__new__(RiscvQemuRunner)
    try:
        r.run(b"\x00\x00", "x86_64")
    except ValueError:
        pass
    else:
        raise AssertionError("expected ValueError for non-riscv arch")


def test_runner_no_code():
    r = RiscvQemuRunner.__new__(RiscvQemuRunner)
    assert r.run(b"", "riscv64") == ("no_code", None, 0)
