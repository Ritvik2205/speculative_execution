"""Detector task for step 6 (docs/NEXT_STEPS_2026-11-10.md): two outputs
instead of one 9-way softmax.

  leak       LEAK / SAFE
  mechanism  only where it is a property of the code. Classes that the
             shared-config hardware campaign showed are set by the Revizor
             contract rather than the code (MDS vs L1TF) are merged, as are
             the three return-predictor classes and the two indirect-branch
             ones.
"""
MECHANISM = {
    "SPECTRE_V1": "COND_BRANCH",
    "SPECTRE_V2": "INDIRECT_BRANCH",
    "BRANCH_HISTORY_INJECTION": "INDIRECT_BRANCH",
    "BHI": "INDIRECT_BRANCH",
    "RETBLEED": "RETURN",
    "INCEPTION": "RETURN",
    "SPECTRE_RSB": "RETURN",
    "SPECTRE_V4": "STORE_BYPASS",
    "MDS": "FAULTING_LOAD",
    "L1TF": "FAULTING_LOAD",
    "BENIGN": None,
}
MECHANISMS = sorted({m for m in MECHANISM.values() if m})


def mechanism(label: str):
    return MECHANISM[label]


def leak_label(label: str) -> str:
    return "SAFE" if MECHANISM[label] is None else "LEAK"
