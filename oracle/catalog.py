from __future__ import annotations
import os, glob
from dataclasses import dataclass

# order matters: check longer/more-specific keys first
_CLASS_KEYS = [
    ("spectre_1", "SPECTRE_V1"),
    ("spectre_v1", "SPECTRE_V1"),
    ("spectre_2", "SPECTRE_V2"),
    ("spectre_v2", "SPECTRE_V2"),
    ("spectre_4", "SPECTRE_V4"),
    ("spectre_v4", "SPECTRE_V4"),
    ("retbleed", "RETBLEED"),
    ("inception", "INCEPTION"),
    ("meltdown", "L1TF"),   # meltdown PoCs exercise the L1TF terminal-fault path in this corpus
    ("l1tf", "L1TF"),
    ("mds", "MDS"),
    ("downfall", "MDS"),    # GDS/Downfall grouped under MDS-family transient forwarding
    ("bhi", "BHI"),
    ("benign", "BENIGN"),
]

def classify(filename: str) -> tuple[str, str]:
    stem = os.path.basename(filename)
    low = stem.lower()
    arch = "arm64" if ("arm64" in low or "_arm" in low) else "x86_64"
    for key, cls in _CLASS_KEYS:
        if key in low:
            return cls, arch
    return "UNKNOWN", arch

@dataclass
class Program:
    name: str
    source_path: str
    vuln_class: str
    arch: str
    member_files: list

def _stem(path: str) -> str:
    return os.path.splitext(os.path.basename(path))[0]

def catalog_programs(c_code_dir: str, asm_dir: str) -> list[Program]:
    asm_by_stem = {}
    for s in glob.glob(os.path.join(asm_dir, "*.s")):
        base = _stem(s)
        # a .s belongs to program P if its stem starts with P's stem
        asm_by_stem[base] = os.path.basename(s)
    asm_files = [os.path.basename(s) for s in glob.glob(os.path.join(asm_dir, "*.s"))]

    progs = []
    for src in sorted(glob.glob(os.path.join(c_code_dir, "*.c"))):
        name = _stem(src)
        if name == "utils":
            continue
        cls, arch = classify(os.path.basename(src))
        members = [f for f in asm_files if _stem(f) == name or _stem(f).startswith(name + "_")]
        progs.append(Program(name=name, source_path=src, vuln_class=cls,
                             arch=arch, member_files=sorted(members)))
    return progs
