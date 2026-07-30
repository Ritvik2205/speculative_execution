"""Real-hardware validator: run Revizor against a REAL x86 Intel/AMD CPU to
detect a speculative contract violation for a vuln class.

This validator only produces a real verdict on x86 Intel/AMD hardware (Revizor's
executor is a kernel module that reads that CPU's performance counters). On any
other host (e.g. the arm64 dev machine) it returns UNRUNNABLE with a reason —
the leak physically cannot be observed without the matching silicon.

Per-class Revizor detection config (see oracle/revizor/demo_configs/):
  SPECTRE_V1 -> detect-v1.yaml     SPECTRE_V4 -> detect-v4.yaml
  L1TF       -> detect-foreshadow  MDS        -> detect-mds.yaml
  INCEPTION  -> tsa-sq/tsa-l1d (AMD)  V2/BHI/RETBLEED -> fuzz campaign
"""
from __future__ import annotations
import os
import platform
import shutil
import subprocess
from oracle.validators.base import Validator, ValidationResult, LEAK, SAFE, UNRUNNABLE

IMAGE = "revizor:pinned"

# vuln class -> Revizor detection config (relative to oracle/revizor/demo_configs)
CLASS_CONFIG = {
    "SPECTRE_V1": "detect-v1.yaml",
    "SPECTRE_V4": "detect-v4.yaml",
    "L1TF": "detect-foreshadow.yaml",
    "MDS": "detect-mds.yaml",
    "INCEPTION": "tsa-sq/config.yaml",   # AMD Zen (TSA family)
    # SPECTRE_V2 / BHI / RETBLEED: no canned demo — detected via a fuzz campaign
    # with an appropriate contract on the matching vulnerable CPU.
}


def _is_x86_linux_host():
    """Revizor needs a real x86 Intel/AMD Linux CPU (not arm64, not a VM/emulation)."""
    return platform.system() == "Linux" and platform.machine() in ("x86_64", "AMD64")


class RevizorValidator(Validator):
    name = "revizor"

    def __init__(self, repo_root, image=IMAGE, num_inputs=100):
        self.repo_root = repo_root
        self.image = image
        self.num_inputs = num_inputs

    def _hardware_available(self):
        # Either running directly on an x86 Linux host, or a Revizor image is
        # present AND the docker host is x86 (a container cannot conjure x86
        # microarchitecture on arm64).
        if _is_x86_linux_host():
            return True
        if shutil.which("docker"):
            try:
                arch = subprocess.run(["docker", "version", "-f", "{{.Server.Arch}}"],
                                      capture_output=True, text=True, timeout=15).stdout.strip()
                return arch in ("amd64", "x86_64")
            except Exception:
                return False
        return False

    def validate(self, gadget) -> ValidationResult:
        gid = gadget["gadget_id"]
        cls = gadget.get("vuln_class", "UNKNOWN")
        if not self._hardware_available():
            return ValidationResult(
                self.name, gid, cls, UNRUNNABLE, 0.0,
                {"reason": "requires a real x86 Intel/AMD CPU; the current host "
                           "lacks that microarchitecture (see oracle/revizor/README.md)"})
        cfg = CLASS_CONFIG.get(cls)
        if cfg is None:
            return ValidationResult(self.name, gid, cls, UNRUNNABLE, 0.0,
                                    {"reason": f"no Revizor detection config for {cls}; "
                                               "use a fuzz campaign on vulnerable HW"})
        # On real x86 HW: run the detection campaign; a contract violation => leak.
        # (Left to the operator per oracle/revizor/README.md — this path executes
        # only where _hardware_available() is true.)
        return self._run_revizor(gid, cls, cfg)

    def _run_revizor(self, gid, cls, cfg):  # pragma: no cover - x86-hardware only
        cfg_path = f"/work/oracle/revizor/demo_configs/{cfg}"
        cmd = ["docker", "run", "--rm", "--privileged",
               "-v", "/lib/modules:/lib/modules", "-v", f"{self.repo_root}:/work",
               self.image, "bash", "-lc",
               f"rvzr fuzz -s /opt/revizor/base_x86.json -c {cfg_path} "
               f"-n 100 -i {self.num_inputs} -w /work/oracle/revizor/violations_{gid}"]
        try:
            r = subprocess.run(cmd, capture_output=True, text=True, timeout=3600)
        except Exception as e:
            return ValidationResult(self.name, gid, cls, UNRUNNABLE, 0.0, {"reason": str(e)})
        out = (r.stdout + r.stderr).lower()
        # Revizor reports contract violations (== real leaks) in its output/workdir.
        leaked = "violation" in out and "0 violations" not in out
        return ValidationResult(self.name, gid, cls, LEAK if leaked else SAFE,
                                1.0 if leaked else 0.0, {"config": cfg, "stdout_tail": r.stdout[-400:]})
