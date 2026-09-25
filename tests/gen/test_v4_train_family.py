"""Guards for the matched V4 family used as training data and as the held-out
V4 test (gen/v4_family/build_v4_train_family.py)."""
import shutil
import subprocess
import sys
from pathlib import Path

import pytest

ROOT = Path(__file__).resolve().parents[2]
sys.path[:0] = [str(ROOT / "gen" / "v4_family"), str(ROOT / "v54"), str(ROOT / "spec")]
import build_v4_train_family as F  # noqa: E402

needs_clang = pytest.mark.skipif(shutil.which("clang") is None, reason="clang not installed")


def test_train_and_test_strides_disjoint():
    assert not set(F.TRAIN_STRIDES) & set(F.TEST_STRIDES)


def test_refuses_riscv_training_data():
    r = subprocess.run([sys.executable, str(ROOT / "gen/v4_family/build_v4_train_family.py"),
                        "--split", "train", "--archs", "riscv64", "--out", "/dev/null"],
                       capture_output=True, text=True)
    assert r.returncode != 0 and "held-out ISA" in (r.stderr + r.stdout)


@needs_clang
def test_twins_labels_and_neutralised_globals():
    recs, failed = F.build(["x86_64"], ["clang"], (11,), ("O1",))
    assert failed == 0
    by = {r["v4_variant"]: r for r in recs}
    assert by["vuln"]["label"] == "SPECTRE_V4"
    assert by["safe"]["label"] == by["fenced"]["label"] == "BENIGN"
    assert by["vuln"]["sequence"] != by["safe"]["sequence"]
    assert any("lfence" in l for l in by["fenced"]["sequence"])
    for r in recs:                      # no family-identifying global names left
        assert not any(F._GLOBALS.search(l) for l in r["sequence"])


@pytest.mark.skipif(shutil.which("riscv64-elf-gcc") is None, reason="riscv64-elf-gcc not installed")
def test_riscv_fenced_variant_really_has_a_fence():
    recs, _ = F.build(["riscv64"], ["gcc"], (11,), ("O1",))
    fenced = [r for r in recs if r["v4_variant"] == "fenced"]
    assert fenced and all(any(l.split()[0] == "fence" for l in r["sequence"]) for r in fenced)
