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
  adaptive   the feedback arm (adaptive_arm.py): generated online from outcomes
  minimize   first violation(s) of each campaign -> minimal core; counts distinct
             cores and cores not contained in any training program (slow)
  report     campaign level (primary): violations and tests to first violation
             per campaign, each arm against random with A12 and Mann-Whitney;
             pooled per program (secondary): violations / programs, Wilson CI

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
ARMS = ("random", "unigram", "mutation", "learned", "adaptive", "replay")


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


def campaigns(rows):
    """One campaign per (class, arm, seed): its programs in index order.
    `first` is the 1-based position of the first violation among the programs
    that ran without error, n+1 if there was none (censored)."""
    by = defaultdict(lambda: defaultdict(list))
    for r in rows:
        by[(r["class"], r["arm"])][r["seed"]].append(r)
    out = {}
    for key, seeds in by.items():
        out[key] = {}
        for seed, rs in seeds.items():
            rs = sorted(rs, key=lambda r: r["path"])
            clean = [r for r in rs if r["verdict"] != "error"]
            hits = [i for i, r in enumerate(clean, 1) if r["verdict"] == "violation"]
            out[key][seed] = {"n": len(rs), "errors": len(rs) - len(clean),
                              "violations": len(hits), "first": hits[0] if hits else len(clean) + 1}
    return out


def a12(x, y) -> float:
    """Vargha-Delaney A12: probability that a draw from x exceeds one from y
    (ties count half). 0.5 = no difference."""
    gt = sum(a > b for a in x for b in y)
    eq = sum(a == b for a in x for b in y)
    return (gt + 0.5 * eq) / (len(x) * len(y))


def mann_whitney_p(x, y) -> float:
    """Two-sided Mann-Whitney U p-value, normal approximation with tie and
    continuity correction (what scipy calls method="asymptotic")."""
    n, m = len(x), len(y)
    allv = sorted(x + y)
    rank = {}
    i = 0
    while i < len(allv):
        j = i
        while j < len(allv) and allv[j] == allv[i]:
            j += 1
        rank[allv[i]] = (i + 1 + j) / 2
        i = j
    u = sum(rank[v] for v in x) - n * (n + 1) / 2
    ties = sum(c ** 3 - c for c in (allv.count(v) for v in set(allv)))
    N = n + m
    var = n * m / 12 * ((N + 1) - ties / (N * (N - 1)))
    if var <= 0:
        return 1.0
    z = (abs(u - n * m / 2) - 0.5) / math.sqrt(var)
    return max(0.0, min(1.0, math.erfc(max(z, 0.0) / math.sqrt(2))))


def _median(v):
    v = sorted(v)
    k = len(v) // 2
    return v[k] if len(v) % 2 else (v[k - 1] + v[k]) / 2


def campaign_report(rows) -> str:
    """Per class and arm: campaigns, median violations per campaign, median
    tests to first violation, and each arm against `random` (A12 and
    Mann-Whitney p) on both measures. For `first`, lower is better, so A12 is
    reported as P(arm reaches a violation sooner than random)."""
    c = campaigns(rows)
    out = ["| class | arm | campaigns | median violations | median tests to first | "
           "A12 violations vs random | p | A12 sooner than random | p |",
           "|---|---|---|---|---|---|---|---|---|"]
    for (cls, arm) in sorted(c, key=lambda k: (k[0], ARMS.index(k[1]) if k[1] in ARMS else 9)):
        mine = c[(cls, arm)]
        v = [s["violations"] for s in mine.values()]
        f = [s["first"] for s in mine.values()]
        line = f"| {cls} | {arm} | {len(mine)} | {_median(v):g} | {_median(f):g} | "
        ref = c.get((cls, "random"))
        if ref and arm != "random":
            rv = [s["violations"] for s in ref.values()]
            rf = [s["first"] for s in ref.values()]
            line += (f"{a12(v, rv):.2f} | {mann_whitney_p(v, rv):.3f} | "
                     f"{a12(rf, f):.2f} | {mann_whitney_p(f, rf):.3f} |")
        else:
            line += "— | — | — | — |"
        out.append(line)
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


def cmd_adaptive(a):
    """The feedback arm: generated online, one program at a time, from the
    outcomes so far. Resumable: recorded outcomes are replayed, not re-run."""
    import adaptive_arm
    arms, out = Path(a.arms), Path(a.out)
    out.mkdir(parents=True, exist_ok=True)
    res = out / "runs.jsonl"
    done = {}
    if res.exists():
        done = {r["path"]: r for r in (json.loads(l) for l in open(res) if l.strip())}
    rn, ra = adaptive_arm.load_lib(arms)
    new = []
    with open(res, "a") as f:
        for cls in a.classes:
            corpus = [open(p).read() for p in sorted(glob.glob(str(arms / cls / "replay" / "s0" / "*.asm")))]
            cfg_text = (arms / cls / "config.yaml").read_text()
            for seed in a.seeds:
                pool = [open(p).read() for p in
                        sorted(glob.glob(str(arms / cls / "_lm_pool" / f"s{seed}" / "*.asm")))]
                arm = adaptive_arm.Adaptive(rn, ra, corpus, pool, 5000 + seed)
                d = arms / cls / "adaptive" / f"s{seed}"
                d.mkdir(parents=True, exist_ok=True)
                for k in range(a.n):
                    op, text = arm.propose()
                    path = d / f"p{k:04d}.asm"
                    rel = os.path.relpath(path, arms)
                    if rel in done:
                        v = done[rel]["verdict"]
                    else:
                        path.write_text(text)
                        ds = data_seed(str(path))
                        cfg = out / "_run.yaml"
                        cfg.write_text(run_config(cfg_text, ds))
                        t0 = time.time()
                        rc, outp = sh([a.rvzr, "reproduce", "-s", a.spec, "-c", str(cfg), "-t",
                                       str(path), "-n", str(a.inputs)], timeout=a.timeout)
                        v = classify(rc, outp)
                        rec = {"class": cls, "arm": "adaptive", "seed": seed, "path": rel,
                               "verdict": v, "rc": rc, "data_seed": ds, "inputs": a.inputs,
                               "op": op, "secs": round(time.time() - t0, 2)}
                        if v == "error":
                            rec["tail"] = outp[-600:]
                        f.write(json.dumps(rec) + "\n")
                        f.flush()
                        new.append(rec)
                        if a.limit and len(new) >= a.limit:
                            cmd_report(a)
                            return health_rc(new)
                    arm.update(op, text, v == "violation")
                print(f"{cls} adaptive s{seed}: operator pulls {arm.pulls}", flush=True)
    cmd_report(a)
    return health_rc(new)


def core_is_novel(core, training) -> bool:
    """True when no training program contains the core's units in order."""
    if not core:
        return False
    for prog in training:
        it = iter(prog)
        if all(u in it for u in core):
            return False
    return True


def to_minimise(rows, per_campaign=1):
    """The first `per_campaign` violations of every campaign, in a fixed order."""
    by = defaultdict(list)
    for r in rows:
        if r["verdict"] == "violation" and r["arm"] != "replay":
            by[(r["class"], r["arm"], r["seed"])].append(r)
    out = []
    for key in sorted(by, key=str):
        out += sorted(by[key], key=lambda r: r["path"])[:per_campaign]
    return out


def core_report(cores) -> str:
    by = defaultdict(list)
    for c in cores:
        by[(c["class"], c["arm"])].append(c)
    out = ["| class | arm | violations minimised | minimise succeeded | distinct cores | "
           "distinct cores not contained in any training program |", "|---|---|---|---|---|---|"]
    for (cls, arm) in sorted(by, key=lambda k: (k[0], ARMS.index(k[1]) if k[1] in ARMS else 9)):
        cs = by[(cls, arm)]
        ok = [c for c in cs if c["ok"]]
        distinct = {tuple(c["core"]) for c in ok}
        novel = {tuple(c["core"]) for c in ok if c["novel"]}
        out.append(f"| {cls} | {arm} | {len(cs)} | {len(ok)} | {len(distinct)} | {len(novel)} |")
    return "\n".join(out)


def cmd_minimize(a):
    """Minimise the first violation(s) of each campaign with `rvzr minimize`
    (instruction pass) under the same data seed, and name each result by its
    unit sequence so root causes can be counted. Slow: minutes per program."""
    import adaptive_arm
    arms, out = Path(a.arms), Path(a.out)
    rn, _ = adaptive_arm.load_lib(arms)
    rows = [json.loads(l) for l in open(out / "runs.jsonl") if l.strip()]
    res = out / "cores.jsonl"
    done = set()
    if res.exists():
        done = {json.loads(l)["path"] for l in open(res) if l.strip()}
    training = {cls: [rn.tokenize(rn.parse_program(open(p).read()))
                      for p in sorted(glob.glob(str(arms / cls / "replay" / "s0" / "*.asm")))]
                for cls in a.classes}
    todo = [r for r in to_minimise(rows, a.per_campaign)
            if r["path"] not in done and r["class"] in a.classes]
    print(f"{len(done)} minimised, {len(todo)} to do")
    mdir = out / "_min"
    mdir.mkdir(parents=True, exist_ok=True)
    with open(res, "a") as f:
        for i, r in enumerate(todo):
            cfg = mdir / "_min.yaml"
            cfg.write_text(run_config((arms / r["class"] / "config.yaml").read_text(), r["data_seed"])
                           + f"executor_sample_sizes: [{a.sample_sizes}]\n")
            dst = mdir / (r["path"].replace("/", "__"))
            t0 = time.time()
            rc, log = sh([a.rvzr, "minimize", "-s", a.spec, "-c", str(cfg), "-t", str(arms / r["path"]),
                          "-i", str(r.get("inputs", a.inputs)), "-o", str(dst),
                          "--enable-label-pass", "false", "--enable-instruction-pass", "true"],
                         timeout=a.min_timeout)
            ok = rc == 0 and dst.is_file() and "Traceback" not in log
            core = [t for t in rn.tokenize(rn.parse_program(dst.read_text())) if not t.startswith("<")] \
                if ok else []
            rec = {"class": r["class"], "arm": r["arm"], "seed": r["seed"], "path": r["path"],
                   "ok": bool(ok and core), "core": core, "novel": core_is_novel(core, training[r["class"]]),
                   "secs": round(time.time() - t0, 1)}
            if not rec["ok"]:
                rec["tail"] = log[-400:]
            f.write(json.dumps(rec) + "\n")
            f.flush()
            print(f"[{i + 1}/{len(todo)}] {r['path']}: ok={rec['ok']} core={len(core)} novel={rec['novel']}",
                  flush=True)
    return cmd_report(a)


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
          f"Host: {env}.\n\n## Campaign level (primary)\n\n"
          "One campaign = one arm and seed, its programs in order. Tests to first violation "
          "is censored at n+1 when a campaign has none. A12 is the Vargha-Delaney effect "
          "size (0.5 = no difference); p is two-sided Mann-Whitney.\n\n"
          + campaign_report([r for r in rows if r["arm"] != "replay"])
          + "\n\n## Pooled per program (secondary)\n\n" + report(rows) + "\n")
    if (out / "cores.jsonl").exists():
        cores = [json.loads(l) for l in open(out / "cores.jsonl") if l.strip()]
        md += ("\n## Minimised cores (root causes)\n\nFirst violation(s) of each campaign, "
               "minimised with `rvzr minimize`; a core is its sequence of instructions with "
               "immediates ignored.\n\n" + core_report(cores) + "\n")
    (out / "REPORT.md").write_text(md)
    print(md)
    return 0


def main(argv=None):
    ap = argparse.ArgumentParser(description=__doc__.split("\n")[0])
    ap.add_argument("cmd", choices=["preflight", "random", "run", "adaptive", "minimize", "report"])
    ap.add_argument("--arms", required=True)
    ap.add_argument("--out", default=None)
    ap.add_argument("--rvzr", default="rvzr")
    ap.add_argument("--spec", default="base_x86.json")
    ap.add_argument("--classes", nargs="+", default=["SPECTRE_V1"])
    ap.add_argument("--seeds", type=int, nargs="+", default=list(range(10)))
    ap.add_argument("--n", type=int, default=100, help="programs per campaign (random and adaptive arms)")
    ap.add_argument("--inputs", type=int, default=100)
    ap.add_argument("--timeout", type=int, default=300)
    ap.add_argument("--limit", type=int, default=0)
    ap.add_argument("--per-campaign", type=int, default=1, help="violations to minimise per campaign")
    ap.add_argument("--sample-sizes", default="10, 50", help="executor_sample_sizes while minimising")
    ap.add_argument("--min-timeout", type=int, default=3600)
    a = ap.parse_args(argv)
    a.out = a.out or os.path.join(a.arms, "_results")
    return {"preflight": cmd_preflight, "random": cmd_random, "run": cmd_run,
            "adaptive": cmd_adaptive, "minimize": cmd_minimize, "report": cmd_report}[a.cmd](a)


if __name__ == "__main__":
    sys.exit(main())
