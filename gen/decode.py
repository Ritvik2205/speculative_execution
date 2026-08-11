#!/usr/bin/env python3
"""
decode.py — sample gadgets from the trained generator, realize to concrete
assembly, and check PDG-parseability (Phase 2 output demo).

Run:  python3 gen/decode.py --class SPECTRE_V1 --arch x86_64 --n 5
"""

from __future__ import annotations

import argparse
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
sys.path.insert(0, str(ROOT / "v54"))
sys.path.insert(0, str(ROOT / "spec"))
sys.path.insert(0, str(ROOT / "gen"))

from isa_spec import load_spec, load_engine       # noqa: E402
from spec_pdg_builder import SpecBackedPDGBuilder  # noqa: E402
from generator import CondTransformerLM            # noqa: E402
from realize import Realizer                        # noqa: E402

# NOTE: ROOT must be on sys.path BEFORE the `gen.synth`/`oracle.validators`
# imports below -- `gen` has no gen/__init__.py, so it only resolves as a
# (namespace) package when ROOT itself is importable from sys.path. The
# brief's snippet put `sys.path.insert(0, str(ROOT))` after the `from
# gen.synth import ...` lines, which raises `ModuleNotFoundError: No module
# named 'gen'` when this file is run as a script (`python3 gen/decode.py`,
# where sys.path[0] is gen/, not ROOT) -- confirmed by testing. Moved here.
sys.path.insert(0, str(ROOT))
from oracle_splice import splice as splice_gen_body               # noqa: E402
from gen.synth import spectector_gadgets as spec_gadgets           # noqa: E402
from gen.synth import templates as synth_templates                 # noqa: E402
from gen.synth.params import GadgetParams                          # noqa: E402
from oracle.validators import SpectectorValidator, InvisiSpecValidator  # noqa: E402

# (class, is_invisispec) -> (convention, input_expr) -- Spectector uses
# "arr"/"i"/"v"/"store" (the spectector_gadgets.py harness's variable names),
# InvisiSpec uses the templates.py harness's real C variable names.
_SPLICE_CONVENTION = {
    ("SPECTRE_V1", False): ("pointer", "arr + i"),
    ("SPECTRE_V1", True):  ("pointer", "g_arr + index"),
    ("SPECTRE_V4", False): ("pointer", "store + i"),
    ("SPECTRE_V4", True):  ("pointer", "ssb_ptr_v4"),
    ("SPECTRE_V2", False): ("value", "i"),
    ("SPECTRE_V2", True):  ("value", "value_to_leak"),
    ("BHI", False):        ("value", "i"),
    ("BHI", True):         ("value", "value"),
    ("RETBLEED", False):   ("pointer", "arr + i"),
    ("RETBLEED", True):    ("value", "value"),
    ("INCEPTION", False):  ("pointer", "arr + i"),
    ("INCEPTION", True):   ("value", "value"),
    ("L1TF", False):       ("value", "v"),
    ("L1TF", True):        ("pointer", "g_l1tf_secret_page + 0x100"),
    ("MDS", False):        ("value", "v"),
    ("MDS", True):         ("pointer", "&secret_mds_byte"),
}


def build_gen_body(realized, cls, arch, is_invisispec):
    """cls == 'BENIGN' is not splicable -- caller must not call this for
    BENIGN (falls back to the default hand-written body instead)."""
    convention, input_expr = _SPLICE_CONVENTION[(cls, is_invisispec)]
    output_expr = "probe_array" if is_invisispec else "probe"
    asm_text, clobbers = splice_gen_body(realized, arch, convention, input_expr, output_expr)
    clobber_str = ", ".join(f'"{c.lstrip("%")}"' for c in clobbers)
    return (
        f'__asm__ __volatile__(\n"{asm_text}"\n'
        f': : "r"({input_expr}), "r"({output_expr}) : {clobber_str}, "memory");'
    )


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--class", dest="cls", default="SPECTRE_V1")
    ap.add_argument("--arch", default="x86_64", choices=["x86_64", "arm64"])
    ap.add_argument("--n", type=int, default=5)
    ap.add_argument("--temperature", type=float, default=0.9)
    ap.add_argument("--gen", default=str(ROOT / "gen" / "generator.pt"))
    ap.add_argument("--validate", action="store_true",
                     help="run each sample through Spectector for a real leak/safe verdict "
                          "(opt-in, ~30-300s per sample; not run for BENIGN, which has no "
                          "splicable secret input)")
    ap.add_argument("--validate-invisispec", action="store_true",
                     help="also run InvisiSpec (real execution, ~10min/gadget) -- requires "
                          "--validate")
    args = ap.parse_args()

    model = CondTransformerLM.load(args.gen)
    spec = load_spec(f"{args.arch}.json")
    realizer = Realizer(spec, seed=0)
    builder = SpecBackedPDGBuilder(load_engine(f"{args.arch}.json"), speculative_window=20)

    print(f"class={args.cls}  arch={args.arch}  n={args.n}\n")
    parseable = 0
    for i in range(args.n):
        norm = model.sample(args.cls, args.arch, temperature=args.temperature, top_k=20)
        concrete = realizer.realize_sequence(norm)
        pdg = builder.build(concrete)
        ok = len(pdg.nodes) >= 2
        parseable += ok
        print(f"--- sample {i+1}  ({len(concrete)} instrs, {len(pdg.nodes)} nodes, "
              f"{len(pdg.edges)} edges, parseable={ok}) ---")
        for ins in concrete:
            print("   " + ins)
        print()

        if args.validate and args.cls != "BENIGN":
            gen_body = build_gen_body(concrete, args.cls, args.arch, is_invisispec=False)
            spec_c = spec_gadgets.render_spec(args.cls, fenced=False, gen_body=gen_body)
            spec_path = ROOT / "oracle" / "build" / f"gen_spec_{args.cls}_{i}.c"
            spec_path.parent.mkdir(parents=True, exist_ok=True)
            spec_path.write_text(spec_c)
            spec_result = SpectectorValidator(str(ROOT)).validate({
                "gadget_id": f"gen_{args.cls}_{i}", "vuln_class": args.cls,
                "spectector_source": str(spec_path.relative_to(ROOT)),
                "adjudicable": "yes",
            })
            print(f"    spectector: {spec_result.verdict} (signal={spec_result.signal})")

            if args.validate_invisispec:
                gen_body_iv = build_gen_body(concrete, args.cls, args.arch, is_invisispec=True)
                p = GadgetParams(vuln_class=args.cls, arch=args.arch, secret=42,
                                  train_iters=100, pad_nops=2, reorder=False, variant_idx=i)
                iv_c = synth_templates.render(p, gen_body=gen_body_iv)
                iv_path = ROOT / "oracle" / "build" / f"gen_iv_{args.cls}_{i}.c"
                iv_path.write_text(iv_c)
                # timeout=5400 (90min): InvisiSpecValidator's own default is
                # 1800s (30min) -- the WSL session this repo already merged
                # (SPECDISCOVER_WSL_ORACLE_SETUP.md) found that default
                # silently misreports real leaks as unrunnable/timeout on
                # slower-than-the-original-Mac hardware, and fixed it to
                # 5400s in oracle/run_cross_validation.py and
                # oracle/build_leak_dataset.py -- but NOT in this Validator
                # class's own default, so callers that construct it directly
                # (like this one) must pass the longer timeout explicitly or
                # silently reintroduce that exact already-found bug.
                iv_result = InvisiSpecValidator(str(ROOT), timeout=5400).validate({
                    "gadget_id": f"gen_{args.cls}_{i}", "vuln_class": args.cls,
                    "execution_source": str(iv_path.relative_to(ROOT)),
                    "adjudicable": "yes",
                })
                print(f"    invisispec: {iv_result.verdict} (signal={iv_result.signal})")
        elif args.validate and args.cls == "BENIGN":
            print("    (--validate skipped: BENIGN has no splicable secret input)")
    print(f"PDG-parseable: {parseable}/{args.n}")


if __name__ == "__main__":
    main()
