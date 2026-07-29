"""Pluggable multi-oracle leak-validation framework."""
from oracle.validators.base import (
    Validator, ValidationResult, LEAK, SAFE, UNRUNNABLE, UNSUPPORTED, VERDICTS,
)
from oracle.validators.spectector_validator import SpectectorValidator
from oracle.validators.invisispec_validator import InvisiSpecValidator
from oracle.validators.cross_validate import cross_validate, summarize

__all__ = [
    "Validator", "ValidationResult", "LEAK", "SAFE", "UNRUNNABLE", "UNSUPPORTED",
    "VERDICTS", "SpectectorValidator", "InvisiSpecValidator", "cross_validate",
    "summarize",
]
