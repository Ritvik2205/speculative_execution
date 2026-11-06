"""Real Spectre-v1 fixes as vulnerable(pre-patch)/mitigated(post-patch) function pairs.

CLI: python3 -m realworld.patch_pairs --repo {linux,xen} --clone DIR --out FILE [--limit N]
"""
import argparse
import hashlib
import json
import re
import subprocess
import sys
import time
from datetime import date
from pathlib import Path

import yaml

from realworld.asm import extract_named_functions, find_function
from realworld.records import has_mitigation, make_record, normalise
from realworld.toolchain import IMAGE

CONFIG = Path(__file__).parent / "patch_repos.yaml"
WORK_ROOT = Path.home() / "specexec_realworld" / "wt"
_CVE = re.compile(r"CVE-\d{4}-\d+")
_HUNK = re.compile(r"^@@ -\S+ \+\S+ @@ ?(.*)$")
_IDENT = re.compile(r"\b([A-Za-z_]\w*)\s*\(")
_NOT_FUNC = {"if", "for", "while", "switch", "return", "sizeof", "__attribute__",
             "__aligned", "__printf", "__acquires", "__releases"}


def load_config(repo: str) -> dict:
    with open(CONFIG) as f:
        return yaml.safe_load(f)[repo]


def git(clone, *args, check=True) -> str:
    r = subprocess.run(["git", "-C", str(clone), *args], capture_output=True, text=True,
                       errors="replace")
    if check and r.returncode != 0:
        raise RuntimeError(f"git {' '.join(args)}: {r.stderr.strip()}")
    return r.stdout


def _added_lines(patch_lines):
    return [l[1:] for l in patch_lines if l.startswith("+") and not l.startswith("+++")]


def find_fix_commits(clone, terms) -> list[str]:
    """Commits whose diff ADDS one of `terms` (git log -S, filtered by added lines)."""
    seen: dict[str, None] = {}
    for term in terms:
        out = git(clone, "log", f"-S{term}", "--format=%H", "--", "*.c")
        for sha in out.split():
            if sha in seen:
                continue
            patch = git(clone, "show", "--format=", "-U0", sha, "--", "*.c").splitlines()
            if any(t in l for l in _added_lines(patch) for t in terms):
                seen[sha] = None
    return list(seen)


def changed_functions(clone, commit, terms=None) -> list[tuple[str, str]]:
    """(file.c, function) from hunk headers whose hunk adds a term."""
    terms = terms or ["array_index_nospec", "barrier_nospec", "array_index_mask_nospec",
                      "block_speculation", "evaluate_nospec"]
    patch = git(clone, "show", "--format=", "-U0", commit, "--", "*.c").splitlines()
    out: list[tuple[str, str]] = []
    cur_file = None
    hunk_fn = None
    hunk_adds = False

    def flush():
        if cur_file and hunk_fn and hunk_adds and (cur_file, hunk_fn) not in out:
            out.append((cur_file, hunk_fn))

    for line in patch:
        if line.startswith("+++ "):
            flush()
            hunk_fn, hunk_adds = None, False
            cur_file = line[6:] if line.startswith("+++ b/") else None
        elif line.startswith("@@"):
            flush()
            m = _HUNK.match(line)
            hunk_fn, hunk_adds = None, False
            if m:
                for name in _IDENT.findall(m.group(1)):
                    if name not in _NOT_FUNC:
                        hunk_fn = name
                        break
        elif line.startswith("+") and any(t in line for t in terms):
            hunk_adds = True
    flush()
    return out


def commit_message(clone, commit) -> str:
    return git(clone, "show", "-s", "--format=%B", commit)


def parse_cve(message: str):
    m = _CVE.search(message)
    return m.group(0) if m else None


def _sh(cmd: str, cwd: Path, prefix: str = ""):
    """Run a shell command in the toolchain container with `cwd` mounted at /work."""
    if prefix:
        cmd = f"{prefix} && {cmd}"
    return subprocess.run(["docker", "run", "--rm", "-v", f"{cwd}:/work", "-w", "/work",
                           IMAGE, "sh", "-c", cmd], capture_output=True, text=True,
                          errors="replace")


def _err(r) -> str:
    text = (r.stderr or "") + (r.stdout or "")
    errs = [l for l in text.splitlines() if "error" in l.lower() or "No rule" in l]
    return "\n".join(errs[:3] or text.splitlines()[-3:])[-400:]


def _worktree(clone: Path, repo_cfg: dict) -> Path:
    clone = Path(clone).resolve()
    wt = WORK_ROOT / clone.name
    if not wt.exists():
        WORK_ROOT.mkdir(parents=True, exist_ok=True)
        git(clone, "worktree", "add", "--detach", str(wt), "HEAD")
    return wt


def _config_key(wt: Path, repo_cfg: dict) -> str:
    mk = wt / repo_cfg.get("make_dir", "") / "Makefile"
    return "".join(mk.read_text(errors="replace").splitlines(True)[:8]) if mk.exists() else ""


class BuiltAsm(str):
    """Asm text plus how it was built (fakes may return a plain str)."""
    build_flags = None
    config_sha256 = None


def is_merge(clone, commit) -> bool:
    return len(git(clone, "rev-list", "--parents", "-n", "1", commit).split()) > 2


def strip_comments(lines):
    """Drop gcc -fverbose-asm `#` comments (trailing and comment-only lines)."""
    out = []
    for l in lines:
        code = l.split("#", 1)[0].rstrip()
        if code.strip():
            out.append(code)
    return out


def build_asm(clone, rev, cfile, repo_cfg) -> str:
    """Assembly for `cfile` at `rev`. One reusable worktree per repo; generated state is
    wiped + prepared when the version header changes, and .config is regenerated from
    defconfig + fixed fragment before EVERY build (no order dependence)."""
    wt = _worktree(Path(clone), repo_cfg)
    git(wt, "checkout", "-q", "-f", "--detach", rev)
    prefix = repo_cfg.get("env_prefix", "")
    mdir = repo_cfg.get("make_dir", "")
    key_file = wt / ".specexec_configured"
    key = _config_key(wt, repo_cfg)
    marker = wt / mdir / (repo_cfg.get("ready_marker") or ".config")
    if not (key_file.exists() and key_file.read_text() == key and marker.exists()):
        key_file.unlink(missing_ok=True)
        cmd = " && ".join(c for c in (repo_cfg.get("wipe_cmd"), repo_cfg["regen_cmd"],
                                      repo_cfg.get("prepare_cmd")) if c)
        r = _sh(cmd, wt, prefix)
        if r.returncode != 0:
            raise RuntimeError("config failed: " + _err(r))
        key_file.write_text(key)
    rel = cfile[len(mdir) + 1:] if mdir and cfile.startswith(mdir + "/") else cfile
    target = rel[:-2] + ".s"
    stale = wt / (mdir or ".") / target
    stale.unlink(missing_ok=True)
    flags = repo_cfg.get("build_flags", "")
    r = _sh(repo_cfg["regen_cmd"] + " >/dev/null && " +
            repo_cfg["asm_cmd"].format(target=target, build_flags=flags), wt, prefix)
    if r.returncode != 0 or not stale.exists():
        raise RuntimeError("make failed: " + _err(r))
    out = BuiltAsm(stale.read_text(errors="replace"))
    out.build_flags = flags
    cfg_file = wt / mdir / ".config"
    out.config_sha256 = hashlib.sha256(cfg_file.read_bytes()).hexdigest() if cfg_file.exists() else None
    return out


def _provenance(repo_cfg, sha, cve, today, built):
    p = dict(url=repo_cfg["url_template"].format(sha=sha), commit_or_version=sha,
             cve=cve, paper=None, licence=repo_cfg["licence"], retrieved=today)
    return p


def _load_commits(clone, cfg, commits_file, log):
    head = git(clone, "rev-parse", "HEAD").strip()
    if commits_file and Path(commits_file).exists():
        lines = Path(commits_file).read_text().splitlines()
        try:
            hdr = json.loads(lines[0])
            if hdr.get("terms") == cfg["terms"] and hdr.get("head") == head:
                return lines[1:]
        except (ValueError, IndexError):
            pass
        log("ignoring commit cache: terms or repo HEAD changed (or old format); regenerating")
    commits = find_fix_commits(clone, cfg["terms"])  # git log -S over full history is ~20 min
    if commits_file:
        Path(commits_file).write_text(
            json.dumps(dict(terms=cfg["terms"], head=head)) + "\n" + "\n".join(commits) + "\n")
    return commits


def run(repo, clone, out, limit=None, repo_cfg=None, build_asm=build_asm, log=print,
        commits_file=None):
    cfg = repo_cfg or load_config(repo)
    clone, out = Path(clone), Path(out)
    out.parent.mkdir(parents=True, exist_ok=True)
    skipped_path = out.parent / f"skipped_{repo}.jsonl"
    today = date.today().isoformat()
    commits = _load_commits(clone, cfg, commits_file, log)
    commits = list(reversed(commits))  # oldest first: the 2018 Spectre-v1 fixes before recent refactors
    log(f"{repo}: {len(commits)} fix commits")
    recs, skips = [], []
    pairs = 0
    t_all = time.time()
    fout = open(out, "w")
    fskip = open(skipped_path, "w")

    def skip(commit, cfile, fn, reason, detail=""):
        d = dict(repo=repo, commit=commit, file=cfile, function=fn, reason=reason, detail=detail)
        skips.append(d)
        fskip.write(json.dumps(d) + "\n")
        fskip.flush()
        log(f"  skip {commit[:12]} {cfile}:{fn} {reason} {detail[-120:]!r}")

    try:
        for commit in commits:
            if limit is not None and pairs >= limit:
                break
            if is_merge(clone, commit):
                skip(commit, None, None, "merge_commit")
                continue
            try:
                parent = git(clone, "rev-parse", f"{commit}^").strip()
            except RuntimeError:
                skip(commit, None, None, "no_parent")
                continue
            funcs = changed_functions(clone, commit, cfg["terms"])
            if not funcs:
                skip(commit, None, None, "no_function_in_hunk_header")
                continue
            cve = parse_cve(commit_message(clone, commit))
            label = cfg.get("cve_labels", {}).get(cve, cfg["default_label"])
            for cfile, fn in funcs:
                if limit is not None and pairs >= limit:
                    break
                if cfile.startswith("arch/") and not cfile.startswith("arch/x86/"):
                    skip(commit, cfile, fn, "foreign_arch")  # x86_64 build only
                    continue
                t0 = time.time()
                try:
                    bodies, built = {}, {}
                    missing = None
                    for side, rev in (("pre", parent), ("post", commit)):
                        asm = build_asm(clone, rev, cfile, cfg)
                        built[side] = asm
                        body = find_function(extract_named_functions(asm), fn)
                        if body is None:
                            missing = missing or side
                            continue
                        bodies[side] = normalise(strip_comments(body))
                except Exception as e:  # build failure of either side
                    skip(commit, cfile, fn, "build_failed", str(e)[-300:])
                    continue
                if missing:
                    reason = "new_function" if missing == "pre" and "post" in bodies \
                        else "function_not_in_asm"
                    skip(commit, cfile, fn, reason, f"missing_on:{missing}")
                    continue
                if bodies["pre"] == bodies["post"]:
                    skip(commit, cfile, fn, "no_asm_change")
                    continue
                group = f"{repo}:{commit[:12]}"
                subset = "cve" if cve else "patch_only"
                for side, sha in (("pre", parent), ("post", commit)):
                    extra = dict(file=cfile, function=fn, commit=commit, side=side, subset=subset,
                                 compiler=cfg["compiler"], opt=cfg["opt"],
                                 mitigation_detected=bool(has_mitigation(bodies[side])))
                    if side == "post":
                        extra["mitigated"] = True
                    rec = make_record(
                        bodies[side], label if side == "pre" else "BENIGN", cfg["arch"], group,
                        f"{repo}_patch", _provenance(cfg, sha, cve, today, built[side]), **extra)
                    rec["provenance"]["build_flags"] = getattr(built[side], "build_flags", None) \
                        or cfg.get("build_flags", "")
                    rec["provenance"]["config_sha256"] = getattr(built[side], "config_sha256", None)
                    recs.append(rec)
                    fout.write(json.dumps(rec) + "\n")
                fout.flush()
                pairs += 1
                log(f"  pair {pairs}: {commit[:12]} {cfile}:{fn} ({time.time() - t0:.0f}s)")
    finally:
        fout.close()
        fskip.close()
    log(f"{repo}: {pairs} pairs, {len(skips)} skips, {time.time() - t_all:.0f}s total")
    return recs, skips


def main(argv=None):
    ap = argparse.ArgumentParser()
    ap.add_argument("--repo", required=True, choices=["linux", "xen"])
    ap.add_argument("--clone", required=True, type=Path)
    ap.add_argument("--out", required=True, type=Path)
    ap.add_argument("--limit", type=int)
    ap.add_argument("--commits-file", type=Path,
                    help="cache of fix-commit SHAs (written if absent, reused if present)")
    a = ap.parse_args(argv)
    run(a.repo, a.clone.expanduser(), a.out, a.limit, commits_file=a.commits_file)


if __name__ == "__main__":
    main()
