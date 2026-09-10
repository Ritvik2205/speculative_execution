#!/usr/bin/env python3
"""
stage_pretrain_corpus.py — stage an external, unlabeled assembly corpus for
gen/pretrain_encoder.py --corpus (Step 4 / NEXT_STEPS_PLAN_2026-09-10.md).

pretrain_encoder.py wants JSONL records of the shape:

    {"sequence": ["mov\teax, ebx", "add\teax, 1", ...], "arch": "x86_64"}

("label" is optional -- an unlabeled record falls back to a generic <CLS_CODE>
token; "arch" is optional too, falling back to "unknown" / base.json). This
module builds that JSONL two ways:

  1. `stage()` -- the real path. Streams a public external assembly corpus
     (default: the "Assembly" language slice of bigcode/the-stack, raw .s
     files scraped from permissively-licensed GitHub repos -- see SOURCES)
     via the `datasets` library. This needs internet + (for a gated
     dataset like the-stack) a Hugging Face account that has accepted the
     dataset's terms. The compute nodes on the cluster have NO internet --
     this is meant to run on the cluster HEAD node, per the plan:

         cd ~/speculative_execution && git pull
         pip install --user datasets huggingface_hub
         huggingface-cli login          # token from https://huggingface.co/settings/tokens
         python3 gen/stage_pretrain_corpus.py \\
             --out gen/data/pretrain_corpus.jsonl --source the-stack-assembly --limit 50000

     If the package is missing or the fetch fails for any reason (no
     network, no token, dataset not accepted, rate-limited, ...) this FAILS
     LOUDLY (raises `CorpusUnavailable` with the exact remediation command)
     rather than writing a fabricated/empty corpus.

  2. `stage_from_local()` -- dev/test path (`--from-local <dir>`). Builds the
     same JSONL shape from a local directory of .s/.S files, no network. Used
     by tests/gen/test_stage_pretrain_corpus.py with a tiny fixture.

Both paths are resumable: re-running with the same --out only stages sources
not already present in the file (tracked via each record's "source" field),
so a long head-node run can be safely re-launched after a timeout/interrupt.
"""

from __future__ import annotations

import argparse
import json
import re
import sys
from pathlib import Path
from typing import Optional

ROOT = Path(__file__).resolve().parent.parent

DEFAULT_SOURCE = "the-stack-assembly"

# Public external corpus sources this script knows how to stage. Each entry
# maps to a `datasets.load_dataset(hf_dataset, data_dir=hf_data_dir, ...)`
# call. Add more rows here (e.g. an ExeBench/AnghaBench split) rather than
# hardcoding a second fetch path.
SOURCES = {
    "the-stack-assembly": {
        "hf_dataset": "bigcode/the-stack",
        "hf_data_dir": "data/assembly",
        "description": ("bigcode/the-stack (dedup), the 'Assembly' language slice -- "
                        "raw .s files scraped from permissively-licensed GitHub repos. "
                        "Gated: requires accepting the dataset's terms on huggingface.co "
                        "and a logged-in HF token."),
    },
}


class CorpusUnavailable(RuntimeError):
    """Raised instead of ever fabricating/faking corpus content."""


# ---------------------------------------------------------------------------
# arch heuristic (best-effort; unlabeled external code has no reliable arch
# tag, and pretrain_encoder.py's MultiArchTokenizer falls back to base.json
# for "unknown" anyway, so a missed guess only costs precision, not
# correctness).
# ---------------------------------------------------------------------------

_X86_HINT = re.compile(r"%r(ax|bx|cx|dx|si|di|bp|sp|\d{1,2})\b|%e(ax|bx|cx|dx|si|di)\b")
_ARM64_HINT = re.compile(r"\bx\d{1,2}\s*,|\bw\d{1,2}\s*,|\.arch\s+armv8|\badrp\b")
_RISCV_HINT = re.compile(r"\ba[0-7]\s*,|\bra\s*,|\.attribute\s+arch|\briscv\b", re.IGNORECASE)


def _guess_arch(content: str) -> str:
    if _X86_HINT.search(content):
        return "x86_64"
    if _RISCV_HINT.search(content):
        return "riscv64"
    if _ARM64_HINT.search(content):
        return "arm64"
    return "unknown"


def _lines_to_sequence(content: str) -> list:
    """Light filter: drop blank lines and comment-only lines. Labels (":")
    and directives (".") are left in -- spec/asm_tokenizer.py's normalize()
    already drops those per-line, so filtering them here is an optional size
    optimization, not a correctness requirement."""
    out = []
    for raw in content.splitlines():
        line = raw.strip()
        if not line:
            continue
        if line.startswith(("#", "//", ";", "@")):
            continue
        out.append(line)
    return out


# ---------------------------------------------------------------------------
# resume bookkeeping
# ---------------------------------------------------------------------------

def _already_staged_sources(out_path: Path) -> set:
    """Set of `record["source"]` already written to `out_path` (empty if the
    file doesn't exist yet or resume is starting fresh)."""
    done = set()
    if not out_path.exists():
        return done
    with open(out_path) as f:
        for line in f:
            line = line.strip()
            if not line:
                continue
            try:
                rec = json.loads(line)
            except json.JSONDecodeError:
                continue
            src = rec.get("source")
            if src is not None:
                done.add(src)
    return done


def _count_lines(path: Path) -> int:
    if not path.exists():
        return 0
    with open(path) as f:
        return sum(1 for line in f if line.strip())


# ---------------------------------------------------------------------------
# local (dev/test) path
# ---------------------------------------------------------------------------

def stage_from_local(out_jsonl, source_dir, limit: Optional[int] = None,
                      arch: Optional[str] = None, resume: bool = True) -> int:
    """Build the pretrain-corpus JSONL from local .s/.S files under
    `source_dir` (no network). Returns the total record count in `out_jsonl`
    after staging. `arch`, if given, forces every record's arch tag instead
    of per-file heuristic guessing."""
    out_path = Path(out_jsonl)
    src_dir = Path(source_dir)
    if not src_dir.is_dir():
        raise FileNotFoundError(f"--from-local dir not found: {src_dir}")

    files = sorted(src_dir.glob("*.s")) + sorted(src_dir.glob("*.S"))
    if not files:
        raise FileNotFoundError(f"no .s/.S files found under {src_dir}")

    done = _already_staged_sources(out_path) if resume else set()
    n_written = _count_lines(out_path) if (resume and out_path.exists()) else 0

    out_path.parent.mkdir(parents=True, exist_ok=True)
    mode = "a" if (resume and out_path.exists()) else "w"
    with open(out_path, mode) as f:
        for fp in files:
            if limit is not None and n_written >= limit:
                break
            if fp.name in done:
                continue
            content = fp.read_text()
            seq = _lines_to_sequence(content)
            if len(seq) < 2:
                continue
            rec = {"sequence": seq, "arch": arch or _guess_arch(content), "source": fp.name}
            f.write(json.dumps(rec) + "\n")
            n_written += 1

    return n_written


# ---------------------------------------------------------------------------
# real (network) path
# ---------------------------------------------------------------------------

def _fetch_fail_message(source: str, cfg: dict, err: Exception) -> str:
    return (
        f"could not stage source {source!r} ({cfg['hf_dataset']}, "
        f"data_dir={cfg['hf_data_dir']!r}): {err!r}\n"
        "This needs internet access (the cluster compute nodes do NOT have it -- the "
        "HEAD node does) and, for a gated dataset, a Hugging Face account that has "
        "accepted its terms. On the HEAD node, run:\n"
        "    pip install --user datasets huggingface_hub\n"
        "    huggingface-cli login   # token from https://huggingface.co/settings/tokens\n"
        f"    # accept the dataset terms first: https://huggingface.co/datasets/{cfg['hf_dataset']}\n"
        "    python3 gen/stage_pretrain_corpus.py --out gen/data/pretrain_corpus.jsonl "
        f"--source {source} --limit 50000"
    )


def stage(out_jsonl, source: str = DEFAULT_SOURCE, limit: int = 50000,
          resume: bool = True) -> int:
    """Stream `source` (see SOURCES) via the `datasets` library into
    `out_jsonl`, up to `limit` records, resuming past whatever `out_jsonl`
    already has (by `source` filename/id, not just line count -- a stream
    can skip a bad record). FAILS LOUDLY (`CorpusUnavailable`) on any
    problem: missing `datasets` package, no network, no HF auth, dataset
    terms not accepted, etc. Never writes fabricated content."""
    out_path = Path(out_jsonl)
    cfg = SOURCES.get(source)
    if cfg is None:
        raise ValueError(f"unknown source {source!r}; choices: {sorted(SOURCES)}")

    n_written = _count_lines(out_path) if (resume and out_path.exists()) else 0
    if n_written >= limit:
        print(f"[stage] {out_path} already has {n_written} >= limit={limit} records; nothing to do")
        return n_written
    done = _already_staged_sources(out_path) if resume else set()

    try:
        import datasets  # noqa: F401  -- only checking availability here
    except ImportError as e:
        raise CorpusUnavailable(
            "the `datasets` package is not installed.\n"
            "    pip install --user datasets huggingface_hub\n"
            "then re-run this command on a host with internet access "
            "(the cluster HEAD node, per docs/NEXT_STEPS_PLAN_2026-09-10.md Step 4)."
        ) from e

    try:
        ds = datasets.load_dataset(cfg["hf_dataset"], data_dir=cfg["hf_data_dir"],
                                    split="train", streaming=True)
        out_path.parent.mkdir(parents=True, exist_ok=True)
        mode = "a" if (resume and out_path.exists()) else "w"
        with open(out_path, mode) as f:
            for item in ds:
                if n_written >= limit:
                    break
                src_id = item.get("hexsha") or item.get("path") or item.get("content_id")
                if src_id is not None and src_id in done:
                    continue
                content = item.get("content")
                if not content:
                    continue
                seq = _lines_to_sequence(content)
                if len(seq) < 2:
                    continue
                rec = {"sequence": seq, "arch": _guess_arch(content),
                       "source": src_id or f"{source}:{n_written}"}
                f.write(json.dumps(rec) + "\n")
                n_written += 1
    except CorpusUnavailable:
        raise
    except Exception as e:
        raise CorpusUnavailable(_fetch_fail_message(source, cfg, e)) from e

    return n_written


# ---------------------------------------------------------------------------
# CLI
# ---------------------------------------------------------------------------

def main(argv=None) -> int:
    ap = argparse.ArgumentParser(description=__doc__,
                                 formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument("--out", required=True, help="output JSONL path")
    ap.add_argument("--source", default=DEFAULT_SOURCE, choices=sorted(SOURCES),
                     help="named external corpus source (default: %(default)s)")
    ap.add_argument("--limit", type=int, default=50000,
                     help="max records to stage (default: %(default)s)")
    ap.add_argument("--from-local", default=None, metavar="DIR",
                     help="build the corpus from local .s/.S files instead of "
                          "downloading (dev/test mode, no network)")
    ap.add_argument("--arch", default=None,
                     help="force this arch tag for --from-local records "
                          "(default: per-file heuristic)")
    ap.add_argument("--no-resume", action="store_true",
                     help="overwrite --out instead of resuming past what's already there")
    args = ap.parse_args(argv)

    try:
        if args.from_local:
            n = stage_from_local(args.out, args.from_local, limit=args.limit,
                                 arch=args.arch, resume=not args.no_resume)
        else:
            n = stage(args.out, args.source, args.limit, resume=not args.no_resume)
    except (CorpusUnavailable, FileNotFoundError, ValueError) as e:
        print(f"ERROR: {e}", file=sys.stderr)
        return 1

    print(f"[stage] {args.out} now has {n} records")
    return 0


if __name__ == "__main__":
    sys.exit(main())
