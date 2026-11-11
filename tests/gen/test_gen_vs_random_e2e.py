"""Whole runner against a fake rvzr (no hardware): run -> resume -> adaptive -> report."""
import json
import os
import random
import stat
import subprocess
import sys
from pathlib import Path

REPO = Path(__file__).resolve().parents[2]
for p in (REPO / "gen", REPO / "oracle" / "revizor" / "scripts"):
    sys.path.insert(0, str(p))

import revizor_arms as ra  # noqa: E402
import revizor_native as rn  # noqa: E402
from test_revizor_arms import CORPUS  # noqa: E402

RUNNER = REPO / "oracle" / "revizor" / "scripts" / "gen_vs_random.py"
FAKE = r'''#!/bin/sh
# fake rvzr: "generate" writes programs; "reproduce" violates when the program has a `jb`
for a in "$@"; do if [ "$a" = "--help" ]; then
  echo "--testcase --num-inputs --seed --num-test-cases --working-directory"; exit 0; fi; done
case "$1" in
  generate)
    while [ $# -gt 0 ]; do case "$1" in -w) W="$2";; -n) N="$2";; esac; shift; done
    i=0; while [ $i -lt $N ]; do mkdir -p "$W/tc$i"; cp "$FAKE_TEMPLATE" "$W/tc$i/program.asm"; i=$((i+1)); done ;;
  reproduce)
    while [ $# -gt 0 ]; do case "$1" in -t) T="$2";; esac; shift; done
    echo "$T" >> "$FAKE_LOG"
    if grep -q "^jb " "$T"; then echo "=== Violations detected ==="; fi ;;
  *) echo "--testcase --num-inputs --seed --num-test-cases --working-directory" ;;
esac
'''


def _setup(tmp_path):
    arms = tmp_path / "arms"
    imm = rn.imm_pool(CORPUS)
    uni = ra.UnigramModel(CORPUS)
    rng = random.Random(0)
    for arm in ("unigram", "mutation", "learned"):
        for seed in (0, 1):
            d = arms / "C" / arm / f"s{seed}"
            d.mkdir(parents=True)
            for k in range(4):
                (d / f"p{k:04d}.asm").write_text(ra.to_program(uni.sample(rng), rng, imm))
    rep = arms / "C" / "replay" / "s0"
    rep.mkdir(parents=True)
    for k, t in enumerate(CORPUS):
        (rep / f"p{k:04d}.asm").write_text(t)
    (arms / "C" / "config.yaml").write_text("program_size: 16\n")
    lib = arms / "_lib"
    lib.mkdir()
    for n in ("revizor_native.py", "revizor_arms.py"):
        (lib / n).write_text((REPO / "gen" / n).read_text())
    fake = tmp_path / "rvzr"
    fake.write_text(FAKE)
    fake.chmod(fake.stat().st_mode | stat.S_IEXEC)
    tmpl = tmp_path / "tmpl.asm"
    tmpl.write_text(CORPUS[0])
    env = dict(os.environ, FAKE_LOG=str(tmp_path / "calls.log"), FAKE_TEMPLATE=str(tmpl))
    return arms, fake, env


def _go(cmd, arms, fake, env, *extra):
    return subprocess.run([sys.executable, str(RUNNER), cmd, "--arms", str(arms), "--out",
                           str(arms / "_results"), "--rvzr", str(fake), "--spec", "x.json",
                           "--classes", "C", "--seeds", "0", "1", "--n", "4", *extra],
                          capture_output=True, text=True, env=env)


def test_full_pipeline_with_a_fake_executor(tmp_path):
    arms, fake, env = _setup(tmp_path)
    assert _go("preflight", arms, fake, env).returncode == 0
    assert _go("random", arms, fake, env).returncode == 0
    assert len(list((arms / "C" / "random" / "s0").glob("tc*/program.asm"))) == 4

    r = _go("run", arms, fake, env, "--limit", "7")
    assert r.returncode == 0, r.stdout + r.stderr
    rows = [json.loads(l) for l in open(arms / "_results" / "runs.jsonl")]
    assert len(rows) == 7 and len({x["arm"] for x in rows}) >= 4       # arms interleaved

    r = _go("run", arms, fake, env)                                      # resume
    rows = [json.loads(l) for l in open(arms / "_results" / "runs.jsonl")]
    assert len(rows) == len({x["path"] for x in rows}) == 4 * 2 * 4 + len(CORPUS)
    replay = [x for x in rows if x["arm"] == "replay"]
    assert {x["verdict"] for x in replay} == {"violation", "none"}       # PROG has jnp, PROG2 has jb

    calls_before = len(open(env["FAKE_LOG"]).read().split())
    r = _go("adaptive", arms, fake, env)
    assert r.returncode == 0, r.stdout + r.stderr
    rows = [json.loads(l) for l in open(arms / "_results" / "runs.jsonl")]
    ad = [x for x in rows if x["arm"] == "adaptive"]
    assert len(ad) == 8 and all("op" in x for x in ad)
    calls_mid = len(open(env["FAKE_LOG"]).read().split())
    assert calls_mid - calls_before == 8
    _go("adaptive", arms, fake, env)                                     # resume runs nothing new
    assert len(open(env["FAKE_LOG"]).read().split()) == calls_mid

    report = (arms / "_results" / "REPORT.md").read_text()
    assert "Campaign level (primary)" in report and "| C | adaptive | 2 |" in report
    assert "| C | random | 2 |" in report and "replay" in report.split("Pooled per program")[1]
