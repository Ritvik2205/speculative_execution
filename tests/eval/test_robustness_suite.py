import json, subprocess, sys
from pathlib import Path
from eval.robustness_suite import evaluate_checkpoint  # noqa

def test_shortcut_detector_collapses_under_neutralization(tmp_path, monkeypatch):
    # A stub "model" that predicts MDS iff 'verw' present must lose recall when masked.
    from eval.robustness_suite import _apply_perturbation
    recs = [{"label":"MDS","arch":"x86_64","sequence":["verw %ax","mov %rax,%rbx","ret"]}]
    perturbed = _apply_perturbation(recs, "trigger_masked")
    assert not any("verw" in l for l in perturbed[0]["sequence"])


def _synthetic_ckpt(model_state_dict, label_to_id, feature_names, extra_args=None):
    args = {
        "hidden_dim": 128, "num_layers": 3, "jk_mode": "cat",
        "arch_emb_dim": 8, "dropout": 0.5, "no_virtual_node": False,
        "node_feature_mode": "hand", "use_spec_builder": False,
        "speculative_window": 20, "no_strip": False,
    }
    args.update(extra_args or {})
    return {
        "label_to_id": label_to_id,
        "feature_names": feature_names,
        "args": args,
        "model_state_dict": model_state_dict,
    }


def test_build_model_reconstructs_w3_adversarial_no_handcrafted_checkpoint():
    """Regression test for the W3 checkpoint-loading bug: a checkpoint saved
    with --arch-mode adversarial --no-handcrafted must rebuild with those
    flags (not the embed/handcrafted defaults), else load_state_dict fails
    with a combined_dim size mismatch (288/296 saved vs 552 rebuilt)."""
    import torch
    from eval.robustness_suite import _build_model, _NODE_BASE_DIM, _NODE_POS_DIM, _GLOBAL_FEAT_DIM
    from gine_classifier_v38 import GINEClassifier
    from pdg_builder import NUM_EDGE_TYPES

    label_to_id = {"BENIGN": 0, "MDS": 1}
    feature_names = [f"f{i}" for i in range(58)]
    node_feat_dim = _NODE_BASE_DIM + _NODE_POS_DIM

    # What train_gine_v38.py actually produces for `--arch-mode adversarial
    # --no-handcrafted`.
    ref_model = GINEClassifier(
        node_feat_dim=node_feat_dim,
        num_edge_types=NUM_EDGE_TYPES,
        hidden_dim=128,
        num_layers=3,
        num_classes=len(label_to_id),
        handcrafted_dim=max(len(feature_names), 1),
        global_feat_dim=_GLOBAL_FEAT_DIM,
        arch_emb_dim=8,
        dropout=0.5,
        use_virtual_node=True,
        jk_mode="cat",
        arch_mode="adversarial",
        use_handcrafted=False,
    )

    ckpt = _synthetic_ckpt(
        ref_model.state_dict(), label_to_id, feature_names,
        extra_args={"arch_mode": "adversarial", "no_handcrafted": True},
    )

    # Before the fix this raises a state_dict size-mismatch RuntimeError
    # because _build_model always rebuilt with arch_mode="embed",
    # use_handcrafted=True regardless of what the checkpoint's args say.
    model, _, _, _ = _build_model(ckpt, torch.device("cpu"))

    assert model.arch_mode == "adversarial"
    assert model.use_handcrafted is False
    assert model.combined_dim == ref_model.combined_dim


def test_build_model_defaults_old_checkpoint_to_embed_handcrafted():
    """A checkpoint saved before W3 (no arch_mode/no_handcrafted keys in
    args) must still rebuild as the original embed + handcrafted model."""
    import torch
    from eval.robustness_suite import _build_model, _NODE_BASE_DIM, _NODE_POS_DIM, _GLOBAL_FEAT_DIM
    from gine_classifier_v38 import GINEClassifier
    from pdg_builder import NUM_EDGE_TYPES

    label_to_id = {"BENIGN": 0, "MDS": 1}
    feature_names = [f"f{i}" for i in range(58)]
    node_feat_dim = _NODE_BASE_DIM + _NODE_POS_DIM

    ref_model = GINEClassifier(
        node_feat_dim=node_feat_dim,
        num_edge_types=NUM_EDGE_TYPES,
        hidden_dim=128,
        num_layers=3,
        num_classes=len(label_to_id),
        handcrafted_dim=max(len(feature_names), 1),
        global_feat_dim=_GLOBAL_FEAT_DIM,
        arch_emb_dim=8,
        dropout=0.5,
        use_virtual_node=True,
        jk_mode="cat",
        # arch_mode/use_handcrafted left at their GINEClassifier defaults
        # ("embed" / True), matching a pre-W3 checkpoint.
    )

    ckpt = _synthetic_ckpt(ref_model.state_dict(), label_to_id, feature_names)
    # No "arch_mode"/"no_handcrafted" keys at all — old-checkpoint case.

    model, _, _, _ = _build_model(ckpt, torch.device("cpu"))

    assert model.arch_mode == "embed"
    assert model.use_handcrafted is True
    assert model.combined_dim == ref_model.combined_dim
