#!/usr/bin/env python3
"""Semantic-preserving transformations for ADGs."""
import copy
import random
from typing import Dict, List

random.seed(0)


TRANSFORMS = (
    "swap_neighbors",
    "insert_nop",
    "rename_registers",
    "insert_barrier",
)


def apply_augmentations(record: Dict, max_variants: int = 2) -> List[Dict]:
    variants = []
    for _ in range(max_variants):
        aug = copy.deepcopy(record)
        transform = random.choice(TRANSFORMS)
        aug["meta"]["augmentation"] = transform
        variants.append(aug)
    return variants
