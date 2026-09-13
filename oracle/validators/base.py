"""Pluggable validator interface for the Phase 4 leak-oracle framework.

A Validator takes a gadget descriptor and returns a ValidationResult with a
verdict. Multiple validators (symbolic Spectector, execution InvisiSpec, ...)
implement the same interface so their verdicts can be cross-checked on the
same gadgets — agreement between an independent symbolic proof and a real
speculative-execution run is far stronger evidence than either alone.
"""
from __future__ import annotations
from dataclasses import dataclass, field, asdict


# Verdict vocabulary shared by every validator.
LEAK = "leak"            # confirmed speculative leak
SAFE = "safe"            # no leak found / proven non-interferent
UNRUNNABLE = "unrunnable"  # could not be built/run/analyzed
UNSUPPORTED = "unsupported"  # oracle cannot model this gadget's mechanism
VERDICTS = {LEAK, SAFE, UNRUNNABLE, UNSUPPORTED}


@dataclass
class ValidationResult:
    validator: str          # validator name, e.g. "spectector" / "invisispec"
    gadget_id: str
    vuln_class: str
    verdict: str            # one of VERDICTS
    signal: float           # continuous strength proxy (0.0 if not a leak)
    details: dict = field(default_factory=dict)

    def __post_init__(self):
        if self.verdict not in VERDICTS:
            raise ValueError(f"invalid verdict {self.verdict!r}; expected one of {sorted(VERDICTS)}")

    def to_dict(self):
        return asdict(self)


class Validator:
    """Base class. Subclasses set `name` and implement `validate`."""

    name = "base"

    def validate(self, gadget: dict) -> ValidationResult:
        """Return a ValidationResult for one gadget descriptor (a dict with at
        least gadget_id, vuln_class, and a source path). Must never raise for a
        merely-bad gadget — return UNRUNNABLE/UNSUPPORTED instead."""
        raise NotImplementedError
