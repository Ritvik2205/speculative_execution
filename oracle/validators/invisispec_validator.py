"""Execution-based validator: run a runnable F+R PoC in the InvisiSpec gem5
fork (2019 gem5 O3 + classic cache, UnsafeBaseline scheme) and read whether it
actually recovers the planted secret via speculative execution.

Unlike Spectector (symbolic proof), this is a real microarchitectural
execution: the gadget leaks only if a misspeculated load's cache footprint
survives and Flush+Reload recovers the secret byte. 2019-era gem5 O3 leaves
that footprint (unlike stock v24); the classic cache is required because Ruby
ignores clflush.
"""
from __future__ import annotations
import os
import re
import subprocess
from oracle.validators.base import Validator, ValidationResult, LEAK, SAFE, UNRUNNABLE

IMAGE = "specdiscover-invisispec:pinned"
GEM5 = "/opt/InvisiSpec/build/X86_MESI_Two_Level/gem5.opt"
SE_PY = "/opt/InvisiSpec/configs/example/se.py"

# utils.c (our synthesized + c_vulns PoCs) success/fail lines
_UTILS_SUCCESS = re.compile(r"^SUCCESS! Leaked the actual")
_UTILS_MISMATCH = re.compile(r"LEAKED VALUE DOES NOT MATCH")
_UTILS_NOLEAK = re.compile(r"^No .* leaked")
# spectre_full.c per-byte lines ("Reading at malicious_x = ... Success: 0xNN ...")
# — the marker appears mid-line, so search (not anchored match).
_FULL_SUCCESS = re.compile(r"Success: 0x[0-9A-Fa-f]+")
_FULL_UNCLEAR = re.compile(r"Unclear: 0x[0-9A-Fa-f]+")


def parse_invisispec_output(stdout: str) -> dict:
    """Classify a PoC's stdout. Returns {leaked, n_success, n_attempts, style}.

    Handles both the utils.c harness ("SUCCESS! Leaked the actual ...") and the
    spectre_full byte-recovery harness ("Success: 0xNN ..."). leaked=True iff at
    least one byte/secret was recovered and none of the no-leak markers dominate.
    """
    n_success = 0
    n_attempts = 0
    style = "unknown"
    utils_success = utils_mismatch = utils_noleak = False
    for line in stdout.splitlines():
        line = line.strip()
        if _FULL_SUCCESS.search(line):
            n_success += 1
            n_attempts += 1
            style = "spectre_full"
        elif _FULL_UNCLEAR.search(line):
            n_attempts += 1
            style = "spectre_full"
        elif _UTILS_SUCCESS.match(line):
            utils_success = True
            style = "utils"
        elif _UTILS_MISMATCH.search(line):
            utils_mismatch = True
            style = "utils"
        elif _UTILS_NOLEAK.match(line):
            utils_noleak = True
            style = "utils"

    if style == "utils":
        leaked = utils_success and not (utils_mismatch or utils_noleak) or utils_success
        return {"leaked": bool(utils_success), "n_success": 1 if utils_success else 0,
                "n_attempts": 1, "style": "utils"}
    if style == "spectre_full":
        return {"leaked": n_success > 0, "n_success": n_success,
                "n_attempts": n_attempts, "style": "spectre_full"}
    return {"leaked": False, "n_success": 0, "n_attempts": 0, "style": "unknown"}


class InvisiSpecValidator(Validator):
    name = "invisispec"

    def __init__(self, repo_root, timeout=1800):
        self.repo_root = repo_root
        self.timeout = timeout

    def _run(self, gadget) -> subprocess.CompletedProcess:
        rel = os.path.relpath(gadget["execution_source"], self.repo_root)
        gid = gadget["gadget_id"]
        out_bin = f"/work/oracle/build/{gid}.invisi"
        # compile static x86 (harness uses x86 intrinsics), then run in the
        # leaky classic-cache UnsafeBaseline config that recovers the secret.
        script = (
            f"mkdir -p /work/oracle/build && "
            f"x86_64-linux-gnu-gcc -O0 -static -I /work/c_vulns/c_code "
            f"-o {out_bin} /work/{rel} 2>/work/oracle/build/{gid}.cc.err && "
            f"{GEM5} --outdir=/tmp/o_{gid} {SE_PY} --num-cpus=1 --mem-size=4GB "
            f"--cpu-type=DerivO3CPU --needsTSO=0 --scheme=UnsafeBaseline "
            f"--caches --l2cache --l1d_size=64kB --l1i_size=16kB --l2_size=2MB "
            f"-c {out_bin}"
        )
        return subprocess.run(
            ["docker", "run", "--rm", "-v", f"{self.repo_root}:/work", IMAGE, "bash", "-c", script],
            capture_output=True, text=True, timeout=self.timeout,
        )

    def validate(self, gadget) -> ValidationResult:
        gid, cls = gadget["gadget_id"], gadget.get("vuln_class", "UNKNOWN")
        if not gadget.get("execution_source"):
            return ValidationResult(self.name, gid, cls, UNRUNNABLE, 0.0,
                                    {"reason": "no execution_source (not a runnable PoC)"})
        try:
            r = self._run(gadget)
        except subprocess.TimeoutExpired:
            return ValidationResult(self.name, gid, cls, UNRUNNABLE, 0.0, {"reason": "timeout"})
        except Exception as e:  # docker/io error
            return ValidationResult(self.name, gid, cls, UNRUNNABLE, 0.0, {"reason": str(e)})
        if r.returncode != 0:
            return ValidationResult(self.name, gid, cls, UNRUNNABLE, 0.0,
                                    {"reason": "compile/run failed", "stderr_tail": r.stderr[-300:]})
        info = parse_invisispec_output(r.stdout)
        verdict = LEAK if info["leaked"] else SAFE
        signal = float(info["n_success"])
        return ValidationResult(self.name, gid, cls, verdict, signal, info)
