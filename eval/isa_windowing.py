#!/usr/bin/env python3
"""isa_windowing.py — inference-time windowing wrapper for out-of-distribution-ISA
functions (W5 / Task 5.3, closes audit finding R3).

The classifier is trained on short windows (v54: p90 <= 47 instructions), but
functions harvested from an OOD ISA (idiomatic RISC-V) run 40-1927 instructions.
Feeding a whole long function through the model asks it to classify graphs far
larger than anything it trained on -- a graph-size domain shift, not an ISA
gap (see docs/superpowers/... W5 audit; ad-hoc predecessor: eval/rewindow_riscv_eval.py).

This module formalizes the fix with NO retraining required:
  1. `rewindow` slices a long instruction sequence into overlapping,
     training-size windows.
  2. `predict_windowed` classifies every window, and only trusts windows whose
     top-class confidence clears `k_threshold`; it max-votes among those, and
     ABSTAINS to BENIGN when no window is confident. This is what turned the
     audit's RISC-V numbers from 0% recall / 36.7% FP (whole-function) to 27%
     recall / 8.9% FP (windowed) with the exact same, unretrained model.

Both functions are pure Python and take an injected `predict_fn` so they are
unit-testable without loading a real model or graph-building toolchain.
"""
from __future__ import annotations

import math
from collections import Counter
from typing import Callable, Optional

BENIGN = "BENIGN"

PredictFn = Callable[[list, str], "tuple[str, float]"]


def rewindow(sequence: list, target_len: int, stride: int) -> list:
    """Slice `sequence` into overlapping windows of length `target_len`.

    - A sequence with `len(sequence) <= target_len` passes through unchanged
      as a single window: `[sequence]`. This includes the empty-but-not-quite
      case (a short, non-empty sequence) -- there is nothing to slice, and
      returning it whole lets the caller (or the model's own padding) handle
      it rather than silently dropping data.
    - A genuinely empty sequence (`len(sequence) == 0`) returns `[]` (no
      windows at all) rather than `[[]]` -- there is no instruction content
      to classify, so a downstream `predict_windowed` should see zero votes
      and abstain, not manufacture a vote from nothing.
    - Otherwise, windows are taken at `0, stride, 2*stride, ...` and a final
      window is appended covering the exact tail `sequence[-target_len:]` if
      the last strided window did not already reach it -- so the very end of
      the sequence is never left unclassified even when `stride` does not
      evenly divide `len(sequence) - target_len`.

    For `len(sequence) == 200`, `target_len == 40`, `stride == 20`, this
    produces exactly `ceil((200 - 40) / 20) + 1 == 9` windows.
    """
    if target_len <= 0:
        raise ValueError("target_len must be positive")
    if stride <= 0:
        raise ValueError("stride must be positive")

    n = len(sequence)
    if n == 0:
        return []
    if n <= target_len:
        return [sequence]

    windows = []
    start = 0
    while start + target_len < n:
        windows.append(sequence[start:start + target_len])
        start += stride

    tail = sequence[n - target_len:n]
    if not windows or windows[-1] != tail:
        windows.append(tail)
    return windows


def _expected_window_count(n: int, target_len: int, stride: int) -> int:
    """Reference arithmetic used by tests: ceil((n - target_len) / stride) + 1
    for n > target_len."""
    return math.ceil((n - target_len) / stride) + 1


def predict_windowed(
    model,
    sequence: list,
    arch: str,
    target_len: int,
    k_threshold: float,
    stride: Optional[int] = None,
    predict_fn: Optional[PredictFn] = None,
    **infer_kwargs,
) -> str:
    """Classify a (possibly OOD-length) instruction sequence by windowing it
    and max-voting over confident windows.

    Policy (documented; this is the audit's R3 wrapper):
      1. Slice `sequence` into windows via `rewindow(sequence, target_len,
         stride or target_len)`.
      2. Run each window through `predict_fn(window, arch) -> (class, conf)`
         (or, if `predict_fn` is None, through the real `model` via a thin
         internal wrapper -- see `_model_predict_fn`).
      3. Keep only windows whose confidence is `>= k_threshold` ("confident"
         windows). Windows below threshold do not vote at all -- they are
         neither counted as BENIGN nor as their nominal class. This is what
         gives a single confident attack window the ability to outvote many
         *unconfident* BENIGN windows (attack sensitivity), while a genuinely
         ambiguous function (no window ever confident) abstains to BENIGN
         instead of guessing (false-positive control).
      4. Among confident windows, return the plurality (mode) class. Ties are
         broken deterministically by (a) the higher of that class's window
         confidences, then (b) class name, so the result never depends on
         dict/set iteration order.
      5. If there are zero confident windows (including the empty-sequence
         case, where there are zero windows at all), ABSTAIN by returning
         "BENIGN".
    """
    if stride is None:
        stride = target_len

    windows = rewindow(sequence, target_len, stride)
    if not windows:
        return BENIGN

    fn = predict_fn if predict_fn is not None else _model_predict_fn(model, **infer_kwargs)

    votes = []  # list of (class, confidence) for confident windows only
    for window in windows:
        cls, conf = fn(window, arch)
        if conf >= k_threshold:
            votes.append((cls, conf))

    if not votes:
        return BENIGN

    counts = Counter(cls for cls, _ in votes)
    max_count = max(counts.values())
    tied = [cls for cls, c in counts.items() if c == max_count]
    if len(tied) == 1:
        return tied[0]

    best_conf = {cls: max(conf for c, conf in votes if c == cls) for cls in tied}
    return sorted(tied, key=lambda cls: (-best_conf[cls], cls))[0]


def _model_predict_fn(model, **infer_kwargs) -> PredictFn:
    """Thin real-model wrapper used only when `predict_fn` is not injected.

    Not exercised by unit tests (no model/graph toolchain required for
    those). Left intentionally minimal: build the window's graph the same
    way `v54/train_gine_v38.py::GINEDatasetV47` does for a single record and
    run it through `model`, returning (predicted_label, softmax_confidence).
    See eval/rewindow_riscv_eval.py for the batched, checkpoint-loading
    version of this same idea used to produce the audit's measured numbers.
    """
    import torch

    label_to_id = infer_kwargs.get("label_to_id")
    id_to_label = infer_kwargs.get("id_to_label") or (
        {i: l for l, i in label_to_id.items()} if label_to_id else None
    )
    build_record = infer_kwargs.get("build_record_fn")
    device = infer_kwargs.get("device", "cpu")

    if id_to_label is None or build_record is None:
        raise ValueError(
            "predict_windowed(): no predict_fn given and the default model "
            "path needs 'label_to_id' (or 'id_to_label') and "
            "'build_record_fn' in infer_kwargs to turn a window into a "
            "single-graph model input."
        )

    def _predict(window: list, arch: str):
        batch = build_record(window, arch)
        model.eval()
        with torch.no_grad():
            out = model(*batch) if isinstance(batch, tuple) else model(batch)
            logits = out[0] if isinstance(out, (tuple, list)) else out
            probs = torch.softmax(logits, dim=-1).squeeze(0)
            conf, idx = torch.max(probs, dim=-1)
        return id_to_label[int(idx)], float(conf)

    return _predict
