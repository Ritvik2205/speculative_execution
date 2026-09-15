"""Tests for oracle/revizor/scripts/class_config.py -- the class -> Revizor
demo-config mapping used by `run_multiclass_campaign.sh`.
"""
import importlib.util
import sys
from pathlib import Path

import pytest

REPO_ROOT = Path(__file__).resolve().parents[2]
MODULE_PATH = REPO_ROOT / "oracle" / "revizor" / "scripts" / "class_config.py"
DEMO_CONFIGS_DIR = REPO_ROOT / "oracle" / "revizor" / "demo_configs"

spec = importlib.util.spec_from_file_location("class_config", MODULE_PATH)
class_config = importlib.util.module_from_spec(spec)
sys.modules["class_config"] = class_config
spec.loader.exec_module(class_config)

REQUIRED_CLASSES = {"SPECTRE_V4", "MDS", "L1TF", "SPECTRE_V1"}


def test_all_four_classes_are_mapped():
    assert REQUIRED_CLASSES <= set(class_config.CLASS_CONFIG)


def test_mapping_matches_spec():
    assert class_config.CLASS_CONFIG == {
        "SPECTRE_V4": "detect-v4.yaml",
        "MDS": "detect-mds.yaml",
        "L1TF": "detect-foreshadow.yaml",
        "SPECTRE_V1": "detect-v1.yaml",
    }


@pytest.mark.parametrize("cls", sorted(REQUIRED_CLASSES))
def test_config_file_exists_on_disk(cls):
    cfg = class_config.config_for(cls)
    assert (DEMO_CONFIGS_DIR / cfg).is_file()


def test_config_for_is_case_insensitive():
    assert class_config.config_for("spectre_v4") == "detect-v4.yaml"
    assert class_config.config_for("Mds") == "detect-mds.yaml"


def test_config_for_unknown_class_raises_keyerror():
    with pytest.raises(KeyError):
        class_config.config_for("NOT_A_CLASS")


def test_default_classes_matches_mapping_keys():
    assert set(class_config.DEFAULT_CLASSES) == set(class_config.CLASS_CONFIG)


def test_class_lowercase_matches_convert_revizor_gadgets_exact_markers():
    """`run_multiclass_campaign.sh` names run directories after
    `cls.lower()` specifically because
    `convert_revizor_gadgets.py`'s `infer_class_from_path` treats these
    exact lowercase strings as whole-path-component markers. If this ever
    drifts, freshly produced violations silently stop being classified."""
    sys.path.insert(0, str(REPO_ROOT / "oracle" / "revizor"))
    import convert_revizor_gadgets as crg  # noqa: E402

    for cls in class_config.CLASS_CONFIG:
        assert crg._EXACT_MARKERS.get(cls.lower()) == cls
