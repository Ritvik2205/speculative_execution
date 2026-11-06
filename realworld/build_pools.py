#!/usr/bin/env python3
"""Assemble the real-world retrain pool (Task 7).

    python3 -m realworld.build_pools --base v54/data/v55h_allhw3_train.jsonl \\
        --out v54/data/rw_train.jsonl

pool = base (allhw3 pool)
       - base rows colliding with ANY eval file (source_key / normalised-sequence hash)
       - base rows from an eval train_overlap family (Spectector/Kocher, SafeSide, FastSpec: R13)
       + Debian benign train windows (benign_x86_64_*, benign_riscv64_*)
       + realworld_*_train.jsonl (rows with dup_of dropped, R25)

Gates (non-zero exit): split_leaks(pool, eval) non-empty after removal; benign-vs-attack window
length KS > 0.15 overall (R34) unless --allow-length-gap.  Also writes realworld/usage.json
(catalogue name -> [records, note]) for docs/data_sources/build_checklist.py.
"""
from __future__ import annotations

import argparse
import bisect
import glob
import importlib.util
import json
import re
import sys
from collections import Counter
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
if str(ROOT) not in sys.path:
    sys.path.insert(0, str(ROOT))

from realworld.records import _seq_hash, source_key, split_leaks, train_source_tokens  # noqa: E402

DEFAULT_FAMILIES = ("spectector", "safeside", "fastspec")   # R13
KS_LIMIT = 0.15
DEFAULT_ADD = [str(ROOT / "v54/data/benign_x86_64_*.jsonl"), str(ROOT / "v54/data/benign_riscv64_*.jsonl"),
               str(ROOT / "v54/data/realworld_*_train.jsonl")]
DEFAULT_EVAL = str(ROOT / "eval/data/realworld_*.jsonl")
DEFAULT_USAGE = ROOT / "realworld/usage.json"

# R37: explicit URL-substring -> catalogue-name aliases (checked after exact URL match fails)
ALIASES = [
    ("deb.debian.org", "Debian archive (main)"),
    ("snapshot.debian.org", "Debian archive (main)"),
    ("git.kernel.org", "Kernel `git log -S` search (method, not a dataset)"),
    ("github.com/ritvik2205/speculative_execution", "c_vulns (this repo)"),
]
# normalised URL -> catalogue name, for URLs that appear on more than one catalogue row
EXACT_PREF = {
    "github.com/spectector/spectector-benchmarks": "Spectector benchmarks",
}


def load(patterns):
    files = sorted({f for p in patterns for f in glob.glob(p)})
    return [json.loads(l) for f in files for l in open(f) if l.strip()]


def _with_prov(r):
    """split_leaks needs provenance; base rows have none, so they match on sequence hash only."""
    if "provenance" in r:
        return r
    c = dict(r)
    c["provenance"] = dict(url="base", commit_or_version="-")
    return c


def families_from_eval(evals):
    fams = set(DEFAULT_FAMILIES)
    for r in evals:
        reason = r.get("train_overlap_reason") or ""
        if reason.startswith("family:"):
            fams.add(reason.split(":", 1)[1].lower())
    return sorted(fams)


def _row_family(r, fams, ttok_of):
    toks = ttok_of(r)
    return next((f for f in fams if f in toks), None)


BENIGN_PER_ATTACK = 1.0   # R49


def cap_debian_benign(kept, adds, ratio):
    """R49: per arch, keep at most ratio x (attack rows of that arch) - (benign rows the base already has)
    Debian benign rows; round-robin over packages (group) in a fixed order so every package stays
    represented. -> (adds, {arch: n dropped})."""
    deb = [r for r in adds if r.get("source") == "debian_benign"]
    other = [r for r in adds if r.get("source") != "debian_benign"]
    allr = kept + other
    out, dropped = list(other), {}
    for arch in sorted({r.get("arch", "x86_64") for r in deb}):
        att = sum(1 for r in allr if r.get("arch", "x86_64") == arch and r["label"] != "BENIGN")
        ben = sum(1 for r in allr if r.get("arch", "x86_64") == arch and r["label"] == "BENIGN")
        room = max(0, int(ratio * att) - ben)
        by_pkg = {}
        for r in deb:
            if r.get("arch", "x86_64") == arch:
                by_pkg.setdefault(r["group"], []).append(r)
        queues = [by_pkg[g] for g in sorted(by_pkg)]
        pick, i = [], 0
        while len(pick) < room and any(queues):
            q = queues[i % len(queues)]
            if q:
                pick.append(q.pop(0))
            i += 1
        out += pick
        dropped[arch] = sum(1 for r in deb if r.get("arch", "x86_64") == arch) - len(pick)
    return out, dropped


def build(base, evals, additions, benign_per_attack=BENIGN_PER_ATTACK):
    """-> dict(pool, removed{source: n}, leaks, dup_dropped, benign_capped{arch: n})."""
    ehash = {_seq_hash(r) for r in evals}
    ekeys = set()
    for r in evals:
        p = r.get("provenance")
        if p:
            ekeys.add(source_key(r))
    fams = families_from_eval(evals)
    removed, kept = Counter(), []
    for r in base:
        if r.get("provenance"):
            if source_key(r) in ekeys:
                removed["source_key"] += 1
                continue
        if _seq_hash(r) in ehash:
            removed["hash"] += 1
            continue
        fam = _row_family(r, fams, lambda x: train_source_tokens([x]))
        if fam:
            removed[f"family:{fam}"] += 1
            continue
        kept.append(r)
    adds = [r for r in additions if not r.get("dup_of")]          # R25
    n_nodup = len(adds)
    capped = {}
    if benign_per_attack is not None:
        adds, capped = cap_debian_benign(kept, adds, benign_per_attack)
    pool = kept + adds
    leaks = split_leaks([_with_prov(r) for r in pool], evals)
    return dict(pool=pool, removed=dict(removed), leaks=leaks, dup_dropped=len(additions) - n_nodup,
                n_added=len(adds), benign_capped=capped)


def ks_stat(a, b):
    """Two-sample Kolmogorov-Smirnov D (max |ECDF_a - ECDF_b|)."""
    a, b = sorted(a), sorted(b)
    if not a or not b:
        return float("nan")
    d = 0.0
    for x in sorted(set(a) | set(b)):
        d = max(d, abs(bisect.bisect_right(a, x) / len(a) - bisect.bisect_right(b, x) / len(b)))
    return d


# R48: an arch with too few attack rows is compared against the proxy arches its benign was length-matched
# to (realworld/prepare_benign.sh: riscv64 -> riscv64 + arm64 attack rows)
LENGTH_PROXY = {"riscv64": ("riscv64", "arm64")}
MIN_ATTACK_FOR_KS = 50


def attack_ref_arches(pool, arch):
    n = sum(1 for r in pool if r.get("arch", "x86_64") == arch and r["label"] != "BENIGN")
    return LENGTH_PROXY.get(arch, (arch,)) if n < MIN_ATTACK_FOR_KS else (arch,)


MIN_BENIGN_FOR_KS = 20   # a KS on fewer benign rows is noise (R49 leaves ~6 riscv64 benign)


def gated_arches(pool):
    """Arches the per-arch length gate applies to: enough benign rows to compare."""
    out = []
    for arch in sorted({r.get("arch", "x86_64") for r in pool}):
        nb = sum(1 for r in pool if r.get("arch", "x86_64") == arch and r["label"] == "BENIGN")
        if nb >= MIN_BENIGN_FOR_KS:
            out.append(arch)
    return out


def length_ks(pool):
    """Benign-vs-attack window length KS per arch and overall (R34; proxy attack arches per R48)."""
    out = {}
    def lens(rs, benign):
        return [len(r["sequence"]) for r in rs if (r["label"] == "BENIGN") == benign]
    out["overall"] = ks_stat(lens(pool, True), lens(pool, False))
    for arch in sorted({r.get("arch", "x86_64") for r in pool}):
        ben = [r for r in pool if r.get("arch", "x86_64") == arch]
        ref = attack_ref_arches(pool, arch)
        att = [r for r in pool if r.get("arch", "x86_64") in ref]
        out[arch] = ks_stat(lens(ben, True), lens(att, False))
    return out


def median(xs):
    xs = sorted(xs)
    return xs[len(xs) // 2] if xs else float("nan")


# ------------------------------------------------------------------ usage / checklist
def _norm_url(u):
    u = u.strip().rstrip(".,;)").lower()
    u = re.sub(r"^https?://(www\.)?", "", u)
    u = re.sub(r"\.git(?=/|$)", "", u).split("?")[0].split("#")[0]
    return u.rstrip("/")


def _load_checklist_module():
    spec = importlib.util.spec_from_file_location("build_checklist", ROOT / "docs/data_sources/build_checklist.py")
    m = importlib.util.module_from_spec(spec)
    spec.loader.exec_module(m)
    return m


def catalogue_entries():
    m = _load_checklist_module()
    out = []
    for fname in m.STREAMS:
        p = m.HERE / fname
        if p.exists():
            out += [(n, u) for n, urls in m.row_urls(p) for u in (urls or [""])]   # URL-less rows stay alias targets
    return out


def _match(ru, cat, aliases, exact_pref):
    """Catalogue name for normalised record URL ru, or None (unmatched/ambiguous: reported, not guessed).
    Order: exact URL (one hit, or the explicit EXACT_PREF entry when several rows share the URL),
    then the explicit alias table, then repo-root prefix of a single deeper catalogue URL."""
    names = {n for n, _ in cat}
    exact = sorted({n for n, u in cat if u == ru})
    if len(exact) == 1:
        return exact[0]
    if len(exact) > 1:
        pref = exact_pref.get(ru)
        return pref if pref in exact else None
    for frag, name in aliases:
        if frag in ru and name in names:
            return name
    near = sorted({n for n, u in cat if u.startswith(ru + "/") or ru.startswith(u + "/")})
    if len(near) == 1:
        return near[0]
    shortest = sorted((len(u), n) for n, u in cat if u.startswith(ru + "/") or ru.startswith(u + "/"))
    if shortest and (len(shortest) == 1 or shortest[0][0] < shortest[1][0]):
        return shortest[0][1]
    return None


def usage_by_source(rows, catalogue, aliases=None, exact_pref=None):
    """Map each non-dup record to a catalogue name by provenance URL.
    -> ({name: [records, note]}, {unmatched source: records})."""
    aliases = ALIASES if aliases is None else aliases
    exact_pref = EXACT_PREF if exact_pref is None else exact_pref
    cat = [(n, _norm_url(u)) for n, u in catalogue]
    usage, unmatched, per = {}, Counter(), {}
    for r in rows:
        if r.get("dup_of"):
            continue
        hit = _match(_norm_url(r["provenance"]["url"]), cat, aliases, exact_pref)
        if hit is None:
            unmatched[r.get("source", "?")] += 1
            continue
        per.setdefault(hit, Counter())[r.get("source", "?")] += 1
    for name, c in per.items():
        usage[name] = [sum(c.values()), "; ".join(f"{s}: {n}" for s, n in sorted(c.items()))]
    return usage, dict(unmatched)


def main(argv=None):
    ap = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument("--base", required=True, help="allhw3 pool (v54/data/v55h_allhw3_train.jsonl)")
    ap.add_argument("--out", required=True)
    ap.add_argument("--eval-glob", nargs="+", default=[DEFAULT_EVAL])
    ap.add_argument("--add-glob", nargs="+", default=DEFAULT_ADD)
    ap.add_argument("--usage-out", type=Path, default=DEFAULT_USAGE)
    ap.add_argument("--length-ref-out", type=Path, default=None,
                    help="write the pool's non-BENIGN rows here (the attack-length reference for "
                         "benign_debian --from-existing --length-ref) and exit 0 before the gates")
    ap.add_argument("--length-ref-arch", nargs="+", default=None, metavar="ARCH",
                    help="with --length-ref-out: keep only attack rows of these arches")
    ap.add_argument("--benign-per-attack", type=float, default=BENIGN_PER_ATTACK,
                    help="R49: cap added Debian benign per arch at this x attack rows (minus base benign)")
    ap.add_argument("--allow-length-gap", nargs="+", default=[], metavar="ARCH",
                    help="arches whose benign-vs-attack length KS may exceed 0.15 (R36); every other arch fails")
    a = ap.parse_args(argv)

    base = [json.loads(l) for l in open(a.base) if l.strip()]
    evals = load(a.eval_glob)
    adds = load(a.add_glob)
    if not evals:
        print("FATAL: no eval rows", file=sys.stderr)
        return 3
    res = build(base, evals, adds, benign_per_attack=a.benign_per_attack)
    if res.get("benign_capped"):
        print(f"R49 Debian benign cap ({a.benign_per_attack} per attack row, per arch): dropped {res['benign_capped']}")
    pool = res["pool"]
    if a.length_ref_out:
        att = [r for r in pool if r["label"] != "BENIGN"
               and (not a.length_ref_arch or r.get("arch", "x86_64") in a.length_ref_arch)]
        a.length_ref_out.parent.mkdir(parents=True, exist_ok=True)
        with open(a.length_ref_out, "w") as f:
            for r in att:
                f.write(json.dumps({"label": r["label"], "sequence": r["sequence"]}) + "\n")
        print(f"wrote {len(att)} attack rows -> {a.length_ref_out}")
        return 0
    print(f"base {len(base)} -> kept {len(base) - sum(res['removed'].values())}; "
          f"removed {sum(res['removed'].values())}: {res['removed']}")
    print(f"added {res['n_added']} rows ({res['dup_dropped']} dup_of dropped); pool {len(pool)}; "
          f"labels {dict(Counter(r['label'] for r in pool))}")
    rc = 0
    if res["leaks"]:
        print(f"FATAL: {len(res['leaks'])} split leak(s) remain, e.g. {res['leaks'][:3]}", file=sys.stderr)
        rc = 1
    ks = length_ks(pool)
    for arch in ks:
        sub = pool if arch == "overall" else [r for r in pool if r.get("arch", "x86_64") == arch]
        ben = [len(r["sequence"]) for r in sub if r["label"] == "BENIGN"]
        ref = ("all",) if arch == "overall" else attack_ref_arches(pool, arch)
        att = [len(r["sequence"]) for r in (pool if arch == "overall" else
               [r for r in pool if r.get("arch", "x86_64") in ref]) if r["label"] != "BENIGN"]
        print(f"length KS {arch:8s} D={ks[arch]:.3f}  benign n={len(ben)} med={median(ben)}  "
              f"attack n={len(att)} med={median(att)}" + (f"  (attack ref: {'+'.join(ref)}, R48)"
                                                           if ref != (arch,) and arch != "overall" else ""))
    allowed = set(a.allow_length_gap)
    gated = set(gated_arches(pool))
    for arch, d in ks.items():
        if arch == "overall" or d != d or d <= KS_LIMIT:     # d != d: one class absent, nothing to compare
            continue
        if arch not in gated:
            print(f"NOTE: {arch} length KS {d:.3f} not gated (< {MIN_BENIGN_FOR_KS} benign rows)", file=sys.stderr)
            continue
        if arch in allowed:
            print(f"WARNING (allowed): {arch} length KS {d:.3f} > {KS_LIMIT}", file=sys.stderr)
        else:
            print(f"FATAL: {arch} benign-vs-attack length KS {d:.3f} > {KS_LIMIT}; re-window benign "
                  f"(realworld/prepare_benign.sh) or --allow-length-gap {arch}", file=sys.stderr)
            rc = rc or 4
    if rc:
        return rc
    # usage: eval-side rows + train-side additions, by catalogue name
    usage, unmatched = usage_by_source(evals + adds, catalogue_entries())
    a.usage_out.write_text(json.dumps(usage, indent=1, sort_keys=True) + "\n")
    print(f"usage: {len(usage)} catalogue sources matched -> {a.usage_out}; unmatched {unmatched}")
    Path(a.out).parent.mkdir(parents=True, exist_ok=True)
    with open(a.out, "w") as f:
        for r in pool:
            f.write(json.dumps(r) + "\n")
    print(f"wrote {a.out}")
    return 0


if __name__ == "__main__":
    sys.exit(main())
