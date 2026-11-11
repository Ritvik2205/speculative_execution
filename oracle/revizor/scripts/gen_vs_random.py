#!/usr/bin/env python3
"""Step 3 on the i5: violations per test case, learned generator vs Revizor's
random generator vs non-learned bars, at an equal budget.

Every arm goes through the SAME path: one `rvzr reproduce -t <program> -n
<inputs>` per program with a per-program data seed, same instruction-set spec,
same class config. The random arm's programs are made here by `rvzr generate`
with that config; the other arms come from gen/revizor_arms.py (in the repo).

  preflight  check the rvzr CLI has what this needs; run one replay program
  random     rvzr generate N programs per seed per class  -> <arms>/<CLASS>/random/s<seed>/
  run        execute every program not yet in runs.jsonl  (resumable)
  report     table: per class and arm, violations / programs, Wilson 95% CI,
             per-seed rates

Stdlib only. Needs root and the rvzr_executor module for `run`.
"""
import argparse
import glob
import hashlib
import json
import math
import os
import re
import subprocess
import sys
import time
from collections import defaultdict
from pathlib import Path

VIOLATION_MARKER = "Violations detected"
ARMS = ("random", "unigram", "mutation", "learned", "replay")


def classify(rc: int, output: str) -> str:
    if "Traceback" in output or "[ERROR]" in output:
        return "error"
    if VIOLATION_MARKER in output:
        return "violation"
    return "none" if rc == 0 else "error"


def wilson(k, n, z=1.96):
    if n == 0:
        return (0.0, 1.0)
    p = k / n
    d = 1 + z * z / n
    c = (p + z * z / (2 * n)) / d
    h = z * math.sqrt(p * (1 - p) / n + z * z / (4 * n * n)) / d
    return (max(0.0, c - h), min(1.0, c + h))


def programs(arms: Path, classes, arm_names=ARMS):
    """(class, arm, seed, path) for every program on disk, in a fixed order
    that interleaves arms so a partial run is still a fair comparison."""
    per = defaultdict(list)
    for cls in classes:
        for arm in arm_names:
            for sd in sorted(glob.glob(str(arms / cls / arm / "s*"))):
                seed = int(Path(sd).name[1:])
                files = sorted(glob.glob(os.path.join(sd, "**", "*.asm"), recursive=True))
                per[(cls, seed)].append([(cls, arm, seed, f) for f in files])
    out = []
    for key in sorted(per):
        lists = per[key]
        for i in range(max(map(len, lists), default=0)):
            out += [l[i] for l in lists if i < len(l)]
    return out


def data_seed(path: str) -> int:
    return int(hashlib.sha1(Path(path).name.encode() + Path(path).parent.name.encode())
               .hexdigest()[:6], 16)


def run_config(base_cfg: str, seed: int) -> str:
    keep = [l for l in base_cfg.splitlines() if not re.match(r"^\s*data_generator_seed\s*:", l)]
    return "\n".join(keep) + f"\ndata_generator_seed: {seed}\n"


def summarise(rows):
    t = defaultdict(lambda: defaultdict(lambda: {"n": 0, "violation": 0, "error": 0}))
    for r in rows:
        s = t[(r["class"], r["arm"])][r["seed"]]
        s["n"] += 1
        if r["verdict"] in ("violation", "error"):
            s[r["verdict"]] += 1
    return t


def report(rows) -> str:
    t = summarise(rows)
    out = ["| class | arm | programs | ran clean | violations | violations / clean [95% CI] | "
           "errors | per-seed rate |", "|---|---|---|---|---|---|---|---|"]
    for (cls, arm) in sorted(t, key=lambda k: (k[0], ARMS.index(k[1]) if k[1] in ARMS else 9)):
        seeds = t[(cls, arm)]
        n = sum(s["n"] for s in seeds.values())
        v = sum(s["violation"] for s in seeds.values())
        e = sum(s["error"] for s in seeds.values())
        clean = n - e
        a, b = wilson(v, clean)
        per = " ".join(f"{s['violation'] / max(1, s['n'] - s['error']):.3f}"
                       for _, s in sorted(seeds.items()))
        out.append(f"| {cls} | {arm} | {n} | {clean} | {v} | "
                   + (f"{v / clean:.3f} [{a:.3f}, {b:.3f}]" if clean else "—")
                   + f" | {e} | {per} |")
    return "\n".join(out)


def sh(cmd, timeout=None):
    try:
        p = subprocess.run(cmd, capture_output=True, text=True, timeout=timeout)
        return p.returncode, p.stdout + p.stderr
    except subprocess.TimeoutExpired as e:
        return -9, f"[ERROR] timeout after {timeout}s\n{e.stdout or ''}"


def health_rc(new_rows, max_error_frac=0.5) -> int:
    """3 when more than half of the runs of THIS invocation errored: a smoke
    run must not hand a broken set-up on to a multi-hour run."""
    if not new_rows:
        return 0
    errs = sum(r["verdict"] == "error" for r in new_rows)
    return 3 if errs / len(new_rows) > max_error_frac else 0


def cmd_preflight(a):
    ok = True
    for sub, need in (("reproduce", ["--testcase", "--num-inputs"]),
                      ("generate", ["--seed", "--num-test-cases", "--working-directory"])):
        rc, out = sh([a.rvzr, sub, "--help"])
        missing = [n for n in need if n not in out]
        print(f"rvzr {sub}: " + ("ok" if not missing else f"MISSING {missing}"))
        ok &= not missing
    if not ok:
        print("FATAL: this rvzr does not have the options the runner uses "
              "(upstream sca-fuzzer main has them). Nothing was run.")
        return 1
    arms = Path(a.arms)
    for cls in a.classes:
        rep = sorted(glob.glob(str(arms / cls / "replay" / "s0" / "*.asm")))
        if not rep:
            print(f"FATAL: no replay programs under {arms / cls}")
            return 1
        cfg = arms / cls / "_preflight.yaml"
        cfg.write_text(run_config((arms / cls / "config.yaml").read_text(), 1))
        rc, out = sh([a.rvzr, "reproduce", "-s", a.spec, "-c", str(cfg), "-t", rep[0],
                      "-n", str(a.inputs)], timeout=a.timeout)
        v = classify(rc, out)
        print(f"{cls}: replay program {Path(rep[0]).name} -> {v}")
        if v == "error":
            print(out[-1500:])
            return 1
    print("preflight ok")
    return 0


def cmd_random(a):
    arms = Path(a.arms)
    for cls in a.classes:
        cfg = arms / cls / "config.yaml"
        for seed in a.seeds:
            d = arms / cls / "random" / f"s{seed}"
            have = glob.glob(str(d / "**" / "*.asm"), recursive=True)
            if len(have) >= a.n:
                print(f"{cls} random s{seed}: {len(have)} programs already there")
                continue
            d.mkdir(parents=True, exist_ok=True)
            rc, out = sh([a.rvzr, "generate", "-s", a.spec, "-c", str(cfg), "-r", str(1000 + seed),
                          "-n", str(a.n), "-i", "1", "-w", str(d), "--permit-overwrite"])
            got = glob.glob(str(d / "**" / "*.asm"), recursive=True)
            print(f"{cls} random s{seed}: rc={rc}, {len(got)} programs")
            if not got:
                print(out[-1500:])
                return 1
    return 0


def cmd_run(a):
    arms, out = Path(a.arms), Path(a.out)
    out.mkdir(parents=True, exist_ok=True)
    res = out / "runs.jsonl"
    done = set()
    if res.exists():
        done = {json.loads(l)["path"] for l in open(res) if l.strip()}
    todo = [p for p in programs(arms, a.classes) if os.path.relpath(p[3], arms) not in done]
    if a.limit:
        todo = todo[: a.limit]
    print(f"{len(done)} done, {len(todo)} to run")
    cfgs = {cls: (arms / cls / "config.yaml").read_text() for cls in a.classes}
    new = []
    with open(res, "a") as f:
        for i, (cls, arm, seed, path) in enumerate(todo):
            ds = data_seed(path)
            cfg = out / "_run.yaml"
            cfg.write_text(run_config(cfgs[cls], ds))
            t0 = time.time()
            rc, text = sh([a.rvzr, "reproduce", "-s", a.spec, "-c", str(cfg), "-t", path,
                           "-n", str(a.inputs)], timeout=a.timeout)
            v = classify(rc, text)
            rec = {"class": cls, "arm": arm, "seed": seed, "path": os.path.relpath(path, arms),
                   "verdict": v, "rc": rc, "data_seed": ds, "inputs": a.inputs,
                   "secs": round(time.time() - t0, 2)}
            if v == "error":
                rec["tail"] = text[-600:]
            f.write(json.dumps(rec) + "\n")
            f.flush()
            new.append(rec)
            if i % 25 == 24:
                print(f"[{i + 1}/{len(todo)}] last: {cls} {arm} s{seed} {v}", flush=True)
    cmd_report(a)
    rc = health_rc(new)
    if rc:
        tails = [r.get("tail", "") for r in new if r["verdict"] == "error"]
        print(f"FATAL: {len(tails)}/{len(new)} runs errored. Last error output:\n{tails[-1]}")
    return rc


def cmd_report(a):
    out = Path(a.out)
    rows = [json.loads(l) for l in open(out / "runs.jsonl") if l.strip()]
    env = {k: (open(p).read().strip() if os.path.exists(p) else "n/a") for k, p in (
        ("smt", "/sys/devices/system/cpu/smt/control"),
        ("spec_store_bypass", "/sys/devices/system/cpu/vulnerabilities/spec_store_bypass"),
        ("mds", "/sys/devices/system/cpu/vulnerabilities/mds"),
        ("l1tf", "/sys/devices/system/cpu/vulnerabilities/l1tf"))}
    md = ("# Generator vs random on hardware\n\n"
          f"One `rvzr reproduce -t <program> -n <inputs>` per program; {len(rows)} runs. "
          f"Host: {env}.\n\n" + report(rows) + "\n")
    (out / "REPORT.md").write_text(md)
    print(md)
    return 0


def main(argv=None):
    ap = argparse.ArgumentParser(description=__doc__.split("\n")[0])
    ap.add_argument("cmd", choices=["preflight", "random", "run", "report"])
    ap.add_argument("--arms", required=True)
    ap.add_argument("--out", default=None)
    ap.add_argument("--rvzr", default="rvzr")
    ap.add_argument("--spec", default="base_x86.json")
    ap.add_argument("--classes", nargs="+", default=["SPECTRE_V1"])
    ap.add_argument("--seeds", type=int, nargs="+", default=[0, 1, 2, 3, 4])
    ap.add_argument("--n", type=int, default=200, help="random programs per seed")
    ap.add_argument("--inputs", type=int, default=100)
    ap.add_argument("--timeout", type=int, default=300)
    ap.add_argument("--limit", type=int, default=0)
    a = ap.parse_args(argv)
    a.out = a.out or os.path.join(a.arms, "_results")
    return {"preflight": cmd_preflight, "random": cmd_random, "run": cmd_run,
            "report": cmd_report}[a.cmd](a)


if __name__ == "__main__":
    sys.exit(main())
