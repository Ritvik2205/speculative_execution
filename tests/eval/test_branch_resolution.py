"""Step 5 measurement: direct branches whose target the graph can resolve
(eval/branch_resolution_report.py), and the >=95% bar on every label-keeping
dataset that exists on this machine."""
import glob
import sys
from pathlib import Path

import pytest

ROOT = Path(__file__).resolve().parents[2]
sys.path.insert(0, str(ROOT / "eval"))

import branch_resolution_report as brr  # noqa: E402

LABEL_DATASETS = sorted(glob.glob(str(ROOT / "eval/data/*_labels.jsonl"))
                        + glob.glob(str(ROOT / "v54/data/*_labels.jsonl")))


def test_stored_format_resolves_nothing():
    seq = ["cmpq %rsi, %rdi", "js 0x30 <.bb_0.1>", "jmp 0x7a <.macro.measurement_end>",
           "movq (%rdi), %rax"]
    c = brr.count_sequence(seq, "x86_64")
    assert (c["direct"], c["resolved"], c["external"]) == (2, 0, 0)


def test_label_keeping_format_resolves_and_counts_exit_and_tail_calls():
    seq = ["cmpq %rsi, %rdi", "js .bb_0.1", "jmp .macro.measurement_end", ".bb_0.1:",
           "movq (%rdi), %rax", "jmp _other_function", ".macro.measurement_end:"]
    c = brr.count_sequence(seq, "x86_64")
    assert (c["direct"], c["resolved"], c["to_exit"], c["external"]) == (3, 2, 1, 1)


def test_arm64_local_label():
    seq = ["cmp x0, x1", "b.hs LBB0_2", "ldrb w8, [x2, x0]", "LBB0_2:", "ret"]
    c = brr.count_sequence(seq, "arm64")
    assert (c["direct"], c["resolved"]) == (1, 1)


def test_existing_stored_hardware_variants_resolve_zero():
    p = ROOT / "eval/data/revizor_hwlabel_variants.jsonl"
    if not p.exists():
        pytest.skip("dataset not on this machine")
    c = brr.count_file(p)["x86_64"]
    assert c["direct"] > 0 and c["resolved"] == 0


@pytest.mark.skipif(not LABEL_DATASETS, reason="no *_labels.jsonl built on this machine")
@pytest.mark.parametrize("path", LABEL_DATASETS, ids=lambda p: Path(p).name)
def test_label_keeping_datasets_resolve_at_least_95_percent(path):
    for arch, c in brr.count_file(path).items():
        if c["direct"] - c["external"] == 0:
            continue
        assert brr.local_rate(c) >= 0.95, (arch, dict(c))
        if "revizor" in Path(path).name:      # no tail calls in Revizor programs
            assert brr.rate(c) >= 0.95, (arch, dict(c))
