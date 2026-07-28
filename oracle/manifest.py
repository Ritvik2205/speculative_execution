from __future__ import annotations
import json
from dataclasses import dataclass, asdict, fields

@dataclass
class LeakRecord:
    program: str            # distinct PoC name (source stem)
    vuln_class: str         # SPECTRE_V1, MDS, ...
    arch: str               # x86_64 | arm64
    secret: int             # planted secret byte (0-255)
    recovered_byte: int     # byte F+R recovered (-1 = none)
    recovered_ok: bool      # recovered_byte == secret
    snr_o3: float           # SNR under speculative O3 CPU
    snr_inorder: float      # SNR under in-order control CPU
    leak_signal: float      # max(0, snr_o3 - snr_inorder)
    leak: bool              # recovered_ok and (snr_o3-snr_inorder) > TAU
    adjudicable: str        # yes | partial | no  (spec coverage table)
    status: str             # ok | unrunnable | build_failed
    gem5_version: str
    member_files: list      # asm_code/*.s stems this program covers

def write_manifest(records, path):
    with open(path, "w") as f:
        for r in records:
            f.write(json.dumps(asdict(r), sort_keys=True) + "\n")

def read_manifest(path):
    names = {fld.name for fld in fields(LeakRecord)}
    out = []
    with open(path) as f:
        for line in f:
            line = line.strip()
            if not line:
                continue
            d = json.loads(line)
            out.append(LeakRecord(**{k: d[k] for k in names}))
    return out
