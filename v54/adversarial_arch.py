#!/usr/bin/env python3
"""
Gradient-reversal architecture adversary (DANN) for the v54 GINE classifier.

Task 3.1 of the research-hardening plan: make the fused representation that
feeds the classifier architecture-INVARIANT by training an auxiliary
arch-discriminator through a gradient-reversal layer. The discriminator tries
to predict the ISA (x86_64/arm64/arm32/riscv64/unknown) from the fused
`combined` vector; gradient reversal flips the sign of its gradient on the
way back into the encoder, so the encoder is pushed to make `combined`
*uninformative* about arch instead of informative.

See `v54/gine_classifier_v38.py` (`GINEClassifier(arch_mode="adversarial")`)
and `v54/train_gine_v38.py` (`--arch-mode adversarial`) for the wiring.
"""

import torch
import torch.nn as nn


class GradReverse(torch.autograd.Function):
    """Identity on the forward pass; negates (and scales) the gradient on backward.

    This is the standard gradient-reversal-layer trick from Ganin & Lempitsky's
    DANN paper: it lets a single optimizer step train the encoder to *minimize*
    the discriminator's ability to predict the domain (arch) label, while the
    discriminator itself is trained normally (as if `lambda_` were 1 for it).
    """

    @staticmethod
    def forward(ctx, x, lambda_):
        ctx.lambda_ = lambda_
        return x.view_as(x)

    @staticmethod
    def backward(ctx, grad_output):
        return -ctx.lambda_ * grad_output, None


def grad_reverse(x, lambda_=1.0):
    """Apply the gradient-reversal layer to `x` with reversal strength `lambda_`."""
    return GradReverse.apply(x, lambda_)


class ArchDiscriminator(nn.Module):
    """Small MLP head: fused representation -> per-arch logits.

    Linear -> ReLU -> Linear, matching the plan's spec. Intended to be fed the
    SAME `combined` vector that feeds the main classifier, passed through
    `grad_reverse` first.
    """

    def __init__(self, in_dim: int, num_archs: int, hidden: int = 64):
        super().__init__()
        self.net = nn.Sequential(
            nn.Linear(in_dim, hidden),
            nn.ReLU(),
            nn.Linear(hidden, num_archs),
        )

    def forward(self, x):
        return self.net(x)
