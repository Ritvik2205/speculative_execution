"""Symbolic validator: wrap the Spectector oracle behind the Validator
interface. Uses the gadget's minimal analyzable victim (`spectector_source`)."""
from __future__ import annotations
from oracle.validators.base import Validator, ValidationResult, LEAK, SAFE, UNRUNNABLE
from oracle.spectector_oracle import run_spec_gadget


class SpectectorValidator(Validator):
    name = "spectector"

    def __init__(self, repo_root, versions=None, image=None,
                 versions_by_class=None, window=None, steps=None, timeout=None,
                 guard_netyield=False):
        """`versions`/`versions_by_class` select Spectector-Combined's
        `--version` mechanisms (see oracle/spectector_oracle.py). Defaults keep
        upstream behaviour: conditional branches only.

        `guard_netyield`: when True, on an UNRUNNABLE verdict that was voided
        *solely* by unsupported instructions on a would-be data/control leak,
        surface the diag ({would_be_status, uns_mnemonics}) into the result's
        details. This does NOT change the verdict -- it only exposes what the
        net-yield guard (gen/validate_netyield_guard.py) needs to decide a
        sound reclaim. Verdicts are byte-identical to the flag-off path."""
        self.repo_root = repo_root
        self.versions = versions
        self.image = image
        self.versions_by_class = versions_by_class
        # Spectector budget, passed through to run_spec_gadget (None = default).
        self.window, self.steps, self.timeout = window, steps, timeout
        self.guard_netyield = guard_netyield

    def validate(self, gadget) -> ValidationResult:
        gid, cls = gadget["gadget_id"], gadget.get("vuln_class", "UNKNOWN")
        src = gadget.get("spectector_source")
        if not src:
            return ValidationResult(self.name, gid, cls, UNRUNNABLE, 0.0,
                                    {"reason": "no spectector_source (no analyzable victim)"})
        # run_spec_gadget wants a row with gadget_id, path, vuln_class, adjudicable
        row = {"gadget_id": gid, "path": src, "vuln_class": cls,
               "adjudicable": gadget.get("adjudicable", "no")}
        versions = self.versions
        if versions is None and self.versions_by_class:
            versions = self.versions_by_class.get(cls)
        diag = {} if self.guard_netyield else None
        rec = run_spec_gadget(row, self.repo_root, versions=versions,
                              image=self.image, window=self.window,
                              steps=self.steps, timeout=self.timeout, diag_out=diag)
        if rec.status == "unrunnable":
            verdict = UNRUNNABLE
        elif rec.leak:
            verdict = LEAK
        else:
            verdict = SAFE
        details = {"status": rec.status, "adjudicable": rec.adjudicable}
        if diag:  # only populated on a would-be data/control leak voided by uns ops
            details.update(diag)
        return ValidationResult(self.name, gid, cls, verdict, float(rec.leak_signal),
                                details)
