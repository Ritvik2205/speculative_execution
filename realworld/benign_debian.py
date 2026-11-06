"""Benign amd64 / riscv64 windows from Debian source packages (cross-built in the toolchain image).

The image is native arm64, so BOTH targets are cross builds: `dpkg --add-architecture <a>`,
`apt-get build-dep -a <a>`, `dpkg-buildpackage -a <a>`. A build failure is a logged skip for that
(package, arch, cc) cell, never a crash.
"""
import argparse
import hashlib
import json
import random
import shutil
import subprocess
import time
import uuid
from datetime import date
from pathlib import Path

from realworld.asm import extract_named_functions
from realworld.records import WIN_HI, WIN_LO, _seq_hash, has_mitigation, make_record, windows
from realworld.repos import normalise_for_arch
from realworld.toolchain import IMAGE

ROOT = Path(__file__).resolve().parent.parent
DEFAULT_PACKAGES = Path(__file__).parent / "benign_packages.txt"
DEFAULT_SNAPSHOT = "trixie"  # matches the asm cache (snapshot.txt); a snapshot.debian.org id is still accepted
DEFAULT_LENGTH_REF = ROOT / "eval" / "data" / "revizor_hwlabel_variants.jsonl"
DEFAULT_CACHE = Path.home() / "specexec_realworld" / "debian_asm"
DEFAULT_WORK = Path.home() / "specexec_realworld" / "debian"
CAP_PER_PACKAGE = 200
# R40: packages whose name is a path component of these pools' source_file/source are never held out
DEFAULT_BASE_POOLS = (ROOT / "v54" / "data" / "v54_train.jsonl", ROOT / "v54" / "data" / "v55h_allhw_train.jsonl")
OPTS = ("default", "O0", "O2")
HARDENING = ("on", "off")
DEB_ARCH = {"amd64": "amd64", "x86_64": "amd64", "riscv64": "riscv64"}
REC_ARCH = {"amd64": "x86_64", "x86_64": "x86_64", "riscv64": "riscv64"}
TRIPLE = {"amd64": "x86_64-linux-gnu", "riscv64": "riscv64-linux-gnu"}
BUILD_TIMEOUT = 30 * 60

# Runs inside the toolchain image. Inputs via env: PKG ARCH CC SNAPSHOT CELL (dir under /work).
BUILD_SH = r"""
set -u
cd /work
fail() { echo "$1" > /work/$CELL.fail; exit 0; }
if [ "$SNAPSHOT" = "trixie" ]; then URI=http://deb.debian.org/debian/; else URI=http://snapshot.debian.org/archive/debian/$SNAPSHOT/; fi
cat > /etc/apt/sources.list.d/debian.sources <<EOT
Types: deb deb-src
URIs: $URI
Suites: trixie
Components: main
Signed-By: /usr/share/keyrings/debian-archive-keyring.pgp
EOT
dpkg --add-architecture $ARCH
APT="apt-get -o Acquire::Retries=8 -o Acquire::http::Timeout=60 -o Acquire::Queue-Mode=access -o Acquire::http::Pipeline-Depth=0 -o Acquire::Check-Valid-Until=false"
$APT update >/dev/null 2>&1 || fail "apt_update"
mkdir -p /work/$CELL/src && cd /work/$CELL/src
$APT source $PKG >/work/$CELL/source.log 2>&1 || fail "source_fetch"
cd /work/$CELL/src/*/ || fail "source_dir"
dpkg-parsechangelog -S Version > /work/$CELL/version.txt
PROFILES=nobiarch,nocheck,nodoc,cross
$APT -o APT::Build-Profiles=$PROFILES build-dep -y -a $ARCH $PKG >/work/$CELL/builddep.log 2>&1 || fail "build_dep"
export DEB_BUILD_OPTIONS="nocheck nodoc parallel=${JOBS:-6}"
# R41 build style: OPT=O0|O2 is appended AFTER the default flags (last -O wins); HARDENING=off drops dpkg's
# hardening set (the STRIP lines catch packages whose debian/rules re-export DEB_BUILD_MAINT_OPTIONS)
OPTFLAG=""
case "${OPT:-default}" in O0) OPTFLAG="-O0" ;; O2) OPTFLAG="-O2" ;; esac
export DEB_CFLAGS_APPEND="-save-temps=obj -fasynchronous-unwind-tables $OPTFLAG"
[ -n "$OPTFLAG" ] && export DEB_CXXFLAGS_APPEND="$OPTFLAG"
if [ "${HARDENING:-on}" = "off" ]; then
  export DEB_BUILD_MAINT_OPTIONS=hardening=-all
  HSTRIP="-fstack-protector-strong -fstack-protector -fstack-clash-protection -fcf-protection"
  export DEB_CFLAGS_STRIP="$HSTRIP" DEB_CXXFLAGS_STRIP="$HSTRIP"
  export DEB_CPPFLAGS_STRIP="-D_FORTIFY_SOURCE=2 -D_FORTIFY_SOURCE=3"
fi
if [ "$CC" = "clang" ]; then
  mkdir -p /shim
  for n in gcc cc; do
    printf '#!/bin/sh\nexec clang --target=$TRIPLE --sysroot=/usr/$TRIPLE --gcc-toolchain=/usr "$@"\n' > /shim/$TRIPLE-$n
    chmod +x /shim/$TRIPLE-$n
  done
  for n in g++ c++; do
    printf '#!/bin/sh\nexec clang++ --target=$TRIPLE --sysroot=/usr/$TRIPLE --gcc-toolchain=/usr "$@"\n' > /shim/$TRIPLE-$n
    chmod +x /shim/$TRIPLE-$n
  done
  export PATH=/shim:$PATH
fi
export CC=$TRIPLE-gcc CXX=$TRIPLE-g++
# packages that call ./configure without --host (e.g. zlib's minizip) would otherwise believe they build natively
export host_alias=$TRIPLE
dpkg-buildpackage -P$PROFILES -a $ARCH -b -uc -us -d >/work/$CELL/build.log 2>&1 || echo build_failed > /work/$CELL/partial.txt
# harvest every .s the compiler emitted, even if a later link/packaging step failed
mkdir -p /work/$CELL/asm
find . -name '*.s' | while read f; do mkdir -p /work/$CELL/asm/$(dirname "$f"); cp "$f" /work/$CELL/asm/"$f"; done
if [ -f /work/$CELL/partial.txt ] && [ -z "$(ls -A /work/$CELL/asm)" ]; then fail "build_failed"; fi
rm -rf /work/$CELL/src
"""


class BuildSkip(RuntimeError):
    def __init__(self, reason, detail=""):
        super().__init__(f"{reason}: {detail}")
        self.reason, self.detail = reason, detail


def split_packages(pkgs, test_frac=0.2, seed=0, exclude=()):
    """Deterministic on the SET of packages (and of `exclude`): whole packages are held out.
    R40: packages in `exclude` (their C source is already in the base/train pool) always go to
    train; the held-out k = round(test_frac * all packages) is the first k NON-excluded names of the
    same shuffle as before (so excluding a package only pulls the next one in; membership otherwise kept)."""
    names = sorted(set(pkgs))
    excl = set(exclude)
    shuffled = names[:]
    random.Random(seed).shuffle(shuffled)
    shuffled = [p for p in shuffled if p not in excl]
    k = min(len(shuffled), max(1, round(len(names) * test_frac))) if names else 0
    ev = set(shuffled[:k])
    return [p for p in names if p not in ev], [p for p in names if p in ev]


def base_pool_packages(pkgs, pool_paths):
    """R40: the packages whose name is a path component of any base-pool row's source_file/source."""
    want = set(pkgs)
    hit = set()
    for path in pool_paths:
        with open(path) as f:   # a missing pool is an error: it would silently change the split
            for l in f:
                if not l.strip():
                    continue
                r = json.loads(l)
                for k in ("source_file", "source"):
                    v = r.get(k)
                    if isinstance(v, str):
                        hit.update(c for c in v.split("/") if c in want)
    return hit


def style_suffix(opt="default", hardening="on"):
    """'' for the Debian default build; else e.g. '_O0_hoff' (file names)."""
    return "" if (opt, hardening) == ("default", "on") else f"_{opt}_h{hardening}"


def cell_name(pkg, arch, cc, opt="default", hardening="on"):
    return f"{pkg}-{arch}-{cc}" + style_suffix(opt, hardening).replace("_", "-")


def opt_label(opt="default", hardening="on"):
    o = "O2" if opt == "default" else opt
    return f"{o}(debian)" if hardening == "on" and opt == "default" else f"{o}(debian,hardening={hardening})"


# R47: held-out eval functions go down to the scorer's floor (score_realworld.MIN_INSTR, R42), so
# short leak functions have length-matched benign counterparts; train keeps R2's 25.
EVAL_MIN_INSTR = 10


def read_packages(path):
    out = []
    for l in Path(path).read_text().splitlines():
        l = l.split("#", 1)[0].strip()
        if l:
            out.append(l)
    return out


def read_length_ref(path):
    """Instruction counts of the non-BENIGN rows of the reference pool (the attack-length histogram)."""
    out = []
    for l in open(path):
        r = json.loads(l)
        if r.get("label") != "BENIGN" and r.get("sequence"):
            out.append(len(r["sequence"]))
    if not out:
        raise ValueError(f"no non-BENIGN rows in {path}")
    return out


def tile_windows(seq, length_ref, key):
    """R23: non-overlapping tiles whose lengths are drawn from the empirical reference histogram,
    each capped at the remaining function length. RNG seeded from the function's source key.
    Stride = window length (no overlap). A tail shorter than min(smallest reference length, 25) is dropped."""
    rng = random.Random(int.from_bytes(hashlib.sha256(key.encode()).digest()[:8], "big"))
    lo = min(min(length_ref), WIN_LO)
    out, pos = [], 0
    while len(seq) - pos >= lo:
        n = min(rng.choice(length_ref), len(seq) - pos)
        out.append(seq[pos:pos + n])
        pos += n
    return out


def records_from_asm(asm_items, arch, cc, pkg, version, snapshot, retrieved, cap=CAP_PER_PACKAGE, hi=WIN_HI,
                     length_ref=None, whole=False, opt="O2(debian)"):
    """asm_items: [(file, asm_text)]. Per function: drop mitigated, drop <WIN_LO instructions (R2),
    window (whole=True: the whole function is ONE record -- held-out eval, R39; the scorer windows it
    exactly like an attack), dedupe by normalised hash, cap per package (evenly spaced)."""
    arch = REC_ARCH.get(arch, arch)
    pin = snapshot if snapshot != "trixie" else f"trixie-{retrieved}"  # fallback: current trixie, dated
    tag = f"{pkg}_{version}@{pin}"
    prov = dict(url=f"https://snapshot.debian.org/archive/debian/{snapshot}/" if snapshot != "trixie"
                else "https://deb.debian.org/debian/", commit_or_version=tag,
                licence="per-package, see Debian copyright", retrieved=retrieved)
    seen, recs = set(), []
    for fname, text in asm_items:
        for fn, body in extract_named_functions(text).items():
            if has_mitigation(body, arch):
                continue
            seq = normalise_for_arch(body, arch)
            if len(seq) < (EVAL_MIN_INSTR if whole else WIN_LO):
                continue
            if whole:
                wins = [seq]
            elif length_ref:
                wins = tile_windows(seq, length_ref, f"{prov['url']}@{tag}#{fname}:{fn}")
            else:
                wins = windows(seq, hi=hi)
            for w in wins:
                rec = make_record(w, "BENIGN", arch, f"debian:{pkg}", "debian_benign", prov,
                                  subset="benign", package=pkg, file=fname, function=fn,
                                  compiler=cc, opt=opt, safe=False,
                                  mitigation_detected=False, train_overlap=False,
                                  unit="function" if whole else "window")
                h = _seq_hash(rec)
                if h in seen:
                    continue
                seen.add(h)
                recs.append(rec)
    if len(recs) > cap:  # evenly spaced, deterministic: keeps coverage of the whole package
        recs = [recs[i * len(recs) // cap] for i in range(cap)]
    return recs


APT_VERSION_SH = r"""
cat > /etc/apt/sources.list.d/debian.sources <<EOT
Types: deb-src
URIs: $URI
Suites: trixie
Components: main
Signed-By: /usr/share/keyrings/debian-archive-keyring.pgp
EOT
apt-get -o Acquire::Retries=5 -o Acquire::Check-Valid-Until=false update >/dev/null 2>&1 || exit 1
apt-cache showsrc $PKG | awk '/^Version:/{print $2; exit}'
"""


def apt_source_version(pkg, snapshot):
    """Version apt resolves for `pkg` source in the requested snapshot (or current trixie)."""
    uri = "http://deb.debian.org/debian/" if snapshot == "trixie" else \
        f"http://snapshot.debian.org/archive/debian/{snapshot}/"
    r = subprocess.run(["docker", "run", "--rm", "-e", f"PKG={pkg}", "-e", f"URI={uri}", IMAGE, "bash", "-c",
                        APT_VERSION_SH], capture_output=True, text=True, timeout=300)
    v = r.stdout.strip()
    if r.returncode != 0 or not v:
        raise RuntimeError(f"apt version lookup failed for {pkg}: {r.stderr[-200:]}")
    return v


def cache_lookup(cpath, pkg, snapshot, version_fn=None, log=print):
    """Return (version, items, partial) from the cache, or None on a miss (missing, other snapshot,
    other package version, or unverifiable). Misses print a notice and the caller rebuilds."""
    version_fn = version_fn or apt_source_version
    if not (cpath / "version.txt").exists():
        return None
    cached_v = (cpath / "version.txt").read_text().strip()
    cached_s = (cpath / "snapshot.txt").read_text().strip() if (cpath / "snapshot.txt").exists() else None
    if cached_s != snapshot:
        log(f"  cache miss {pkg}: cached snapshot {cached_s!r} != requested {snapshot!r}; rebuilding")
        return None
    try:
        want_v = version_fn(pkg, snapshot)
    except Exception as ex:
        log(f"  cache miss {pkg}: cannot verify version ({ex}); rebuilding")
        return None
    if want_v != cached_v:
        log(f"  cache miss {pkg}: cached version {cached_v} != apt {want_v}; rebuilding")
        return None
    items = [(str(p.relative_to(cpath / "asm")), p.read_text(errors="replace"))
             for p in sorted((cpath / "asm").rglob("*.s"))]
    if not items:
        return None
    partial = (cpath / "partial.txt").read_text() if (cpath / "partial.txt").exists() else ""
    return cached_v, items, partial


def build_package(pkg, arch, cc, snapshot, work=DEFAULT_WORK, keep=False, timeout=BUILD_TIMEOUT,
                  cache=None, from_existing=False, version_fn=None, opt="default", hardening="on"):
    """Cross-build one Debian source package; return (version, [(relpath, asm_text)]) or raise BuildSkip."""
    work = Path(work)
    cell = cell_name(pkg, arch, cc, opt, hardening)
    cpath = Path(cache) / cell if cache else None
    if from_existing and cpath:
        hit = cache_lookup(cpath, pkg, snapshot, version_fn)
        if hit:
            return hit
    work.mkdir(parents=True, exist_ok=True)
    cdir = work / cell
    if cdir.exists():
        _rm(cdir)
    for f in (work / f"{cell}.fail",):
        f.unlink(missing_ok=True)
    name = f"specexec-deb-{uuid.uuid4().hex[:8]}"
    cmd = ["docker", "run", "--rm", "--name", name, "-v", f"{work}:/work",
           "-e", f"PKG={pkg}", "-e", f"ARCH={DEB_ARCH[arch]}", "-e", f"CC={cc}", "-e", f"SNAPSHOT={snapshot}",
           "-e", f"CELL={cell}", "-e", f"TRIPLE={TRIPLE[DEB_ARCH[arch]]}", "-e", f"OPT={opt}",
           "-e", f"HARDENING={hardening}", IMAGE, "bash", "-c", BUILD_SH]
    try:
        subprocess.run(cmd, capture_output=True, text=True, timeout=timeout)
    except subprocess.TimeoutExpired:
        raise BuildSkip("timeout", f">{timeout}s")
    finally:  # timeout / Ctrl-C: `--rm` only fires when the container exits by itself
        subprocess.run(["docker", "rm", "-f", name], capture_output=True)
    fail = work / f"{cell}.fail"
    if fail.exists():
        reason = fail.read_text().strip()
        fail.unlink()
        logname = {"build_dep": "builddep.log", "build_failed": "build.log", "source_fetch": "source.log"}.get(reason)
        detail = ""
        if logname and (cdir / logname).exists():
            detail = "\n".join((cdir / logname).read_text(errors="replace").splitlines()[-12:])
        raise BuildSkip(reason, detail)
    partial = ""
    if (cdir / "partial.txt").exists():
        partial = "later build step failed; kept .s files emitted before the failure\n" + "\n".join(
            (cdir / "build.log").read_text(errors="replace").splitlines()[-4:])
    try:
        version = (cdir / "version.txt").read_text().strip()
        items = [(str(p.relative_to(cdir / "asm")), p.read_text(errors="replace"))
                 for p in sorted((cdir / "asm").rglob("*.s"))]
    except FileNotFoundError as ex:
        raise BuildSkip("no_output", str(ex))
    finally:
        if not keep:
            _rm(cdir)
    if not items:
        raise BuildSkip("no_asm", "build succeeded but produced no .s files")
    if cpath:  # keep extracted asm so later re-windowing needs no rebuild
        _rm(cpath)
        (cpath / "asm").mkdir(parents=True)
        for rel, text in items:
            (cpath / "asm" / rel).parent.mkdir(parents=True, exist_ok=True)
            (cpath / "asm" / rel).write_text(text)
        (cpath / "version.txt").write_text(version)
        (cpath / "snapshot.txt").write_text(snapshot)
        if partial:
            (cpath / "partial.txt").write_text(partial)
    return version, items, partial


def _rm(path):
    shutil.rmtree(path, ignore_errors=True)
    if Path(path).exists():  # root-owned leftovers
        subprocess.run(["docker", "run", "--rm", "-v", f"{Path(path).parent}:/w", IMAGE,
                        "rm", "-rf", f"/w/{Path(path).name}"], capture_output=True)


def run(packages_file, arch, cc, snapshot, out_dir, eval_dir, work=DEFAULT_WORK, build_fn=None,
        only=None, log=print, win_hi=WIN_HI, length_ref=None,
        cache=DEFAULT_CACHE, from_existing=False, base_pools=DEFAULT_BASE_POOLS, opt="default", hardening="on"):
    build_fn = build_fn or (lambda pkg, a, c, s, w: build_package(pkg, a, c, s, w, cache=cache, from_existing=from_existing,
                                                                  opt=opt, hardening=hardening))
    rarch = REC_ARCH[arch]
    ref_lens = read_length_ref(length_ref) if length_ref else None
    pkgs = read_packages(packages_file)
    excl = base_pool_packages(pkgs, base_pools)
    if excl:
        log(f"  R40: never held out (in base pool): {sorted(excl)}")
    # split on the FULL list, so it is identical for every cell
    train_pkgs, eval_pkgs = split_packages(pkgs, exclude=excl)
    default_style = (opt, hardening) == ("default", "on")
    # held-out eval stays the Debian default build: other styles build train packages only
    todo = [p for p in pkgs if (only is None or p in only) and (default_style or p not in eval_pkgs)]
    out_dir, eval_dir = Path(out_dir), Path(eval_dir)
    out_dir.mkdir(parents=True, exist_ok=True)
    sfx = style_suffix(opt, hardening)
    olabel = opt_label(opt, hardening)
    train_out = out_dir / f"benign_{rarch}_{cc}{sfx}.jsonl"
    eval_out = eval_dir / f"realworld_benign_{rarch}.jsonl"
    skip_out = out_dir / f"skipped_benign_{rarch}_{cc}{sfx}.jsonl"
    # the eval file is shared by both compilers: replace only this cc's rows
    kept = []
    if default_style:
        eval_dir.mkdir(parents=True, exist_ok=True)
        if eval_out.exists():
            kept = [l for l in open(eval_out) if json.loads(l).get("compiler") != cc]
    retrieved = date.today().isoformat()
    stats = {}
    fe = open(eval_out, "w") if default_style else None
    with open(train_out, "w") as ft, open(skip_out, "w") as fs:
        if fe:
            fe.writelines(kept)
            fe.flush()
        for pkg in todo:
            t0 = time.time()
            try:
                version, items, *rest = build_fn(pkg, arch, cc, snapshot, work)
                if rest and rest[0]:
                    fs.write(json.dumps(dict(package=pkg, arch=rarch, compiler=cc, reason="build_partial",
                                             detail=rest[0])) + "\n")
                    fs.flush()
            except BuildSkip as ex:
                fs.write(json.dumps(dict(package=pkg, arch=rarch, compiler=cc, reason=ex.reason,
                                         detail=ex.detail)) + "\n")
                fs.flush()
                log(f"  skip {pkg} {rarch}/{cc} {ex.reason} ({time.time() - t0:.0f}s)")
                continue
            except Exception as ex:  # a package must never take down the run
                fs.write(json.dumps(dict(package=pkg, arch=rarch, compiler=cc, reason="error",
                                         detail=repr(ex))) + "\n")
                fs.flush()
                log(f"  skip {pkg} {rarch}/{cc} error {ex!r}")
                continue
            held_out = pkg in eval_pkgs
            recs = records_from_asm(items, arch, cc, pkg, version, snapshot, retrieved, hi=win_hi,
                                    length_ref=None if held_out else ref_lens, whole=held_out, opt=olabel)
            f = fe if held_out else ft
            for r in recs:
                f.write(json.dumps(r) + "\n")
            f.flush()
            stats[pkg] = (len(recs), held_out)
            log(f"  {pkg} {version}: {len(recs)} {'functions (eval)' if held_out else 'windows (train)'} "
                f"{time.time() - t0:.0f}s")
    if fe:
        fe.close()
    return stats


def main(argv=None):
    ap = argparse.ArgumentParser()
    ap.add_argument("--packages", type=Path, default=DEFAULT_PACKAGES)
    ap.add_argument("--arch", choices=["amd64", "riscv64"], required=True)
    ap.add_argument("--cc", choices=["gcc", "clang"], required=True)
    ap.add_argument("--snapshot", default=DEFAULT_SNAPSHOT, help="snapshot.debian.org id, or 'trixie' for current")
    ap.add_argument("--out-dir", type=Path, default=ROOT / "v54" / "data")
    ap.add_argument("--eval-dir", type=Path, default=ROOT / "eval" / "data")
    ap.add_argument("--work", type=Path, default=DEFAULT_WORK)
    ap.add_argument("--win-hi", type=int, default=WIN_HI, help="max window length (default 45, per the plan)")
    ap.add_argument("--length-ref", type=Path, default=DEFAULT_LENGTH_REF,
                    help="pool whose non-BENIGN row lengths define the TRAIN window-length histogram (R23)")
    ap.add_argument("--from-existing", action="store_true", help="re-extract from cached .s files, build only what is missing")
    ap.add_argument("--only", nargs="*", default=None)
    ap.add_argument("--cache", type=Path, default=DEFAULT_CACHE, help="extracted-asm cache dir (--from-existing reads it)")
    ap.add_argument("--opt", choices=OPTS, default="default",
                    help="default = Debian's flags (-O2); O0/O2 are appended after them (R41)")
    ap.add_argument("--hardening", choices=HARDENING, default="on",
                    help="off = DEB_BUILD_MAINT_OPTIONS=hardening=-all (R41). Non-default styles build TRAIN packages only")
    ap.add_argument("--base-pool", type=Path, nargs="*", default=list(DEFAULT_BASE_POOLS),
                    help="R40: packages named in these pools' source paths are never held out")
    a = ap.parse_args(argv)
    stats = run(a.packages, a.arch, a.cc, a.snapshot, a.out_dir, a.eval_dir, a.work, only=a.only, win_hi=a.win_hi,
                length_ref=a.length_ref, from_existing=a.from_existing, cache=a.cache, base_pools=a.base_pool,
                opt=a.opt, hardening=a.hardening)
    print(f"{a.arch}/{a.cc}{style_suffix(a.opt, a.hardening)}: train {sum(n for n, h in stats.values() if not h)} windows, "
          f"eval {sum(n for n, h in stats.values() if h)} functions, {len(stats)} packages built")


if __name__ == "__main__":
    main()
