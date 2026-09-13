from __future__ import annotations
import re
from dataclasses import dataclass

_LINE = re.compile(r"^LINE\s+(\d+)\s+(-?\d+)\s*$")
_ASCII = re.compile(r"\(ASCII\s+(\d+)\)")
_ACTUAL = re.compile(r"^Actual secret data:\s*(.)")
_SUCCESS = re.compile(r"^SUCCESS!")

@dataclass
class PocResult:
    latencies: list      # len 256, nan where unseen
    recovered_byte: int  # -1 if none
    success: bool
    actual_secret: int   # -1 if absent

def parse_poc_output(stdout: str) -> PocResult:
    lat = [float("nan")] * 256
    recovered = -1
    success = False
    actual = -1
    for line in stdout.splitlines():
        line = line.strip()
        m = _LINE.match(line)
        if m:
            idx = int(m.group(1))
            if 0 <= idx < 256:
                lat[idx] = float(m.group(2))
            continue
        if line.startswith("Leaked"):
            a = _ASCII.search(line)
            if a:
                recovered = int(a.group(1))
            continue
        if _SUCCESS.match(line):
            success = True
            continue
        a = _ACTUAL.match(line)
        if a:
            actual = ord(a.group(1))
    return PocResult(latencies=lat, recovered_byte=recovered,
                     success=success, actual_secret=actual)
