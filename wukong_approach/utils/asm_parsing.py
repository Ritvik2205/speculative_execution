#!/usr/bin/env python3
"""Utility helpers for parsing assembly windows into structured records."""
from __future__ import annotations

import json
import re
from pathlib import Path
from typing import Dict, Iterable, Iterator, List

BRACKET_REG_RE = re.compile(r"\[([^\]]+)\]")
REGISTER_RE = re.compile(r"%?([a-zA-Z][a-zA-Z0-9]*)")


def load_instruction_windows(path: Path) -> Iterator[Dict]:
    """Yield JSON objects representing assembly windows."""
    with path.open() as f:
        for line in f:
            line = line.strip()
            if not line:
                continue
            yield json.loads(line)


def normalize_operand(op: str) -> str:
    op = op.strip()
    match = REGISTER_RE.match(op)
    if match:
        return match.group(1).lower()
    bracket = BRACKET_REG_RE.search(op)
    if bracket:
        return bracket.group(1).lower()
    return op.lower()


def extract_registers(operand: str) -> List[str]:
    return [normalize_operand(x) for x in REGISTER_RE.findall(operand)]


def extract_memory_bases(operands: Iterable[str]) -> List[str]:
    bases: List[str] = []
    for op in operands:
        bracket = BRACKET_REG_RE.search(op)
        if bracket:
            bases.append(normalize_operand(bracket.group(1)))
    return bases
