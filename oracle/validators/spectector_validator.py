"""Symbolic validator: wrap the Spectector oracle behind the Validator
interface. Uses the gadget's minimal analyzable victim (`spectector_source`)."""
from __future__ import annotations
from oracle.validators.base import Validator, ValidationResult, LEAK, SAFE, UNRUNNABLE
from oracle.spectector_oracle import run_spec_gadget


class SpectectorValidator(Validator):
    name = "spectector"

    def __init__(self, repo_root, versions=None, image=None,
                 versions_by_class=None):
        """`versions`/`versions_by_class` select Spectector-Combined's
        `--version` mechanisms (see oracle/spectector_oracle.py). Defaults keep
        upstream behaviour: conditional branches only."""
        self.repo_root = repo_root
        self.versions = versions
        self.image = image
        self.versions_by_class = versions_by_class

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
        rec = run_spec_gadget(row, self.repo_root, versions=versions,
                              image=self.image)
        if rec.status == "unrunnable":
            verdict = UNRUNNABLE
        elif rec.leak:
            verdict = LEAK
        else:
            verdict = SAFE
        return ValidationResult(self.name, gid, cls, verdict, float(rec.leak_signal),
                                {"status": rec.status, "adjudicable": rec.adjudicable})
