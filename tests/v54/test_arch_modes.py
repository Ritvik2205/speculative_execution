import torch
import sys
import os

sys.path.insert(0, os.path.join(os.path.dirname(__file__), "..", "..", "v54"))

from gine_classifier_v38 import GINEClassifier, NUM_ARCHS


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


def test_drop_mode_has_no_arch_embedding_in_forward():
    m = GINEClassifier(arch_mode="drop", handcrafted_dim=58)
    out = m(**_dummy_batch())
    assert out.shape[-1] == m.classifier[-1].out_features


def test_adversarial_mode_returns_arch_logits():
    m = GINEClassifier(arch_mode="adversarial", handcrafted_dim=58)
    logits, proj, feat_aux, arch_logits = m(**_dummy_batch(), return_projection=True)
    assert arch_logits.shape[-1] == 5  # NUM_ARCHS
    assert arch_logits.shape[-1] == NUM_ARCHS


def test_embed_mode_still_returns_3_tuple_regression_guard():
    m = GINEClassifier(arch_mode="embed", handcrafted_dim=58)
    out = m(**_dummy_batch(), return_projection=True)
    assert len(out) == 3
    logits, proj, feat_aux = out
    assert logits.shape[-1] == m.classifier[-1].out_features
