# gen/synth/params.py
from __future__ import annotations
from dataclasses import dataclass

CLASSES = ["BENIGN", "SPECTRE_V1", "SPECTRE_V2", "SPECTRE_V4",
           "L1TF", "MDS", "RETBLEED", "INCEPTION", "BHI"]
ARCHES = ["x86_64", "arm64"]

# gem5 adjudicability (spec coverage table)
ADJUDICABLE = {
    "SPECTRE_V1": "yes", "BENIGN": "yes",
    "SPECTRE_V4": "partial", "SPECTRE_V2": "partial", "RETBLEED": "partial",
    "BHI": "no", "INCEPTION": "no", "L1TF": "no", "MDS": "no",
}

@dataclass
class GadgetParams:
    vuln_class: str
    arch: str
    secret: int          # planted secret byte (0-255)
    train_iters: int     # branch/predictor training iterations
    pad_nops: int        # nops injected into the speculation window
    reorder: bool        # swap two independent training statements
    variant_idx: int     # index within (class,arch)
