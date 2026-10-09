"""Tests for the Spectector-Combined plumbing in oracle/spectector_oracle.py.

Upstream Spectector models conditional-branch speculation only, which is why it
adjudicates ~82% of our SPECTRE_V1 candidates but ~15% of SPECTRE_V2 and ~0.2%
of RETBLEED. Spectector-Combined (Fabian, Guarnieri & Patrignani, CCS 2022)
adds further mechanisms behind a `-v` flag (undocumented in the usage text; the fork's own
test scripts use `-v 2`).

These tests cover OUR side of the integration only: that the flag reaches the
command line, that requesting it selects the separate image, and that the
default path is byte-identical to what produced the existing V1/V4 results.
They do not build or run the image, so they pass without it.
"""
import sys
from pathlib import Path

import pytest

ROOT = Path(__file__).resolve().parent.parent.parent
sys.path.insert(0, str(ROOT))

from oracle import spectector_oracle as so  # noqa: E402
from oracle.validators.spectector_validator import SpectectorValidator  # noqa: E402


# ---------------------------------------------------------------------------
# image selection
# ---------------------------------------------------------------------------

def test_default_image_is_the_pinned_upstream_one():
    cmd = so._container_cmd("/repo", "/work", "true")
    assert so._DOCKER_IMAGE in cmd
    assert so._DOCKER_IMAGE_COMBINED not in cmd


def test_explicit_image_overrides():
    cmd = so._container_cmd("/repo", "/work", "true",
                            image=so._DOCKER_IMAGE_COMBINED)
    assert so._DOCKER_IMAGE_COMBINED in cmd
    assert so._DOCKER_IMAGE not in cmd


def test_combined_image_is_a_separate_name():
    """The existing V1/V4 numbers must stay reproducible against the exact
    oracle that produced them, so the extension cannot replace that image."""
    assert so._DOCKER_IMAGE_COMBINED != so._DOCKER_IMAGE


# ---------------------------------------------------------------------------
# the --version flag reaching the command line
# ---------------------------------------------------------------------------

@pytest.fixture
def captured(monkeypatch):
    """Capture the inner script and image without running a container."""
    seen = {}

    def fake_container_cmd(repo_root, work_dir, inner_script, image=None):
        seen["script"] = inner_script
        seen["image"] = image
        return ["true"]

    monkeypatch.setattr(so, "_container_cmd", fake_container_cmd)
    return seen


def _run(tmp_path, **kw):
    row = {"gadget_id": "g", "path": "x.c", "vuln_class": "SPECTRE_V2",
           "adjudicable": "yes"}
    # run_spec_gadget will fail to find output JSON and return unrunnable;
    # we only care about the command it built.
    so.run_spec_gadget(row, str(tmp_path), **kw)


def test_no_version_flag_by_default(captured, tmp_path):
    _run(tmp_path)
    assert " -v " not in captured["script"]
    assert captured["image"] is None          # -> the pinned upstream image


def test_version_flag_is_passed_through(captured, tmp_path):
    _run(tmp_path, versions="2")
    assert " -v 2" in captured["script"]


def test_versioned_path_adds_the_forks_required_flags(captured, tmp_path):
    """Spectector-Combined's extended analyses need an entry point and the
    skip/parse-unsupported flags its own test scripts use; without them an
    indirect-branch gadget blows up. The upstream path must NOT get them."""
    _run(tmp_path, versions="2")
    s = captured["script"]
    assert "-e [$ENTRY]" in s and "ENTRY=$(grep" in s
    assert "--skip-uns" in s and "--parse-uns" in s


def test_upstream_path_has_none_of_the_forks_flags(captured, tmp_path):
    _run(tmp_path)
    s = captured["script"]
    assert "--skip-uns" not in s and "-e [$ENTRY]" not in s and "ENTRY=" not in s


def test_requesting_a_version_selects_the_combined_image(captured, tmp_path):
    _run(tmp_path, versions="2")
    assert captured["image"] == so._DOCKER_IMAGE_COMBINED


def test_combined_digits_are_passed_verbatim(captured, tmp_path):
    _run(tmp_path, versions="124")
    assert " -v 124" in captured["script"]


def test_noninter_analysis_is_still_requested(captured, tmp_path):
    """The property under test is unchanged; only the mechanism set widens."""
    _run(tmp_path, versions="2")
    assert "-a noninter" in captured["script"]


# ---------------------------------------------------------------------------
# per-class mechanism map
# ---------------------------------------------------------------------------

def test_version_map_covers_the_classes_upstream_cannot_adjudicate():
    m = so.SPECTECTOR_VERSION_FOR_CLASS
    assert m["SPECTRE_V2"] == "2"          # indirect branch
    assert m["RETBLEED"] == "5"            # return speculation
    assert m["SPECTRE_V1"] == "1"


def test_version_map_omits_classes_with_no_modelled_mechanism():
    """MDS and L1TF are fault/assist transients; this oracle models none of
    that, so it must not be asked to rule on them."""
    m = so.SPECTECTOR_VERSION_FOR_CLASS
    assert "MDS" not in m and "L1TF" not in m and "BHI" not in m


# ---------------------------------------------------------------------------
# validator wiring
# ---------------------------------------------------------------------------

def test_validator_defaults_to_upstream_behaviour(monkeypatch):
    seen = {}
    monkeypatch.setattr("oracle.validators.spectector_validator.run_spec_gadget",
                        lambda row, root, versions=None, image=None:
                        seen.update(versions=versions, image=image)
                        or _FakeRec())
    SpectectorValidator("/repo").validate(
        {"gadget_id": "g", "vuln_class": "SPECTRE_V1", "spectector_source": "x.c"})
    assert seen == {"versions": None, "image": None}


def test_validator_resolves_versions_per_class(monkeypatch):
    seen = {}
    monkeypatch.setattr("oracle.validators.spectector_validator.run_spec_gadget",
                        lambda row, root, versions=None, image=None:
                        seen.update(versions=versions) or _FakeRec())
    v = SpectectorValidator("/repo",
                            versions_by_class=so.SPECTECTOR_VERSION_FOR_CLASS)
    v.validate({"gadget_id": "g", "vuln_class": "SPECTRE_V2",
                "spectector_source": "x.c"})
    assert seen["versions"] == "2"


def test_validator_explicit_versions_win_over_the_map(monkeypatch):
    seen = {}
    monkeypatch.setattr("oracle.validators.spectector_validator.run_spec_gadget",
                        lambda row, root, versions=None, image=None:
                        seen.update(versions=versions) or _FakeRec())
    v = SpectectorValidator("/repo", versions="124",
                            versions_by_class={"SPECTRE_V2": "2"})
    v.validate({"gadget_id": "g", "vuln_class": "SPECTRE_V2",
                "spectector_source": "x.c"})
    assert seen["versions"] == "124"


class _FakeRec:
    status = "unrunnable"
    leak = False
    leak_signal = 0.0
    adjudicable = "yes"
