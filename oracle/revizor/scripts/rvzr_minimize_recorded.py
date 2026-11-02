#!/usr/bin/env python3
"""`rvzr minimize`, but replaying a violation's RECORDED inputs.

`rvzr minimize` always regenerates its inputs from the data seed
(rvzr/postprocessing/minimizer.py: `inputs = data_gen.generate(n_inputs)`) and
has no flag to load the violation's saved `input_*.bin`. Regenerated inputs
almost never re-trigger the leak, so on the i5-8300H 169/173 violation dirs
died at "[PASS 1] Could not reproduce the violation" -- while `rvzr reproduce
-i input_*.bin` on the same dirs reproduces them. This wrapper makes the
minimizer's one input-generation call return `data_gen.load(<recorded paths>)`
(the loader `reproduce -i` uses) and otherwise runs the stock CLI unchanged.

Run with the sca-fuzzer venv python (it imports rvzr):
    ~/sca-fuzzer/venv/bin/python3 rvzr_minimize_recorded.py \
        --inputs <dir>/input_*.bin -- <rvzr minimize args ...>
`-i/--num-inputs` in the minimize args is ignored for input loading (every
recorded input is used); pass any value, e.g. the file count.
"""
import sys
from typing import List

from rvzr.cli import main as rvzr_main
from rvzr.postprocessing.minimizer import Minimizer


def patch_minimizer(paths: List[str]) -> None:
    orig_run = Minimizer.run

    def run(self, *args, **kwargs):
        dg = self._fuzzer.data_gen
        orig_generate = dg.generate

        def generate_once(count, n_actors):
            dg.generate = orig_generate          # only the initial call is replaced
            return dg.load(paths)

        dg.generate = generate_once
        try:
            return orig_run(self, *args, **kwargs)
        finally:
            dg.generate = orig_generate

    Minimizer.run = run


def main(argv: List[str]) -> int:
    if "--" not in argv or argv[0] != "--inputs":
        sys.exit("usage: rvzr_minimize_recorded.py --inputs <input_*.bin ...> -- <rvzr minimize args>")
    sep = argv.index("--")
    paths, rest = argv[1:sep], argv[sep + 1:]
    if not paths:
        sys.exit("rvzr_minimize_recorded.py: no input files given")
    patch_minimizer(sorted(paths))
    sys.argv = ["rvzr", "minimize", *rest]
    return rvzr_main()


if __name__ == "__main__":
    sys.exit(main(sys.argv[1:]))
