import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent.parent
sys.path.insert(0, str(ROOT / "eval"))

from build_riscv_labeled import family_group  # noqa: E402


def test_family_group_collapses_gen_variants():
    a = family_group("c_vulns_c_code_enhanced_variants_l1tf_pf_arm64_gen_0")
    b = family_group("c_vulns_c_code_enhanced_variants_l1tf_pf_arm64_gen_7")
    assert a == b


def test_family_group_strips_arch_marker_before_gen():
    result = family_group("c_vulns_c_code_retbleed_variants_retbleed_rsb_x86_64_gen_3")
    assert "_gen_3" not in result
    assert "x86_64" not in result


def test_family_group_falls_back_to_full_stem_without_gen_suffix():
    result = family_group("c_vulns_c_code_l1tf_pf")
    assert result == "riscv_c_vulns_c_code_l1tf_pf"


def test_family_group_distinguishes_different_families():
    a = family_group("c_vulns_c_code_enhanced_variants_l1tf_pf_arm64_gen_0")
    b = family_group("c_vulns_c_code_enhanced_variants_bhi_arm64_gen_0")
    assert a != b
