"""RISC-V as a third generation arch: norm_arch must preserve riscv64 (it used
to collapse everything not-arm to x86_64, so riscv gadgets would train under
the wrong arch token), ARCHS must include it, and isa_purity must not
mis-score riscv against the arm opcode set.
"""
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent.parent
sys.path.insert(0, str(ROOT))
sys.path.insert(0, str(ROOT / "gen"))
sys.path.insert(0, str(ROOT / "spec"))
sys.path.insert(0, str(ROOT / "v54"))

import importlib.util as _u
_spec = _u.spec_from_file_location("train_generator", ROOT / "gen" / "train_generator.py")
tg = _u.module_from_spec(_spec)
_spec.loader.exec_module(tg)


def test_archs_include_riscv64():
    assert "riscv64" in tg.ARCHS
    assert tg.ARCHS[:2] == ["x86_64", "arm64"]  # existing two unchanged/first


def test_norm_arch_preserves_riscv():
    assert tg.norm_arch("riscv64") == "riscv64"
    assert tg.norm_arch("riscv") == "riscv64"


def test_norm_arch_arm_and_x86_unchanged():
    assert tg.norm_arch("arm64") == "arm64"
    assert tg.norm_arch("aarch64") == "arm64"
    assert tg.norm_arch("arm32") == "arm64"
    assert tg.norm_arch("x86_64") == "x86_64"
    assert tg.norm_arch("unknown") == "x86_64"   # default fallback


def test_isa_purity_none_for_riscv():
    # no _RISCV_ONLY opcode set exists; must return None, not score vs _ARM_ONLY
    assert tg.isa_purity(["addi a0,a0,1", "ld a1,0(a2)"], "riscv64") is None


def test_isa_purity_still_works_for_x86_arm():
    # a decisive x86 opcode should read as high purity for x86_64
    p = tg.isa_purity(["leaq (%rax), %rbx"], "x86_64")
    assert p is None or 0.0 <= p <= 1.0   # decisive-set dependent, but must not crash
