#!/usr/bin/env python3
"""
build_pretrain_corpus_from_c.py — build the gadget-generator's pretraining
corpus by COMPILING C ourselves, instead of scraping hand-written assembly of
unknown provenance.

WHY THIS EXISTS. gen/stage_pretrain_corpus.py staged the-stack's "Assembly"
language slice — raw .s files scraped from GitHub. Measured quality on the
staged 5000-record corpus: 84.5% (4223/5000) arch "unknown" (the arch
heuristic couldn't tell), median sequence length 19 instructions (mean 209,
max 22697 -- mostly fragments: snippets, headers, linker scripts, inline asm
blocks copy-pasted into READMEs, not compilable function bodies). Since the
detector/generator this corpus pretrains operate on COMPILER-EMITTED FUNCTION
BODIES, hand-written assembly of unknown provenance is the wrong domain to
pretrain on, no matter how much of it there is.

This script instead takes real C, compiles it with a real toolchain to each
available target ISA, and extracts per-function instruction sequences —
so every record has a known arch BY CONSTRUCTION (the compiler that produced
it), is in-domain (real compiler output, not hand-written asm), and spans
multiple ISAs from ONE C source (the-stack's assembly slice, by construction,
can never do that — a hand-written .s file has exactly one ISA and no C
counterpart).

Two input modes:

  --from-hf <dataset>   Stream C function/file text from a large HF C-function
                         dataset (e.g. AnghaBench, ExeBench). Head-node/
                         internet only. If the `datasets` package or the
                         network is unavailable, this FAILS LOUDLY
                         (`CorpusUnavailable`, imported from
                         gen/stage_pretrain_corpus.py — the same contract:
                         never fabricate) with the exact remediation command.

  --from-local <dir>    Compile local .c files (used by tests/gen/ and as an
                         offline fallback). No network.

Compilation reuses the SAME function-extraction + neutralization already used
by gen/harvest_idiomatic_riscv.py and v54/build_dataset.py
(`extract_functions`, `_neutralize`, `clean_seq`) so records match the rest
of the pipeline's shape (e.g. call/branch targets -> <fn>), rather than
reinventing that logic.

Toolchains (probed with shutil.which, absent ones skipped and reported):
  x86_64:   clang -target x86_64-linux-gnu  -S -O{0,2} -ffreestanding
  arm64:    clang -target aarch64-linux-gnu -S -O{0,2} -ffreestanding
  riscv64:  riscv64-elf-gcc                 -S -O{0,2} -ffreestanding
            (or riscv64-linux-gnu-gcc / riscv64-unknown-elf-gcc if that's
            what's on PATH instead)

Quality filters (applied + reported):
  - drop sequences shorter than --min-instr (default 10) -- kills the
    fragment problem that dominated the the-stack staging;
  - drop sequences longer than --max-instr (default 2000);
  - dedup by exact sequence content (sha256), independent per record — two
    functions across different (arch, opt) cells never collide since their
    instruction text differs by construction;
  - cap each (arch, opt) cell at --per-cell-cap records (random sample, fixed
    seed) so one ISA/opt combination can't dominate the corpus.

Every emitted record carries a REAL arch (x86_64 / arm64 / riscv64) — this is
asserted before writing, not just hoped for, since arch here is a property of
which compiler produced the record, not a guess from the text.

Run (small, from local C, no network):
    python3 gen/build_pretrain_corpus_from_c.py \\
        --from-local c_vulns/c_code --out /tmp/pretrain_c_local.jsonl

Run (full corpus, cluster HEAD node, internet + `datasets` required):
    pip install datasets huggingface_hub   # drop --user inside a venv
    python3 gen/build_pretrain_corpus_from_c.py \\
        --from-hf angha/AnghaBench --out gen/data/pretrain_corpus_c.jsonl \\
        --limit 50000 --per-cell-cap 8000
"""
from __future__ import annotations

import argparse
import hashlib
import json
import random
import shutil
import statistics
import subprocess
import sys
import tempfile
from collections import Counter, defaultdict
from pathlib import Path
from typing import Optional

ROOT = Path(__file__).resolve().parent.parent
sys.path.insert(0, str(ROOT / "v54"))
sys.path.insert(0, str(ROOT))  # for `gen.stage_pretrain_corpus` -- package-qualified so this
                                # module's CorpusUnavailable is the SAME class object a caller
                                # gets from `from gen.stage_pretrain_corpus import CorpusUnavailable`
                                # (a bare `from stage_pretrain_corpus import ...` here would import
                                # it under a second, distinct top-level module name -- two classes,
                                # `except CorpusUnavailable` mismatches across the two import paths)

from build_dataset import extract_functions, _neutralize, clean_seq  # noqa: E402
from gen.stage_pretrain_corpus import CorpusUnavailable  # noqa: E402 -- same loud-failure contract

DEFAULT_MIN_INSTR = 10
DEFAULT_MAX_INSTR = 2000
DEFAULT_OPTS = ["O0", "O2"]
DEFAULT_SEED = 0
REAL_ARCHES = ("x86_64", "arm64", "riscv64")

# HF C-function dataset field candidates, tried in order. AnghaBench-style
# "deduplicated function" dumps typically use one of the first few; kept
# broad since the exact schema varies by dataset/version.
_HF_TEXT_FIELDS = ("func", "func_code_string", "function", "code", "content", "text", "source")


# ---------------------------------------------------------------------------
# toolchains
# ---------------------------------------------------------------------------

def _find_riscv_cc() -> Optional[str]:
    for name in ("riscv64-elf-gcc", "riscv64-linux-gnu-gcc", "riscv64-unknown-elf-gcc"):
        found = shutil.which(name)
        if found:
            return name
    return None


def detect_toolchains() -> dict:
    """Probe available compilers with shutil.which. Returns {arch: description}
    for archs this environment can actually compile -- absent toolchains are
    silently skipped here (the caller reports the detected set)."""
    avail = {}
    if shutil.which("clang"):
        avail["x86_64"] = "clang -target x86_64-linux-gnu"
        avail["arm64"] = "clang -target aarch64-linux-gnu"
    riscv_cc = _find_riscv_cc()
    if riscv_cc:
        avail["riscv64"] = f"{riscv_cc} (riscv64)"
    return avail


def _compile_x86_64(src: Path, opt: str, out: Path) -> Optional[Path]:
    cmd = ["clang", "-S", f"-{opt}", "--target=x86_64-linux-gnu", "-ffreestanding",
           "-masm=att", "-o", str(out), str(src)]
    r = subprocess.run(cmd, capture_output=True, text=True, timeout=60)
    return out if r.returncode == 0 else None


def _compile_arm64(src: Path, opt: str, out: Path) -> Optional[Path]:
    cmd = ["clang", "-S", f"-{opt}", "--target=aarch64-linux-gnu", "-ffreestanding",
           "-o", str(out), str(src)]
    r = subprocess.run(cmd, capture_output=True, text=True, timeout=60)
    return out if r.returncode == 0 else None


def _compile_riscv64(src: Path, opt: str, out: Path) -> Optional[Path]:
    cc = _find_riscv_cc()
    if cc is None:
        return None
    cmd = [cc, "-S", f"-{opt}", "-ffreestanding", "-o", str(out), str(src)]
    r = subprocess.run(cmd, capture_output=True, text=True, timeout=60)
    return out if r.returncode == 0 else None


_COMPILERS = {"x86_64": _compile_x86_64, "arm64": _compile_arm64, "riscv64": _compile_riscv64}


# ---------------------------------------------------------------------------
# --from-hf: stream C function text from a HF dataset (real network)
# ---------------------------------------------------------------------------

def _hf_fail_message(hf_dataset: str, err: Exception) -> str:
    return (
        f"could not stream HF dataset {hf_dataset!r}: {err!r}\n"
        "This needs internet access (the cluster compute nodes do NOT have it -- the "
        "HEAD node does) and, for a gated dataset, a Hugging Face account that has "
        "accepted its terms. On the HEAD node, run:\n"
        "    pip install datasets huggingface_hub   # drop --user inside a venv\n"
        "    huggingface-cli login   # token from https://huggingface.co/settings/tokens\n"
        f"    # accept the dataset terms first: https://huggingface.co/datasets/{hf_dataset}\n"
        f"    python3 gen/build_pretrain_corpus_from_c.py --from-hf {hf_dataset} "
        "--out gen/data/pretrain_corpus_c.jsonl --limit 50000"
    )


# Dataset fields that carry a per-record language/extension tag, checked (in
# order) when a --hf-lang filter is active. the-stack-* uses `lang` + `ext`.
_HF_LANG_FIELDS = ("lang", "language", "language_name")
_HF_EXT_FIELDS = ("ext", "extension", "path", "max_stars_repo_path")
# What counts as C for each accepted --hf-lang token.
_C_LANGS = {"c"}
_C_EXTS = {"c", "h"}


def _row_lang_ok(item, lang_filter) -> bool:
    """True if `item` should be kept under `lang_filter` (a set of lowercase
    language tokens, e.g. {"c"}). With no filter, everything passes. A row is
    kept if any language field equals a requested token, else if a filename/ext
    field ends in an accepted extension for a requested token. A row that
    carries no language/ext field at all is KEPT (can't disprove it) so
    single-function datasets with no lang column still work."""
    if not lang_filter:
        return True
    exts = set()
    for tok in lang_filter:
        if tok in _C_LANGS:
            exts |= _C_EXTS
    saw_tag = False
    for f in _HF_LANG_FIELDS:
        v = item.get(f) if hasattr(item, "get") else None
        if isinstance(v, str) and v.strip():
            saw_tag = True
            if v.strip().lower() in lang_filter:
                return True
    for f in _HF_EXT_FIELDS:
        v = item.get(f) if hasattr(item, "get") else None
        if isinstance(v, str) and v.strip():
            saw_tag = True
            e = v.strip().lower().rsplit(".", 1)[-1]
            if e in exts:
                return True
    # No language/ext field present anywhere -> can't disprove; keep it.
    return not saw_tag


def stage_hf_c_sources(hf_dataset: str, limit: int, tmp_dir: Path,
                       lang_filter=None) -> list:
    """Stream up to `limit` C function/file bodies from `hf_dataset` into
    individual .c files under `tmp_dir`. Returns the list of written paths.
    If `lang_filter` (a set of lowercase language tokens, e.g. {"c"}) is given,
    only records whose language/extension field matches are written -- needed
    for whole-repo multi-language dumps like the-stack-smol-xl, whose first
    rows are Ada/etc. FAILS LOUDLY (`CorpusUnavailable`) on any problem --
    missing `datasets` package, no network, no HF auth, dataset terms not
    accepted, a schema with none of the known text fields, etc. Never
    fabricates C source."""
    try:
        import datasets  # noqa: F401 -- only checking availability here
    except ImportError as e:
        raise CorpusUnavailable(
            "the `datasets` package is not installed.\n"
            "    pip install datasets huggingface_hub   # drop --user inside a venv\n"
            "then re-run this command on a host with internet access (the cluster "
            "HEAD node):\n"
            f"    python3 gen/build_pretrain_corpus_from_c.py --from-hf {hf_dataset} "
            "--out gen/data/pretrain_corpus_c.jsonl --limit 50000"
        ) from e

    try:
        ds = datasets.load_dataset(hf_dataset, split="train", streaming=True)
    except Exception as e:
        raise CorpusUnavailable(_hf_fail_message(hf_dataset, e)) from e

    paths = []
    try:
        for i, item in enumerate(ds):
            if len(paths) >= limit:
                break
            if not _row_lang_ok(item, lang_filter):
                continue
            text = None
            for field in _HF_TEXT_FIELDS:
                v = item.get(field) if hasattr(item, "get") else None
                if isinstance(v, str) and v.strip():
                    text = v
                    break
            if text is None:
                continue
            fp = tmp_dir / f"hf_{len(paths):06d}.c"
            fp.write_text(text)
            paths.append(fp)
    except CorpusUnavailable:
        raise
    except Exception as e:
        raise CorpusUnavailable(_hf_fail_message(hf_dataset, e)) from e

    if not paths:
        why = (f"tried text fields {_HF_TEXT_FIELDS}"
               + (f" after a --hf-lang={sorted(lang_filter)} filter (maybe no matching "
                  "language was reached within --limit rows; raise --limit or widen "
                  "--hf-lang)" if lang_filter else ""))
        raise CorpusUnavailable(
            f"HF dataset {hf_dataset!r} streamed but produced zero usable C sources "
            f"({why}); inspect the dataset schema with "
            f"`datasets.load_dataset({hf_dataset!r}, split='train', streaming=True)` "
            "and extend _HF_TEXT_FIELDS in this script."
        )
    return paths


# ---------------------------------------------------------------------------
# core: compile every C file to every available arch/opt, extract + filter
# ---------------------------------------------------------------------------

def build_from_c_files(c_files, archs, opts, min_instr: int = DEFAULT_MIN_INSTR,
                        max_instr: int = DEFAULT_MAX_INSTR,
                        per_cell_cap: Optional[int] = None,
                        seed: int = DEFAULT_SEED) -> tuple:
    """Compile every file in `c_files` to every arch in `archs` at every opt
    level in `opts`, extract per-function instruction sequences, apply the
    min/max-instr length filters, dedup by content hash, then cap each
    (arch, opt) cell at `per_cell_cap`. Returns (records, stats)."""
    stats = Counter()
    seen_hashes = set()
    per_cell = defaultdict(list)

    with tempfile.TemporaryDirectory(prefix="pretrain_c_build_") as td:
        tmp = Path(td)
        for arch in archs:
            compile_fn = _COMPILERS[arch]
            for src in c_files:
                for opt in opts:
                    out = tmp / f"{src.stem}.{arch}.{opt}.s"
                    asm = compile_fn(src, opt, out)
                    stats[f"{arch}:{opt}:attempted"] += 1
                    if asm is None:
                        stats[f"{arch}:{opt}:compile_fail"] += 1
                        continue
                    stats[f"{arch}:{opt}:compiled"] += 1
                    for func in extract_functions(asm):
                        seq = clean_seq(_neutralize(func))
                        n = len(seq)
                        if n < min_instr:
                            stats["dropped_short"] += 1
                            continue
                        if n > max_instr:
                            stats["dropped_long"] += 1
                            continue
                        h = hashlib.sha256("\n".join(seq).encode()).hexdigest()
                        if h in seen_hashes:
                            stats["dropped_dup"] += 1
                            continue
                        seen_hashes.add(h)
                        per_cell[(arch, opt)].append({
                            "sequence": seq, "arch": arch,
                            "source": "compiled_c", "opt": opt,
                        })
                        stats[f"{arch}:{opt}:kept"] += 1

    rng = random.Random(seed)
    records = []
    for (arch, opt), recs in per_cell.items():
        if per_cell_cap is not None and len(recs) > per_cell_cap:
            stats[f"{arch}:{opt}:capped_out"] = len(recs) - per_cell_cap
            recs = rng.sample(recs, per_cell_cap)
        records.extend(recs)

    return records, dict(stats)


# ---------------------------------------------------------------------------
# summary reporting
# ---------------------------------------------------------------------------

def print_summary(c_files, toolchains: dict, records: list, stats: dict) -> None:
    print(f"\n[build_pretrain_corpus_from_c] source C files: {len(c_files)}")
    print(f"toolchains run: {', '.join(sorted(toolchains)) or '(none)'}")
    for arch, desc in sorted(toolchains.items()):
        print(f"    {arch}: {desc}")

    n_unknown = sum(1 for r in records if r.get("arch") not in REAL_ARCHES)
    assert n_unknown == 0, f"{n_unknown} records reached output with a non-real arch"

    print(f"\nrecords written: {len(records)}  (unknown-arch: {n_unknown}, asserted 0)")

    by_arch = Counter(r["arch"] for r in records)
    print("per-arch counts:")
    for arch in REAL_ARCHES:
        if by_arch.get(arch):
            print(f"    {arch}: {by_arch[arch]}")

    by_opt = Counter(r["opt"] for r in records)
    print("per-opt counts:")
    for opt, n in sorted(by_opt.items()):
        print(f"    {opt}: {n}")

    lens = [len(r["sequence"]) for r in records]
    if lens:
        print(f"length distribution: median={statistics.median(lens):.1f} "
              f"mean={statistics.mean(lens):.1f} min={min(lens)} max={max(lens)}")

    print(f"dropped (too short, <min-instr): {stats.get('dropped_short', 0)}")
    print(f"dropped (too long, >max-instr): {stats.get('dropped_long', 0)}")
    print(f"dropped (dedup): {stats.get('dropped_dup', 0)}")
    capped = sum(v for k, v in stats.items() if k.endswith(":capped_out"))
    print(f"dropped (per-cell cap): {capped}")

    for arch in toolchains:
        for opt in DEFAULT_OPTS:
            attempted = stats.get(f"{arch}:{opt}:attempted", 0)
            compiled = stats.get(f"{arch}:{opt}:compiled", 0)
            if attempted:
                print(f"compile coverage {arch}/{opt}: {compiled}/{attempted}")


# ---------------------------------------------------------------------------
# CLI
# ---------------------------------------------------------------------------

def main(argv=None) -> int:
    ap = argparse.ArgumentParser(description=__doc__,
                                  formatter_class=argparse.RawDescriptionHelpFormatter)
    src_group = ap.add_mutually_exclusive_group(required=True)
    src_group.add_argument("--from-hf", metavar="DATASET", default=None,
                            help="HF dataset name to stream C functions/files from "
                                 "(e.g. an AnghaBench or ExeBench C split); head-node/"
                                 "internet only")
    src_group.add_argument("--from-local", metavar="DIR", default=None,
                            help="directory of local .c files to compile (no network; "
                                 "dev/test/offline mode)")
    ap.add_argument("--out", default=None,
                     help="output JSONL path (required unless --stage-only, which "
                          "writes no corpus)")
    ap.add_argument("--min-instr", type=int, default=DEFAULT_MIN_INSTR,
                     help="drop sequences shorter than this many instructions "
                          "(default: %(default)s)")
    ap.add_argument("--max-instr", type=int, default=DEFAULT_MAX_INSTR,
                     help="drop sequences longer than this many instructions "
                          "(default: %(default)s)")
    ap.add_argument("--per-cell-cap", type=int, default=None,
                     help="cap records per (arch, opt) cell so one ISA doesn't "
                          "dominate (default: no cap)")
    ap.add_argument("--opts", default=",".join(DEFAULT_OPTS),
                     help="comma-separated opt levels to compile at "
                          "(default: %(default)s)")
    ap.add_argument("--limit", type=int, default=20000,
                     help="max C sources to pull from --from-hf (default: %(default)s); "
                          "ignored for --from-local")
    ap.add_argument("--hf-lang", default=None,
                     help="comma-separated language tokens to keep from a --from-hf "
                          "dataset that mixes languages (e.g. 'c' for the-stack-smol-xl, "
                          "whose leading rows are Ada/etc.); default: keep everything")
    ap.add_argument("--stage-only", metavar="DIR", default=None,
                     help="with --from-hf: download the C sources into DIR and STOP "
                          "(no compile, no toolchain needed). Use on an internet host "
                          "that lacks the cross-compilers (e.g. this Mac), then rsync "
                          "DIR to the cluster and finish with --from-local DIR there.")
    ap.add_argument("--seed", type=int, default=DEFAULT_SEED,
                     help="RNG seed for per-cell-cap sampling (default: %(default)s)")
    args = ap.parse_args(argv)

    if args.stage_only and not args.from_hf:
        print("ERROR: --stage-only requires --from-hf (it downloads HF sources)",
              file=sys.stderr)
        return 1
    if not args.stage_only and not args.out:
        print("ERROR: --out is required (unless --stage-only)", file=sys.stderr)
        return 1

    lang_filter = None
    if args.hf_lang:
        lang_filter = {t.strip().lower() for t in args.hf_lang.split(",") if t.strip()}

    # --stage-only: download the .c files and exit BEFORE requiring a toolchain,
    # so an internet host without the cross-compilers (the Mac) can do the
    # network half and hand the .c dir to the cluster via rsync.
    if args.stage_only:
        stage_dir = Path(args.stage_only)
        stage_dir.mkdir(parents=True, exist_ok=True)
        try:
            c_files = stage_hf_c_sources(args.from_hf, args.limit, stage_dir,
                                         lang_filter=lang_filter)
        except CorpusUnavailable as e:
            print(f"ERROR: {e}", file=sys.stderr)
            return 1
        print(f"[build_pretrain_corpus_from_c] staged {len(c_files)} C files to "
              f"{stage_dir}\n  next: rsync it to the cluster, then on a compute node run\n"
              f"    python3 gen/build_pretrain_corpus_from_c.py --from-local {stage_dir} "
              f"--out gen/data/pretrain_corpus_fromC.jsonl "
              f"--min-instr {args.min_instr} --max-instr {args.max_instr}")
        return 0

    opts = [o.strip() for o in args.opts.split(",") if o.strip()]

    toolchains = detect_toolchains()
    print("[build_pretrain_corpus_from_c] detected toolchains:")
    if not toolchains:
        print("    (none)")
        print("ERROR: no supported toolchain found on PATH (need `clang` for x86_64/"
              "arm64 and/or a riscv64 gcc for riscv64)", file=sys.stderr)
        return 1
    for arch, desc in sorted(toolchains.items()):
        print(f"    {arch}: {desc}")

    cleanup_dir = None
    try:
        if args.from_hf:
            cleanup_dir = Path(tempfile.mkdtemp(prefix="pretrain_hf_c_src_"))
            c_files = stage_hf_c_sources(args.from_hf, args.limit, cleanup_dir,
                                         lang_filter=lang_filter)
        else:
            src_dir = Path(args.from_local)
            if not src_dir.is_dir():
                raise FileNotFoundError(f"--from-local dir not found: {src_dir}")
            c_files = sorted(src_dir.rglob("*.c"))
            if not c_files:
                raise FileNotFoundError(f"no .c files found under {src_dir}")
    except (CorpusUnavailable, FileNotFoundError) as e:
        print(f"ERROR: {e}", file=sys.stderr)
        if cleanup_dir is not None:
            shutil.rmtree(cleanup_dir, ignore_errors=True)
        return 1

    records, stats = build_from_c_files(
        c_files, list(toolchains), opts,
        min_instr=args.min_instr, max_instr=args.max_instr,
        per_cell_cap=args.per_cell_cap, seed=args.seed,
    )

    if cleanup_dir is not None:
        shutil.rmtree(cleanup_dir, ignore_errors=True)

    out_path = Path(args.out)
    out_path.parent.mkdir(parents=True, exist_ok=True)
    with out_path.open("w") as f:
        for r in records:
            f.write(json.dumps(r) + "\n")

    print_summary(c_files, toolchains, records, stats)
    print(f"\n[build_pretrain_corpus_from_c] wrote {len(records)} records to {out_path}")
    return 0


if __name__ == "__main__":
    sys.exit(main())
