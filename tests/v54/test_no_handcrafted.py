import torch
import sys
import os

sys.path.insert(0, os.path.join(os.path.dirname(__file__), "..", "..", "v54"))

from gine_classifier_v38 import GINEClassifier


def _dummy_batch(B=4, N=8, E=12, d=41):
    return dict(
        node_features=torch.randn(B, N, d),
        edge_index=torch.zeros(B, 2, E, dtype=torch.long),
        edge_type=torch.zeros(B, E, dtype=torch.long),
        node_mask=torch.ones(B, N, dtype=torch.bool),
        handcrafted_features=torch.randn(B, 58),
        global_features=torch.randn(B, 5),
        arch_id=torch.zeros(B, dtype=torch.long),
    )


def test_no_handcrafted_forward_runs():
    m = GINEClassifier(use_handcrafted=False, handcrafted_dim=58)
    out = m(**_dummy_batch())
    assert out.shape[-1] == m.classifier[-1].out_features


def test_no_handcrafted_drops_fusion_dim_from_combined():
    fusion_dim = 256
    m_on = GINEClassifier(use_handcrafted=True, handcrafted_dim=58)
    m_off = GINEClassifier(use_handcrafted=False, handcrafted_dim=58)

    assert m_on.classifier[0].in_features == m_on.combined_dim
    assert m_off.classifier[0].in_features == m_off.combined_dim
    assert m_on.combined_dim - m_off.combined_dim == fusion_dim


def test_no_handcrafted_has_no_feature_branch_modules():
    m = GINEClassifier(use_handcrafted=False, handcrafted_dim=58)
    assert not hasattr(m, "feature_encoder")
    assert not hasattr(m, "feature_aux_head")


def test_no_handcrafted_return_projection_gives_zero_scalar_aux():
    m = GINEClassifier(use_handcrafted=False, handcrafted_dim=58)
    out = m(**_dummy_batch(), return_projection=True)
    assert len(out) == 3
    logits, proj, feat_aux_logits = out
    assert feat_aux_logits.shape == ()
    assert torch.equal(feat_aux_logits, torch.zeros(()))


def test_use_handcrafted_default_true_unchanged():
    """Default behavior must be byte-for-byte the current model (shipped
    checkpoints + the W2 result depend on it)."""
    m = GINEClassifier(handcrafted_dim=58)
    assert m.use_handcrafted is True
    assert hasattr(m, "feature_encoder")
    assert hasattr(m, "feature_aux_head")

    fusion_dim = 256
    global_repr_dim = 32
    arch_emb_dim = 8
    expected_combined_dim = fusion_dim * 2 + global_repr_dim + arch_emb_dim
    assert m.combined_dim == expected_combined_dim

    out = m(**_dummy_batch(), return_projection=True)
    assert len(out) == 3
    logits, proj, feat_aux_logits = out
    assert feat_aux_logits.shape[-1] == m.classifier[-1].out_features


def test_no_handcrafted_composes_with_adversarial_arch_mode():
    """Task 3.3 runs the 2x2 grid: use_handcrafted x arch_mode must compose."""
    m = GINEClassifier(use_handcrafted=False, arch_mode="adversarial", handcrafted_dim=58)
    out = m(**_dummy_batch(), return_projection=True)
    assert len(out) == 4
    logits, proj, feat_aux_logits, arch_logits = out
    assert feat_aux_logits.shape == ()
    assert arch_logits.shape[-1] == 5
    assert logits.shape[-1] == m.classifier[-1].out_features
