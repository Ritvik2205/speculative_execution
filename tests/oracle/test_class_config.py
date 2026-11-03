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


# ---------------------------------------------------------------------------
# shared-config overlay
# ---------------------------------------------------------------------------

def _keys_and_categories(text):
    keys = [l.split(":")[0] for l in text.splitlines() if l and l[0].isalpha()]
    cats, inside = [], False
    for l in text.splitlines():
        if l.startswith("instruction_categories:"):
            inside = True
            continue
        if inside and l.strip().startswith("- "):
            cats.append(l.strip()[2:])
        elif inside:
            inside = False
    return keys, cats


@pytest.mark.parametrize("cls", sorted(REQUIRED_CLASSES))
def test_shared_overlay_one_instruction_set_and_shape(cls):
    base = (DEMO_CONFIGS_DIR / class_config.CLASS_CONFIG[cls]).read_text()
    keys, cats = _keys_and_categories(class_config.shared_overlay(base, cls))
    for k in class_config.SHARED_KEYS:
        assert keys.count(k) <= 1, f"{k} duplicated"
    for k in ("max_bb_per_function", "min_successors_per_bb"):
        assert k not in keys
    expected = class_config.SHARED_CATEGORIES + (["BASE-COND_BR"] if cls == "SPECTRE_V1" else [])
    assert cats == expected


@pytest.mark.parametrize("cls", sorted(REQUIRED_CLASSES))
def test_shared_overlay_keeps_class_defining_keys(cls):
    base = (DEMO_CONFIGS_DIR / class_config.CLASS_CONFIG[cls]).read_text()
    out = class_config.shared_overlay(base, cls)
    for key in ("contract_observation_clause", "contract_execution_clause", "actors",
                "x86_executor_enable_ssbp_patch", "program_generator_seed"):
        for line in base.splitlines():
            if line.startswith(key + ":"):
                assert line in out.splitlines()
    if "actors:" in base:  # the page-property block (MDS/L1TF) survives intact
        block = base[base.index("actors:"):].split("\nenable_")[0]
        assert block in out
