"""Benign amd64 / riscv64 windows from Debian source packages (cross-built in the toolchain image).

The image is native arm64, so BOTH targets are cross builds: `dpkg --add-architecture <a>`,
`apt-get build-dep -a <a>`, `dpkg-buildpackage -a <a>`. A build failure is a logged skip for that
(package, arch, cc) cell, never a crash.
"""
import argparse
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
DEFAULT_SNAPSHOT = "20261101T000000Z"
DEFAULT_WORK = Path.home() / "specexec_realworld" / "debian"
CAP_PER_PACKAGE = 200
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
export DEB_CFLAGS_APPEND="-save-temps=obj -fasynchronous-unwind-tables"
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


def split_packages(pkgs, test_frac=0.2, seed=0):
    """Deterministic on the SET of packages: whole packages are held out."""
    names = sorted(set(pkgs))
    shuffled = names[:]
    random.Random(seed).shuffle(shuffled)
    k = max(1, round(len(names) * test_frac)) if names else 0
    ev = set(shuffled[:k])
    return [p for p in names if p not in ev], [p for p in names if p in ev]


def read_packages(path):
    out = []
    for l in Path(path).read_text().splitlines():
        l = l.split("#", 1)[0].strip()
        if l:
            out.append(l)
    return out


def records_from_asm(asm_items, arch, cc, pkg, version, snapshot, retrieved, cap=CAP_PER_PACKAGE, hi=WIN_HI):
    """asm_items: [(file, asm_text)]. Per function: drop mitigated, drop <WIN_LO instructions (R2),
    window, dedupe by normalised hash, cap per package."""
    arch = REC_ARCH.get(arch, arch)
    pin = snapshot if snapshot != "trixie" else f"trixie-{retrieved}"  # fallback: current trixie, dated
    tag = f"{pkg}_{version}@{pin}"
    prov = dict(url=f"https://snapshot.debian.org/archive/debian/{snapshot}/" if snapshot != "trixie"
                else "https://deb.debian.org/debian/", commit_or_version=tag,
                licence="per-package, see Debian copyright", retrieved=retrieved)
    seen, recs = set(), []
    for fname, text in asm_items:
        for fn, body in extract_named_functions(text).items():
            if has_mitigation(body):
                continue
            seq = normalise_for_arch(body, arch)
            if len(seq) < WIN_LO:
                continue
            for w in windows(seq, hi=hi):
                rec = make_record(w, "BENIGN", arch, f"debian:{pkg}", "debian_benign", prov,
                                  subset="benign", package=pkg, file=fname, function=fn,
                                  compiler=cc, opt="O2(debian)", safe=False,
                                  mitigation_detected=False, train_overlap=False)
                h = _seq_hash(rec)
                if h in seen:
                    continue
                seen.add(h)
                recs.append(rec)
    if len(recs) > cap:  # evenly spaced, deterministic: keeps coverage of the whole package
        recs = [recs[i * len(recs) // cap] for i in range(cap)]
    return recs


def build_package(pkg, arch, cc, snapshot, work=DEFAULT_WORK, keep=False, timeout=BUILD_TIMEOUT):
    """Cross-build one Debian source package; return (version, [(relpath, asm_text)]) or raise BuildSkip."""
    work = Path(work)
    cell = f"{pkg}-{arch}-{cc}"
    work.mkdir(parents=True, exist_ok=True)
    cdir = work / cell
    if cdir.exists():
        _rm(cdir)
    for f in (work / f"{cell}.fail",):
        f.unlink(missing_ok=True)
    name = f"specexec-deb-{uuid.uuid4().hex[:8]}"
    cmd = ["docker", "run", "--rm", "--name", name, "-v", f"{work}:/work",
           "-e", f"PKG={pkg}", "-e", f"ARCH={DEB_ARCH[arch]}", "-e", f"CC={cc}", "-e", f"SNAPSHOT={snapshot}",
           "-e", f"CELL={cell}", "-e", f"TRIPLE={TRIPLE[DEB_ARCH[arch]]}", IMAGE, "bash", "-c", BUILD_SH]
    try:
        subprocess.run(cmd, capture_output=True, text=True, timeout=timeout)
    except subprocess.TimeoutExpired:
        subprocess.run(["docker", "kill", name], capture_output=True)
        raise BuildSkip("timeout", f">{timeout}s")
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
    return version, items, partial


def _rm(path):
    shutil.rmtree(path, ignore_errors=True)
    if Path(path).exists():  # root-owned leftovers
        subprocess.run(["docker", "run", "--rm", "-v", f"{Path(path).parent}:/w", IMAGE,
                        "rm", "-rf", f"/w/{Path(path).name}"], capture_output=True)


def run(packages_file, arch, cc, snapshot, out_dir, eval_dir, work=DEFAULT_WORK, build_fn=None,
        only=None, log=print, win_hi=WIN_HI):
    build_fn = build_fn or (lambda pkg, a, c, s, w: build_package(pkg, a, c, s, w))
    rarch = REC_ARCH[arch]
    pkgs = read_packages(packages_file)
    train_pkgs, eval_pkgs = split_packages(pkgs)  # split on the FULL list, so it is identical for every cell
    todo = [p for p in pkgs if only is None or p in only]
    out_dir, eval_dir = Path(out_dir), Path(eval_dir)
    out_dir.mkdir(parents=True, exist_ok=True)
    eval_dir.mkdir(parents=True, exist_ok=True)
    train_out = out_dir / f"benign_{rarch}_{cc}.jsonl"
    eval_out = eval_dir / f"realworld_benign_{rarch}.jsonl"
    skip_out = out_dir / f"skipped_benign_{rarch}_{cc}.jsonl"
    # the eval file is shared by both compilers: replace only this cc's rows
    kept = []
    if eval_out.exists():
        kept = [l for l in open(eval_out) if json.loads(l).get("compiler") != cc]
    retrieved = date.today().isoformat()
    stats = {}
    with open(train_out, "w") as ft, open(skip_out, "w") as fs, open(eval_out, "w") as fe:
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
            recs = records_from_asm(items, arch, cc, pkg, version, snapshot, retrieved, hi=win_hi)
            held_out = pkg in eval_pkgs
            f = fe if held_out else ft
            for r in recs:
                f.write(json.dumps(r) + "\n")
            f.flush()
            stats[pkg] = (len(recs), held_out)
            log(f"  {pkg} {version}: {len(recs)} windows ({'eval' if held_out else 'train'}) "
                f"{time.time() - t0:.0f}s")
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
    ap.add_argument("--only", nargs="*", default=None)
    a = ap.parse_args(argv)
    stats = run(a.packages, a.arch, a.cc, a.snapshot, a.out_dir, a.eval_dir, a.work, only=a.only, win_hi=a.win_hi)
    print(f"{a.arch}/{a.cc}: train {sum(n for n, h in stats.values() if not h)} windows, "
          f"eval {sum(n for n, h in stats.values() if h)} windows, {len(stats)} packages built")


if __name__ == "__main__":
    main()
