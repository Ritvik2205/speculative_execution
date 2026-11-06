#!/usr/bin/env python3
"""Generate eval/realworld_riscv_report.md (Task 8: RISC-V check + paper hooks).

Runs, in-process via subprocess, the existing tools on the real-compiled riscv64
rows and embeds their raw output:
  * eval/isa_independence_check.py  (the canonical-op BIGRAM gate; per-class table
    + sign test is the gate, the pooled row is context only -- NEVER a pass)
  * eval/isa_fingerprint.py         (channel ISA-predictability; NOT the bigram test)
  * eval.score_realworld --bars-only restricted to the riscv64 eval files
Model-column numbers need cluster checkpoints; if eval/realworld_score/ exists the
riscv64 rows are pulled from it, otherwise the table stays [PENDING].

Regenerate:  python3 eval/realworld_riscv_report.py
"""
from __future__ import annotations

import glob
import json
import re
import subprocess
import sys
import tempfile
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
OUT = ROOT / "eval/realworld_riscv_report.md"
TRAIN = "v54/data/realworld_c_vulns-riscv64_train.jsonl"
EVAL_ATT = {
    "Security-RISC": "eval/data/realworld_Security-RISC.jsonl",
    "boom-attacks": "eval/data/realworld_boom-attacks.jsonl",
    "riscv-transient-attacks": "eval/data/realworld_riscv-transient-attacks.jsonl",
    "CTSRD-Transient": "eval/data/realworld_CTSRD-Transient.jsonl",
}
BENIGN = "eval/data/realworld_benign_riscv64.jsonl"
SEC_README = "vendor_riscv/Security-RISC/README.md"


def load(p):
    return [json.loads(l) for l in open(ROOT / p) if l.strip()]


def ninstr(r):
    return sum(1 for l in r["sequence"] if l.strip() and not l.strip().startswith(".")
               and not l.strip().endswith(":"))


def sh(cmd):
    r = subprocess.run(cmd, cwd=ROOT, capture_output=True, text=True)
    return (r.stdout + r.stderr).strip()


def keep(txt, pats):
    return "\n".join(l for l in txt.splitlines() if re.search(pats, l))


def words(s):
    return len(s.split())


def main():
    tmp = Path(tempfile.mkdtemp(prefix="rwriscv_"))
    src = {"c_vulns-riscv64 (train)": TRAIN, **EVAL_ATT, "Debian benign (held-out, whole functions)": BENIGN}
    rows = {k: load(v) for k, v in src.items()}

    # ---- source table
    tab = ["| source | file | rows | harness | classes | instr/row min-median-max | rows with <=10 instr (stub-excluded by the gate) |",
           "|---|---|---|---|---|---|---|"]
    for k, p in src.items():
        rs = rows[k]
        ls = sorted(ninstr(r) for r in rs)
        cl = {}
        for r in rs:
            cl[r["label"]] = cl.get(r["label"], 0) + 1
        tab.append(f"| {k} | `{p}` | {len(rs)} | {sum(bool(r.get('harness')) for r in rs)} | "
                   f"{', '.join(f'{a}={b}' for a, b in sorted(cl.items()))} | "
                   f"{ls[0]}-{ls[len(ls)//2]}-{ls[-1]} | {sum(x <= 10 for x in ls)} |")
    n_train = len(rows["c_vulns-riscv64 (train)"])
    n_fn_train = len({r.get("function") for r in rows["c_vulns-riscv64 (train)"]})

    # ---- combined files for the pooled-over-new-sources runs
    att = tmp / "eval_att.jsonl"
    att.write_text("".join(open(ROOT / p).read() for p in EVAL_ATT.values()))
    allnew = tmp / "all_new.jsonl"
    allnew.write_text(open(ROOT / TRAIN).read() + att.read_text() + open(ROOT / BENIGN).read())
    pooled = [json.loads(l) for l in allnew.read_text().splitlines() if l.strip()]
    n_pooled = len(pooled)
    stub_by = {}
    for k in src:
        n = sum(ninstr(r) <= 10 for r in rows[k])
        if n:
            stub_by[k] = n
    n_stub = sum(stub_by.values())
    n_stub5 = sum(ninstr(r) <= 5 for r in pooled)

    # ---- Step 1a: bigram gate
    gate_runs = [("OLD corpus (default riscv_corpus, spec/data/riscv_loio_corpus lineage)",
                  "python3 eval/isa_independence_check.py", [])]
    for k, p in src.items():
        gate_runs.append((k, f"python3 eval/isa_independence_check.py --riscv-jsonl {p}",
                          ["--riscv-jsonl", p]))
    gate_runs.append(("ALL new sources pooled (c_vulns + 4 eval artifacts + Debian benign)",
                      "python3 eval/isa_independence_check.py --riscv-jsonl <tmp>/all_new.jsonl",
                      ["--riscv-jsonl", str(allnew)]))
    gate_runs.append(("ALL new sources pooled, --stub-max 5 (keeps the 6-10 instr c_vulns rows)",
                      "python3 eval/isa_independence_check.py --riscv-jsonl <tmp>/all_new.jsonl --stub-max 5",
                      ["--riscv-jsonl", str(allnew), "--stub-max", "5"]))
    gate_md = []
    summary = []
    for name, shown, args in gate_runs:
        out = sh([sys.executable, "eval/isa_independence_check.py", *args]).replace(str(tmp), "<tmp>")
        gate_md.append(f"#### {name}\n\n`{shown}`\n\n```\n"
                       + keep(out, r"OVERRIDDEN|records,|JS =|^\s+[A-Z_]+ +[0-9.]+ +[0-9.]+ +[0-9.]+ +[0-9.]+x|"
                                   r"classes where|sign test p|UNDERPOWERED|no systematic|SYSTEMATICALLY|"
                                   r"Error|Traceback") + "\n```\n")
        m = re.search(r"classes where arm-vs-riscv < x86-vs-arm: (\d+)/(\d+)", out)
        p = re.search(r"sign test p = ([0-9.]+)", out)
        nr = re.search(r"riscv64\s+(\d+) records,\s+(\d+) families", out)
        summary.append((name, nr.groups() if nr else ("?", "?"),
                        f"{m.group(1)}/{m.group(2)}" if m else "no shared class",
                        p.group(1) if p else "n/a"))
    sum_tab = ["| riscv64 set | records used (after stub filter) / families | classes closer to arm than x86-arm yardstick | one-sided sign p |",
               "|---|---|---|---|"]
    for n, (r, f), c, p in summary:
        sum_tab.append(f"| {n} | {r} / {f} | {c} | {p} |")

    # ---- Step 2: bars-only (run first: the scored-row count labels Step 1b, M3)
    files = [str(ROOT / p) for p in EVAL_ATT.values()] + [str(ROOT / BENIGN)]
    bar_dir = tmp / "bars"
    cmd = [sys.executable, "-m", "eval.score_realworld", "--bars-only", "--data", *files, "--out-dir", str(bar_dir)]
    bout = sh(cmd)
    sj = json.loads((bar_dir / "score.json").read_text()) if (bar_dir / "score.json").exists() else {}
    rv = sj.get("slices", {}).get("headline", {}).get("arch=riscv64", {}).get("always_attack", {})
    n_sc_leak, n_sc_safe, n_sc_cl = rv.get("n_leak", 0), rv.get("n_safe", 0), rv.get("n_groups", 0)
    n_att_eval = sum(len(rows[k]) for k in EVAL_ATT)
    n_att_h = sum(bool(r.get("harness")) for k in EVAL_ATT for r in rows[k])

    # ---- Step 1b: channel fingerprint
    fp_md = []
    for name, args in (("OLD corpus (default)", []),
                       (f"new eval artifacts (4 files, {n_att_eval} rows; {n_sc_leak} scored in the headline)",
                        ["--riscv", str(att)]),
                       ("all new sources pooled, --stub-max 5", ["--riscv", str(allnew), "--stub-max", "5"])):
        out = sh([sys.executable, "eval/isa_fingerprint.py", *args])
        i = out.find("=== riscv64 vs x86_64+arm64")
        blk = out[i:].split("top ISA-separating")[0].strip() if i >= 0 else out[-600:]
        fp_md.append(f"#### {name}\n\n`python3 eval/isa_fingerprint.py "
                     + " ".join(a.replace(str(tmp), "<tmp>") for a in args) + "`\n\n```\n" + blk + "\n```\n")

    sc = (bar_dir / "score.md").read_text() if (bar_dir / "score.md").exists() else "(scorer failed)\n" + bout
    wl = [l for l in bout.splitlines() if l.startswith("wrote")]
    hdr = [l for l in sc.splitlines() if l.startswith("Functions loaded")]
    dis = [l for l in sc.splitlines() if l.startswith("**Disclosures.**")]
    # pull table header + arch=riscv64 row for headline and harness
    sections = sc.split("## ")
    pick = []
    for s in sections:
        if s.startswith("Headline") or s.startswith("Harness rows"):
            lines = s.splitlines()
            t = [l for l in lines if l.startswith("| slice") or l.startswith("|---") or l.startswith("| all ")
                 or l.startswith("| subset=") or l.startswith("| arch=riscv64")]
            pick.append("### " + lines[0] + "\n\n" + "\n".join(t))
    bars_md = "\n\n".join(pick)

    cluster = sorted(glob.glob(str(ROOT / "eval/realworld_score/rw*_s*/score.md")))
    fill = ["| arm | seed | arch=riscv64 headline row (from score.md) |", "|---|---|---|"]
    if cluster:
        for c in cluster:
            m = re.search(r"^\| arch=riscv64 \|.*$", Path(c).read_text(), re.M)
            fill.append(f"| {Path(c).parent.name} | | {m.group(0) if m else '(no riscv64 row)'} |")
        pending_tab = "\n".join(fill)
    else:
        pending_tab = ("| arm | headline set | n leak / n safe | balanced acc [95% CI] | leak recall | safe recall | per-window leak rate (leak / safe truth) |\n"
                       "|---|---|---|---|---|---|---|\n"
                       + "\n".join(f"| {a} | {h} | [PENDING] | [PENDING] | [PENDING] | [PENDING] | [PENDING] |"
                                   for a in ("rw (own pool)", "rw_memreads", "H0 (allhw3 / b1)")
                                   for h in ("overlap-clean" if a != "H0 (allhw3 / b1)" else "collector flags",)))

    # ---- Security-RISC provenance (verified against the vendored README)
    readme = open(ROOT / SEC_README).read() if (ROOT / SEC_README).exists() else ""
    c910 = bool(re.search(r"C910", readme))
    c910_line = next((l.strip() for l in readme.splitlines() if "C910" in l and "tested" in l), "")
    spectre_line = next((l.strip() for l in readme.splitlines() if "Spectre exploit on the C910" in l), "")

    # ---- Paper text (word limits asserted)
    n_benign = len(rows["Debian benign (held-out, whole functions)"])
    benign_pk = sorted({r.get("package") for r in rows["Debian benign (held-out, whole functions)"]})
    main_par = (
        "RISC-V is reported as a limited, caveated transfer result. Our original RISC-V corpus was "
        "produced by mnemonic translation from ARM64 and is excluded from evidence of generalisation. "
        f"The data used here are compiled from published C with a RISC-V cross-compiler: {n_train} training rows "
        f"({n_fn_train} functions) and {n_sc_leak} scored attack functions from four public artifacts, plus "
        f"{n_benign} held-out benign Debian functions ({', '.join(benign_pk)}). None is hardware-confirmed by us. On this set the model reaches balanced accuracy "
        "[PENDING] (n=[PENDING]); the sample is small and length-shifted, so we read it as indicative only "
        "(Appendix RISC-V).")
    app = (
        "Provenance. All RISC-V rows are compiled from published C, cross-compiled on a native arm64 Debian image; "
        "none was executed or labelled on RISC-V hardware by us. Security-RISC states that its experiments were run on "
        "the T-Head C906, C908, C910 and SiFive U74" + (" (per its README; we did not reproduce them)" if c910 else
        " (per the authors; unverified here)") + ", so its labels are the authors' claim.\n\n"
        "Old corpus. The earlier RISC-V corpus was generated by a ~40-rule mnemonic substitution from ARM64. The recorded "
        "2026-08-30 canonical-op bigram gate found RISC-V closer to ARM64 than x86_64 is to ARM64 in 6/6 shared classes "
        "(sign test p=0.016). A re-run today still has 5/6 classes pointing arm-ward, but the sign test is no longer "
        "significant (p=0.109); the shift in the x86/ARM64 yardstick is unexplained. The old corpus is excluded on "
        "provenance (the translation script) regardless.\n\n"
        f"New corpus. {n_train} training rows ({n_fn_train} functions, 5 classes) and {n_att_eval} attack rows "
        f"({n_att_h} flagged harness and scored separately; {n_sc_leak} scored in the headline). Run on the new sources, the same gate shows 0 classes closer to "
        "ARM64 than the x86/ARM64 yardstick in every set, but it has at most 4 shared classes (minimum reachable p=0.062), "
        "so it is underpowered and does not certify independence. The pooled form of the test is not evidence either way.\n\n"
        "Caveats. Many rows are shorter than the 25-45 instruction training windows; attack and benign rows are both "
        "whole functions, windowed identically; rows under 10 instructions and harness rows are excluded from the "
        "headline. Model results: [PENDING cluster run].")
    assert words(main_par) <= 120, words(main_par)
    assert words(app) <= 300, words(app)

    md = f"""# RISC-V real-world check (Task 8) -- GENERATED

Generated by `python3 eval/realworld_riscv_report.py`; regenerate after the cluster run.
Anything marked `[PENDING]` needs cluster checkpoints (`eval/cluster/submit_realworld.sh`).

Dataset note: the brief names a phantom-trails riscv64 file. It does **not exist**: phantom-trails was dropped
(its `Samples` submodule is empty). Security-RISC is named `realworld_Security-RISC.jsonl` here, not `cispa-security-risc`.
The riscv64 benign **train** cells have not been run (laptop job via `realworld/prepare_benign.sh`; the only
cached riscv64 cell, zlib, is a held-out package); the riscv64 held-out benign is {n_benign} whole functions ({', '.join(benign_pk)}).

**Disclosures.** (M2) Linux fix-commit `pre` rows are built from x86_64_defconfig and carry retpoline / return-thunk
calls from the config, not the patch. (R43) Harness MDS rows (ZombieLoad, RIDL) are not held-out evidence
(ZombieLoad's source is in the train pool) and must not be cited as held-out.

## 1. Inputs

{chr(10).join(tab)}

Row counts: the pooled gate run reads {n_pooled} records; the gate's stub filter (`--stub-max 10`) drops rows with
<= 10 instructions ({n_stub} rows by this script's count: {', '.join(f'{v} {k}' for k, v in stub_by.items()) or 'none'});
with `--stub-max 5` it would keep {n_pooled - n_stub5}. The scorer drops rows with < 10 instructions (R42).

## 2. Step 1 -- ISA-independence gate (canonical-op bigram JS divergence)

The "bigram, p=0.016" test is `eval/isa_independence_check.py` (NOT `eval/isa_fingerprint.py`; that one measures
channel ISA-predictability and is reported in 2b). Per the gate's own calibration, the **per-class table and sign
test are the gate; the pooled JS rows are context and must never be quoted as a pass** (the pooled test returned 0.97x
on the known transliteration). `[LOW n]` rows are < 10 riscv records. Records with <= 10 instructions are dropped
(`--stub-max`).

### Summary

{chr(10).join(sum_tab)}

What the test can and cannot say here:

* Old corpus: the recorded run (`eval/isa_independence_2026-08-30.txt`) was 6/6, p=0.016. Re-running today gives
  5/6, p=0.1094. The yardstick moved (0.4420 -> 0.3566); cause not isolated: `v54/data/v54_train.jsonl` lost 1 record
  (x86 2094 -> 2093), and spec/canonical-op fixes landed after 2026-08-30 (7167a3a3 x86 movz/movs LOAD, 3945792 ISA
  surface-form normalisation, the arm push/pop fix). 5/6 classes still point arm-ward but the sign test is no longer
  significant. Provenance (the translation script) is the stronger evidence the old corpus is derivative.
* New sources: each is **underpowered**. Per-source runs have 1-4 shared classes (smallest reachable sign p is
  0.5 / 0.125 / 0.0625), most classes are LOW n, and several sources have 1-4 families (bootstrap CIs `nan`).
  The direction is 0 classes closer to arm64 in every run, the opposite of the transliteration signature, but
  "no signature, underpowered" is not "independent". We do not pool sources to manufacture significance.
* Benign (Debian) has no attack class shared with x86/arm, so it contributes only to the pooled rows.
* Confound: arm64 and riscv64 are both load-store RISC ISAs; some closeness to arm is kinship, not translation.

### Raw output

{chr(10).join(gate_md)}

## 2b. Channel fingerprint (`eval/isa_fingerprint.py`) -- context only

Predicts ISA from each GINE input channel. riscv64 is separable from x86+arm64 on essentially every channel for both
old and new data (chance 0.50). This says the features are ISA-visible (the transfer is a domain shift); it is not a
transliteration test and carries no p-value.

{chr(10).join(fp_md)}

## 3. Step 2 -- bars-only scoring on the riscv64 rows (no checkpoint)

Command:

```
python3 -m eval.score_realworld --bars-only --data {' '.join(EVAL_ATT.values())} {BENIGN} --out-dir <tmp>
```

{chr(10).join(hdr)}  (`{wl[0].split(' (')[1].rstrip(')') if wl else ''}`)

Reading the bars: the riscv64 headline has {n_sc_leak} leak and {n_sc_safe} safe functions in {n_sc_cl} clusters
(benign = whole held-out Debian functions, one cluster per package). See the arch=riscv64 rows below for every bar,
including the length and compiler-shortcut bars; with so few clusters the CIs are wide or degenerate. The model must
beat the best bar here to count as signal.

{bars_md}

### Cluster command for the model arms (R5)

```
cd ~/speculative_execution && git pull && bash eval/cluster/submit_realworld.sh
# results: eval/realworld_score/<arm>_s<seed>/score.md and eval/realworld_score/SUMMARY.md
# (SEEDS default 1 7 13 21 42; rw / rw_memreads scored twice: --overlap-clean, and *_h0set_* on the collector flags)
```

Fill the table from the `arch=riscv64` rows of `eval/realworld_score/SUMMARY.md` (or rerun this script after
copying `eval/realworld_score/` back; it then lists each arm's `arch=riscv64` row):

{pending_tab}

## 4. Step 3 -- paper text

Security-RISC provenance check (`{SEC_README}`): C910 listed = {c910}. README says: "{c910_line}" and lists
"{spectre_line}". That documents the authors' hardware testing of their artifacts; it does not mean the specific
compiled windows we score were run on hardware by us, so the text says "per its README".

### Main text ({words(main_par)} words, limit 120)

{main_par}

### Appendix: RISC-V caveat ({words(app)} words, limit 300)

{app}
"""
    OUT.write_text(md)
    print(f"wrote {OUT} (main {words(main_par)}w, appendix {words(app)}w)")


if __name__ == "__main__":
    main()
