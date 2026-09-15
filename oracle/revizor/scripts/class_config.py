#!/usr/bin/env python3
"""oracle/revizor/scripts/class_config.py — class -> Revizor demo-config
mapping shared by `run_multiclass_campaign.sh` and its tests.

Growing the real-hardware gadget corpus (see
`.superpowers/sdd/2026-09-07-specexec-research-grade-plan/`) needs one
`rvzr fuzz` demo config per vulnerability class. This module is the single
source of truth for that mapping so the shell driver and the test suite
can't drift apart.

Config filenames are relative to `oracle/revizor/demo_configs/`.

NOTE on directory naming: the class key's lowercased form (`spectre_v4`,
`mds`, `l1tf`, `spectre_v1`) is also the exact marker
`oracle/revizor/convert_revizor_gadgets.py`'s `infer_class_from_path` looks
for as a whole path component. `run_multiclass_campaign.sh` names its run
directories `$CAMPAIGN_ROOT/<class-lower>/<seed>/` for exactly this reason
-- so the existing converter can classify freshly produced violations
without modification.
"""
from __future__ import annotations

import argparse
import sys
from typing import List, Optional

CLASS_CONFIG = {
    "SPECTRE_V4": "detect-v4.yaml",
    "MDS": "detect-mds.yaml",
    "L1TF": "detect-foreshadow.yaml",
    "SPECTRE_V1": "detect-v1.yaml",
}

DEFAULT_CLASSES = list(CLASS_CONFIG.keys())


def config_for(cls: str) -> str:
    """Return the demo-config filename for `cls` (case-insensitive).
    Raises KeyError with the known-classes list if `cls` isn't mapped."""
    key = cls.upper()
    if key not in CLASS_CONFIG:
        raise KeyError(
            f"no demo config mapped for class {cls!r}; known classes: "
            f"{sorted(CLASS_CONFIG)}"
        )
    return CLASS_CONFIG[key]


def main(argv: Optional[List[str]] = None) -> int:
    ap = argparse.ArgumentParser(description=__doc__)
    ap.add_argument("--bash", action="store_true",
                     help="print a `declare -A CLASS_CONFIG=(...)` snippet "
                          "for `eval \"$(...)\"` in the shell driver")
    ap.add_argument("--get", default=None,
                     help="print just this one class's config filename")
    args = ap.parse_args(argv)

    if args.get is not None:
        try:
            print(config_for(args.get))
        except KeyError as exc:
            print(str(exc), file=sys.stderr)
            return 1
        return 0

    if args.bash:
        print("declare -A CLASS_CONFIG=(")
        for k, v in CLASS_CONFIG.items():
            print(f'  ["{k}"]="{v}"')
        print(")")
        return 0

    for k, v in CLASS_CONFIG.items():
        print(f"{k} {v}")
    return 0


if __name__ == "__main__":
    sys.exit(main(sys.argv[1:]))
