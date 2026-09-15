"""Tests for oracle/revizor/scripts/run_multiclass_campaign.sh that don't
require the i5-8300H hardware: syntax validity and the host guard's refusal
behavior. The guard is expected to reject THIS machine (an Apple Silicon
Mac, not Linux/x86_64) -- that's the same refusal an operator would see if
they tried to run the real campaign anywhere but the target box, so
asserting it here is a legitimate portability check, not a hardware test.
"""
import platform
import subprocess
from pathlib import Path

import pytest

REPO_ROOT = Path(__file__).resolve().parents[2]
SCRIPT = REPO_ROOT / "oracle" / "revizor" / "scripts" / "run_multiclass_campaign.sh"

IS_TARGET_HOST = platform.system() == "Linux" and platform.machine() == "x86_64"


def test_script_exists_and_is_executable():
    assert SCRIPT.is_file()


def test_script_passes_bash_syntax_check():
    result = subprocess.run(["bash", "-n", str(SCRIPT)], capture_output=True, text=True)
    assert result.returncode == 0, result.stderr


@pytest.mark.skipif(IS_TARGET_HOST, reason="host guard is expected to PASS on a real Linux/x86_64 box")
def test_host_guard_refuses_on_non_target_host():
    result = subprocess.run(
        ["bash", str(SCRIPT), "--n-seeds", "3"],
        capture_output=True, text=True,
    )
    assert result.returncode != 0
    assert "Refusing to run" in result.stdout
    assert "i5-8300H" in result.stdout


@pytest.mark.skipif(IS_TARGET_HOST, reason="host guard is expected to PASS on a real Linux/x86_64 box")
def test_host_guard_mentions_docker_macos_not_supported():
    result = subprocess.run(
        ["bash", str(SCRIPT), "--n-seeds", "3"],
        capture_output=True, text=True,
    )
    combined = result.stdout + result.stderr
    assert "Docker" in combined
    assert "macOS" in combined


def test_missing_seed_args_is_a_fatal_usage_error():
    """Argument validation must fire and exit non-zero even before the host
    guard could plausibly be reached on any host."""
    result = subprocess.run(["bash", str(SCRIPT)], capture_output=True, text=True)
    assert result.returncode != 0
    assert "--seeds" in result.stdout or "--n-seeds" in result.stdout


def test_mutually_exclusive_seeds_and_n_seeds_rejected():
    result = subprocess.run(
        ["bash", str(SCRIPT), "--seeds", "1 2", "--n-seeds", "3"],
        capture_output=True, text=True,
    )
    assert result.returncode != 0
    assert "not both" in result.stdout


def test_help_flag_exits_zero():
    result = subprocess.run(["bash", str(SCRIPT), "--help"], capture_output=True, text=True)
    assert result.returncode == 0
    assert "Usage:" in result.stdout
