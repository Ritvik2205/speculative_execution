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
import multiprocessing
import os
import random
import shutil
import statistics
import subprocess
import sys
import tempfile
import time
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
# streaming / parallel / resumable build (for cluster wall-clock timeouts --
# see the module docstring's "WHY THIS EXISTS" for build_from_c_files itself;
# this half exists because build_from_c_files compiles serially and buffers
# every record in memory until one final write, so hundreds of thousands of
# serial ~0.1-60s compiles can run for hours and a timeout loses EVERYTHING.
# build_from_c_files above is left untouched (other code/tests depend on its
# exact shape) -- this is an additive parallel/incremental/resumable path.
# ---------------------------------------------------------------------------

def _compile_and_extract_one(task) -> tuple:
    """Worker: compile ONE source across all archs x opts in its own temp
    dir, extract+neutralize+filter, return (src_basename, records, stats).
    Module-level (picklable) so multiprocessing.Pool can dispatch it. Must
    NEVER raise on a per-(arch,opt) compile/extract failure -- it returns
    whatever it managed to compile, same as build_from_c_files does inline.
    No global dedup here: the parent (_stream_consume) owns seen_hashes."""
    src_path_str, archs, opts, min_instr, max_instr = task
    src = Path(src_path_str)
    stats = Counter()
    records = []

    with tempfile.TemporaryDirectory(prefix="pretrain_c_worker_") as td:
        tmp = Path(td)
        for arch in archs:
            compile_fn = _COMPILERS[arch]
            for opt in opts:
                out = tmp / f"{src.stem}.{arch}.{opt}.s"
                stats[f"{arch}:{opt}:attempted"] += 1
                try:
                    asm = compile_fn(src, opt, out)
                except Exception:
                    asm = None
                if asm is None:
                    stats[f"{arch}:{opt}:compile_fail"] += 1
                    continue
                stats[f"{arch}:{opt}:compiled"] += 1
                try:
                    funcs = extract_functions(asm)
                except Exception:
                    funcs = []
                for func in funcs:
                    try:
                        seq = clean_seq(_neutralize(func))
                    except Exception:
                        continue
                    n = len(seq)
                    if n < min_instr:
                        stats["dropped_short"] += 1
                        continue
                    if n > max_instr:
                        stats["dropped_long"] += 1
                        continue
                    records.append({
                        "sequence": seq, "arch": arch,
                        "source": "compiled_c", "opt": opt,
                    })
                    stats[f"{arch}:{opt}:kept"] += 1

    return src.name, records, dict(stats)


def _load_resume_state(out_path, done_path) -> tuple:
    """Pure, no compiler. Reads an existing (out_path, done_path) pair (from
    a prior, possibly timed-out, run) and reconstructs the bookkeeping a
    fresh streaming run needs to continue rather than restart:
      seen_hashes:     content hashes already written (same hash scheme as
                        build_from_c_files) so a re-run drops them as dups.
      per_cell_count:  {(arch, opt): n} already written, so a per-cell cap
                        is honored across the resume boundary.
      done_set:        source basenames already fully processed -- these are
                        skipped entirely (not even recompiled).
    Absent files -> all empty. A truncated trailing JSONL line (the shape a
    killed job leaves behind) is tolerated -- skipped, not a crash."""
    seen_hashes = set()
    per_cell_count = defaultdict(int)
    done_set = set()

    out_path = Path(out_path)
    done_path = Path(done_path)

    if out_path.exists():
        lines = out_path.read_text().splitlines()
        n = len(lines)
        for i, line in enumerate(lines):
            line = line.strip()
            if not line:
                continue
            try:
                rec = json.loads(line)
            except json.JSONDecodeError:
                if i == n - 1:
                    # Truncated final line from a killed job -- tolerate it.
                    continue
                raise
            seq = rec.get("sequence", [])
            h = hashlib.sha256("\n".join(seq).encode()).hexdigest()
            seen_hashes.add(h)
            per_cell_count[(rec.get("arch"), rec.get("opt"))] += 1

    if done_path.exists():
        for line in done_path.read_text().splitlines():
            line = line.strip()
            if line:
                done_set.add(line)

    return seen_hashes, per_cell_count, done_set


def _stream_consume(results_iter, out_f, done_f, seen_hashes, per_cell_count,
                     per_cell_cap, stats) -> dict:
    """Consume (src_basename, records, local_stats) tuples as they arrive
    (from an in-process generator or a multiprocessing.Pool.imap_unordered),
    apply the SAME dedup + per-cell-cap policy build_from_c_files applies in
    memory -- but incrementally: each kept record is written + flushed
    immediately, and the source is marked done + flushed immediately after,
    so a killed process loses at most the one source it was mid-compiling,
    never the whole run. Pure w.r.t. its results_iter -- no subprocess here,
    which is what makes it cheap to unit-test without a compiler."""
    for src_basename, records, local_stats in results_iter:
        for k, v in local_stats.items():
            stats[k] += v
        for rec in records:
            h = hashlib.sha256("\n".join(rec["sequence"]).encode()).hexdigest()
            if h in seen_hashes:
                stats["dropped_dup"] += 1
                continue
            cell = (rec["arch"], rec["opt"])
            if per_cell_cap is not None and per_cell_count.get(cell, 0) >= per_cell_cap:
                stats[f"{rec['arch']}:{rec['opt']}:capped_out"] += 1
                continue
            seen_hashes.add(h)
            per_cell_count[cell] = per_cell_count.get(cell, 0) + 1
            out_f.write(json.dumps(rec) + "\n")
        out_f.flush()
        done_f.write(src_basename + "\n")
        done_f.flush()
    return stats


def build_from_c_files_streaming(c_files, archs, opts, out_path,
                                  min_instr: int = DEFAULT_MIN_INSTR,
                                  max_instr: int = DEFAULT_MAX_INSTR,
                                  per_cell_cap: Optional[int] = None,
                                  workers: int = 1, resume: bool = False) -> dict:
    """Parallel + incremental + resumable counterpart to build_from_c_files:
    compiles are dispatched across `workers` processes (workers<=1 runs
    in-process, no Pool -- debuggable/testable without multiprocessing), and
    every kept record is written to `out_path` (JSONL, append mode) as soon
    as its source finishes, with `out_path + ".done"` tracking finished
    sources -- so a wall-clock timeout loses at most one in-flight source's
    work, and re-running with resume=True picks up where it left off instead
    of restarting from scratch."""
    out_path = Path(out_path)
    done_path = Path(str(out_path) + ".done")
    out_path.parent.mkdir(parents=True, exist_ok=True)

    stats = Counter()
    if resume:
        seen_hashes, per_cell_count, done_set = _load_resume_state(out_path, done_path)
    else:
        seen_hashes, per_cell_count, done_set = set(), {}, set()

    remaining = [f for f in c_files if f.name not in done_set]
    n_skipped = len(c_files) - len(remaining)
    if n_skipped:
        print(f"[build_pretrain_corpus_from_c] resume: skipping {n_skipped} "
              f"already-done sources ({len(remaining)} remaining)")

    tasks = [(str(f), tuple(archs), tuple(opts), min_instr, max_instr) for f in remaining]
    total = len(tasks)
    start = time.time()
    processed = 0

    def _progress(it):
        nonlocal processed
        for item in it:
            processed += 1
            if processed % 200 == 0 or processed == total:
                elapsed = time.time() - start
                print(f"[build_pretrain_corpus_from_c] progress: "
                      f"{processed}/{total} sources processed, "
                      f"elapsed={elapsed:.0f}s", flush=True)
            yield item

    with out_path.open("a") as out_f, done_path.open("a") as done_f:
        if not tasks:
            print("[build_pretrain_corpus_from_c] nothing to do "
                  "(all sources already done)")
        elif workers <= 1:
            results_iter = (_compile_and_extract_one(t) for t in tasks)
            _stream_consume(_progress(results_iter), out_f, done_f,
                             seen_hashes, per_cell_count, per_cell_cap, stats)
        else:
            with multiprocessing.Pool(workers) as pool:
                results_iter = pool.imap_unordered(_compile_and_extract_one, tasks,
                                                     chunksize=4)
                _stream_consume(_progress(results_iter), out_f, done_f,
                                 seen_hashes, per_cell_count, per_cell_cap, stats)

    elapsed = time.time() - start
    print(f"[build_pretrain_corpus_from_c] streaming build done: "
          f"{total} sources processed in {elapsed:.0f}s")
    return dict(stats)


def print_summary_streaming(out_path, toolchains: dict, stats: dict, n_sources: int) -> None:
    """Same report as print_summary, but derived by streaming back the JSONL
    that build_from_c_files_streaming already wrote to disk (only ints/short
    strings accumulated in memory -- never the full instruction sequences),
    since holding every record in memory again here would defeat the whole
    point of streaming the build."""
    print(f"\n[build_pretrain_corpus_from_c] source C files: {n_sources}")
    print(f"toolchains run: {', '.join(sorted(toolchains)) or '(none)'}")
    for arch, desc in sorted(toolchains.items()):
        print(f"    {arch}: {desc}")

    by_arch = Counter()
    by_opt = Counter()
    lens = []
    n_records = 0
    n_unknown = 0
    out_path = Path(out_path)
    if out_path.exists():
        with out_path.open() as f:
            for line in f:
                line = line.strip()
                if not line:
                    continue
                rec = json.loads(line)
                n_records += 1
                arch = rec.get("arch")
                if arch not in REAL_ARCHES:
                    n_unknown += 1
                by_arch[arch] += 1
                by_opt[rec.get("opt")] += 1
                lens.append(len(rec.get("sequence", [])))

    assert n_unknown == 0, f"{n_unknown} records reached output with a non-real arch"
    print(f"\nrecords written: {n_records}  (unknown-arch: {n_unknown}, asserted 0)")

    print("per-arch counts:")
    for arch in REAL_ARCHES:
        if by_arch.get(arch):
            print(f"    {arch}: {by_arch[arch]}")

    print("per-opt counts:")
    for opt, n in sorted(by_opt.items()):
        print(f"    {opt}: {n}")

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
    ap.add_argument("--workers", type=int,
                     default=int(os.environ.get("SLURM_CPUS_PER_TASK") or os.cpu_count() or 1),
                     help="parallel compile worker processes (default: "
                          "$SLURM_CPUS_PER_TASK if set, else os.cpu_count())")
    ap.add_argument("--resume", action="store_true",
                     help="resume an interrupted run from an existing --out "
                          "(+ its .done sidecar) instead of starting over -- "
                          "already-finished sources are skipped, already-written "
                          "records are kept and deduped against")
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

    out_path = Path(args.out)
    done_path = Path(str(out_path) + ".done")

    if args.per_cell_cap is not None:
        print("[build_pretrain_corpus_from_c] NOTE: --per-cell-cap is set -- with "
              "--workers > 1, source-compile completion order is nondeterministic, "
              "so exactly WHICH records land in a capped (arch, opt) cell is "
              "completion-order dependent (fine for a pretraining corpus; the "
              "records outside any capped cell, and the kept SET when no cap is "
              "given, are still deterministic).")

    if not args.resume:
        # A fresh (non-resume) run must not silently append onto stale output
        # from a previous invocation of this same --out path.
        if out_path.exists():
            out_path.unlink()
        if done_path.exists():
            done_path.unlink()
    print(f"[build_pretrain_corpus_from_c] workers={args.workers} "
          f"resume={args.resume} out={out_path}")

    stats = build_from_c_files_streaming(
        c_files, list(toolchains), opts, out_path,
        min_instr=args.min_instr, max_instr=args.max_instr,
        per_cell_cap=args.per_cell_cap, workers=args.workers, resume=args.resume,
    )

    if cleanup_dir is not None:
        shutil.rmtree(cleanup_dir, ignore_errors=True)

    print_summary_streaming(out_path, toolchains, stats, len(c_files))
    print(f"\n[build_pretrain_corpus_from_c] wrote records to {out_path}")
    return 0


if __name__ == "__main__":
    sys.exit(main())
