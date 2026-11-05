"""hybrid.py — re-registered mechanism rule (v2, tag mech-rule-frozen-v2).

Registered 2026-11-04 after the held-out counterfactual labels showed the
frozen mode "all" over-calling SPECTRE_V4: on hardware any fence between the
store and the bypassing load stops SSB (38/38 V4 cf_nonleak + cf_after_bypass
mitigate), but V4 programs open many store windows and "all" needs every one
cut. v2 = mode "any" for V4, the frozen "all" for every other class.

This choice was made AFTER seeing eval/data/revizor_hwlabel_cf_heldout.jsonl,
so its score there is exploratory. Its test set is the training-pool
counterfactuals (eval/data/revizor_hwlabel_trainpool.jsonl), unlabelled when
this was frozen. spec_window.py is not modified (H1 freeze stays valid).
Plan: docs/superpowers/plans/2026-11-02-mechanism-vs-shape.md (H1b).
"""
from __future__ import annotations

from typing import Optional

from eval.mechanism.spec_window import FROZEN_MODE, mechanism_pred

HYBRID_MODES = {"SPECTRE_V4": "any"}


def hybrid_pred(rec: dict) -> Optional[str]:
    cls = rec.get("vuln_class") or rec["label"]
    return mechanism_pred(rec, mode=HYBRID_MODES.get(cls, FROZEN_MODE))
