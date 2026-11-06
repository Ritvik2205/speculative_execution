"""Pinned-repo collector: published benchmarks, PoCs, RISC-V artifacts and vendor snippets.

Each manifest entry pins a repo at a commit and lists items (file, function, label, safe).
Items are compiled per (arch, compiler, opt) in the toolchain image, or, for `raw_asm`
entries, read directly as assembly. One record per (item, arch, compiler, opt); records
are whole functions (the scorer windows them later).
"""
import argparse
import json
import subprocess
import time
from datetime import date
from pathlib import Path

import yaml

from realworld.asm import extract_named_functions, find_function
from realworld.records import make_record, normalise, has_mitigation, _seq_hash
from realworld.toolchain import compile_to_asm

ROOT = Path(__file__).resolve().parent.parent
MANIFEST = Path(__file__).parent / "manifest.yaml"
REPOS_ROOT = Path.home() / "specexec_realworld" / "repos"
DEFAULT_EVAL_DIR = ROOT / "eval" / "data"
DEFAULT_TRAIN_DIR = ROOT / "v54" / "data"
DEFAULT_TRAIN_FILE = ROOT / "v54" / "data" / "v54_train.jsonl"
DEFAULT_FLAGS = ("-w",)


def load_manifest(path=MANIFEST) -> list[dict]:
    return yaml.safe_load(open(path))


def _strip_hash(line: str) -> str:
    """Cut a `#` comment, ignoring `#` inside double-quoted strings."""
    q = False
    i = 0
    while i < len(line):
        c = line[i]
        if c == "\\" and q:
            i += 2
            continue
        if c == '"':
            q = not q
        elif c == "#" and not q:
            return line[:i]
        i += 1
    return line


def strip_comments_arch(lines, arch):
    """Arch-aware comment stripping. `#` starts a comment on x86 and RISC-V gas (never inside
    a quoted string); on arm64 `#` is an immediate prefix, so only `//` is stripped."""
    out = []
    for l in lines:
        if arch in ("x86_64", "riscv64"):
            code = _strip_hash(l)
        else:
            code = l.split("//", 1)[0]
        code = code.rstrip()
        if code.strip():
            out.append(code)
    return out


def normalise_for_arch(lines, arch):
    return normalise(strip_comments_arch(lines, arch))


def _git(d, *a):
    r = subprocess.run(["git", "-C", str(d), *a], capture_output=True, text=True)
    if r.returncode:
        raise RuntimeError(r.stderr.strip())
    return r.stdout.strip()


def _train_rows(train_file):
    """v54 train rows have no provenance: wrap them so split_leaks can hash-match."""
    if not train_file or not Path(train_file).exists():
        return []
    rows = []
    for l in open(train_file):
        r = json.loads(l)
        r["provenance"] = {"url": "train", "commit_or_version": "v54"}
        r["function"] = r.get("func_name", "")
        r["source_file"] = r.get("source_file") or ""
        rows.append(r)
    return rows


def _resolve(repo_dir, d):
    """`@name` = a directory shipped under realworld/ (shims, vendor_snippets)."""
    return ROOT / "realworld" / d[1:] if d.startswith("@") else Path(repo_dir) / d


def out_path(e, out_dir, train_dir):
    if e["split"] == "train":
        return Path(train_dir) / f"realworld_{e['name']}_train.jsonl"
    return Path(out_dir) / f"realworld_{e['name']}.jsonl"


def run(e, repo_dir, out_dir, train_dir, compile_fn=compile_to_asm, train_file=DEFAULT_TRAIN_FILE,
        log=print):
    repo_dir = Path(repo_dir)
    head = e["commit"] if e.get("local") else _git(repo_dir, "rev-parse", "HEAD")  # local: vendored files, no git pin
    if head != e["commit"]:
        raise RuntimeError(f"{e['name']}: checkout at {head}, manifest pins {e['commit']}")
    out = out_path(e, out_dir, train_dir)
    out.parent.mkdir(parents=True, exist_ok=True)
    skipped_path = Path(out_dir if e["split"] == "eval" else out.parent) / f"skipped_{e['name']}.jsonl"
    skipped_path.parent.mkdir(parents=True, exist_ok=True)
    today = date.today().isoformat()
    raw = bool(e.get("raw_asm"))
    cache = {}
    recs, skips = [], []
    t_all = time.time()
    fskip = open(skipped_path, "w")

    def skip(item, arch, cc, opt, reason, detail=""):
        d = dict(repo=e["name"], file=item["file"], function=item["function"], arch=arch,
                 compiler=cc, opt=opt, reason=reason, detail=detail)
        skips.append(d)
        fskip.write(json.dumps(d) + "\n")
        fskip.flush()
        log(f"  skip {item['file']}:{item['function']} {arch}/{cc}/{opt} {reason} {detail[-120:]!r}")

    def asm_for(item, arch, cc, opt):
        key = (item["file"], arch, cc, opt)
        if key not in cache:
            src = repo_dir / item["file"]
            if raw:
                cache[key] = src.read_text(errors="replace")
            else:
                flags = list(DEFAULT_FLAGS) + list(e.get("extra_flags", [])) + list(e.get(f"extra_flags_{cc}", []))
                incs = [_resolve(repo_dir, d) for d in e.get("include_dirs", [])]
                cache[key] = compile_fn(src, arch, cc, opt, extra_flags=flags, include_dirs=incs)
        return cache[key]

    try:
        for item in e["items"]:
            matrix = [(item.get("arch", a), None, None) for a in e["arches"][:1]] if raw else \
                [(a, c, o) for a in item.get("arches", e["arches"]) for c in e["compilers"] for o in e["opts"]]
            for arch, cc, opt in matrix:
                try:
                    asm = asm_for(item, arch, cc, opt)
                except Exception as ex:
                    skip(item, arch, cc, opt, "build_failed", str(ex))
                    continue
                funcs = extract_named_functions(asm)
                body = find_function(funcs, item["function"])
                if body is None and raw and item["function"] == "*":
                    body = asm.splitlines()
                if not body:
                    skip(item, arch, cc, opt, "function_not_in_asm")
                    continue
                seq = normalise_for_arch(body, arch)
                if not seq:
                    skip(item, arch, cc, opt, "empty_after_normalise")
                    continue
                safe = bool(item["safe"])
                prov = dict(url=e["url"], commit_or_version=e["commit"], licence=e["licence"],
                            retrieved=today, cve=item.get("cve", e.get("cve")), paper=e.get("paper"))
                group = f"{e['name']}:" + (item.get("group") or f"{item['file']}:{item['function']}")
                rec = make_record(
                    seq, "BENIGN" if safe else item["label"], arch, group, f"{e['name']}_{e['subset']}",
                    prov, file=item["file"], function=item["function"], commit=e["commit"],
                    subset=e["subset"], compiler=cc, opt=opt, safe=safe, vuln_class=item["label"],
                    mitigation_detected=bool(has_mitigation(seq)), note=item.get("note", ""),
                    train_overlap=False)
                if safe:
                    rec["mitigated"] = True
                recs.append(rec)
    finally:
        fskip.close()

    # per-record: same normalised-sequence hash split_leaks() uses, so an -O0 hit does not taint -O2
    trows = _train_rows(train_file)
    thash = {_seq_hash(r) for r in trows}
    tsrc = {r["source_file"] for r in trows if r.get("source_file")}
    for r in recs:
        by_hash = _seq_hash(r) in thash
        # train rows are windows of files the project already ingested (e.g. a /tmp checkout of the
        # same repo): same repo-relative path => the file is in train even if the window differs
        by_src = any(sf.endswith("/" + r["file"]) and (e.get("checkout", e["name"]).split("-asm")[0] in sf
                                                      or e["name"].split("-asm")[0] in sf) for sf in tsrc)
        r["train_overlap"] = by_hash or by_src
        r["train_overlap_reason"] = "sequence_hash" if by_hash else ("source_path" if by_src else None)
    with open(out, "w") as f:
        for r in recs:
            f.write(json.dumps(r) + "\n")
    log(f"{e['name']}: {len(recs)} records, {len(skips)} skips, "
        f"{sum(r['train_overlap'] for r in recs)} train_overlap, {time.time() - t_all:.0f}s -> {out}")
    return recs, skips


def main(argv=None):
    ap = argparse.ArgumentParser()
    ap.add_argument("--manifest", type=Path, default=MANIFEST)
    ap.add_argument("--only", nargs="*", default=None)
    ap.add_argument("--out-dir", type=Path, default=DEFAULT_EVAL_DIR)
    ap.add_argument("--train-dir", type=Path, default=DEFAULT_TRAIN_DIR)
    ap.add_argument("--train-file", type=Path, default=DEFAULT_TRAIN_FILE)
    ap.add_argument("--repos-root", type=Path, default=REPOS_ROOT)
    a = ap.parse_args(argv)
    entries = load_manifest(a.manifest)
    names = {e["name"] for e in entries}
    if a.only is not None:
        bad = set(a.only) - names
        if bad:
            raise SystemExit(f"unknown entries: {sorted(bad)}")
        entries = [e for e in entries if e["name"] in a.only]
    for e in entries:
        d = _resolve(a.repos_root.expanduser(), e["checkout"]) if e.get("checkout", "").startswith("@") \
            else a.repos_root.expanduser() / e.get("checkout", e["name"])
        try:
            run(e, d, a.out_dir, a.train_dir, train_file=a.train_file)
        except Exception as ex:
            print(f"{e['name']}: FAILED {ex}")


if __name__ == "__main__":
    main()
