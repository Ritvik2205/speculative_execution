#!/usr/bin/env python3
"""hw_label_variants.py — hardware labels for fenced Revizor programs.

Why: every fenced "twin" (labelled BENIGN) and every misplaced-fence control
(labelled as the attack class) in the training data is STRUCTURAL. Nothing
checked that the twin's lfence kills the leak, or that the misplaced lfence
does not. The allhw2 results showed the classifier learns exactly these
labels, so they must come from hardware.

What this does, per real Revizor violation dir (program.asm + input_*.bin +
reproduce.yaml):
  1. plan: write fenced variants of program.asm (Intel syntax, labels intact)
     at the program level:
       original        unmodified; positive control, must reproduce
       fence_all       lfence after every body instruction (Revizor's own
                       observation-filter fencing); expected mitigated
       twin            the class's training-twin placement
                         SPECTRE_V1: start of each jcc's taken target block
                         SPECTRE_V4: after every memory write
                         MDS/L1TF:   before every memory read
       v1_fallthrough  (V1) start of the block the jmp after the jcc goes to:
                       the pre-2026-10-03 twin's path (the exact old spot,
                       between jcc and jmp, is not parseable by Revizor)
       shifted         (V1) before each jcc; (V4) before each memory write
       after_load      (MDS/L1TF) after every memory read (exploratory)
       entry / tail    k lfences right after measurement_start / after the
                       last body instruction, k = the twin's fence count
  2. run (i5 only, root): `rvzr reproduce` each variant R times on the
     violation's own inputs and config, with the speculation/observation
     filters OFF (a filtered test case would read as "no violation" and be
     mistaken for "mitigated").
  3. emit (anywhere with clang+objdump): convert each labelled variant to
     the AT&T `sequence` format and write training JSONL.

Labelling rule (per violation dir):
  original must violate in R/R runs, else the dir is UNSTABLE and none of its
  variants get a label. A variant violating in R/R is VULNERABLE (label =
  attack class, group suffix `_misfenced`); 0/R is MITIGATED (label BENIGN,
  group suffix `_fenced`); anything else is FLAKY; rvzr errors are ERROR.
  The suffixes keep the existing held-out guards (build_hw_joint._strip_fenced,
  audit_hw_split) working unchanged: a variant always follows its original
  gadget's group to the same side of the split.

Revizor's asm parser forbids an instruction directly after a jump (see
rvzr/arch/x86/fuzzer.py:_create_fenced_test_case), so a fence is never placed
right after a j*/loop line; such placements are skipped and logged.

Usage:
  python3 hw_label_variants.py plan --records eval/data/revizor_*_heldout.jsonl --out ~/rvzr_hwlabel
  sudo env PATH=$PATH python3 hw_label_variants.py run --out ~/rvzr_hwlabel \\
       --rvzr ~/sca-fuzzer/venv/bin/rvzr --spec ~/sca-fuzzer/base_x86.json --reps 3
  python3 hw_label_variants.py emit --out ~/rvzr_hwlabel --jsonl eval/data/revizor_hwlabel_variants.jsonl
The wrapper run_hw_label_variants.sh does plan + run with the i5 host guard.
"""
from __future__ import annotations

import argparse
import collections
import glob
import json
import os
import re
import subprocess
import sys
import time
from pathlib import Path
from typing import Dict, List, Optional, Set, Tuple

HERE = Path(__file__).resolve().parent
REPO_ROOT = HERE.parents[2]

FENCE = "lfence"
CLASSES = ("SPECTRE_V1", "SPECTRE_V4", "MDS", "L1TF")
CLASS_VARIANTS = {
    "SPECTRE_V1": ("twin", "v1_fallthrough", "shifted", "entry", "tail"),
    "SPECTRE_V4": ("twin", "shifted", "entry", "tail"),
    "MDS": ("twin", "after_load", "entry", "tail"),
    "L1TF": ("twin", "after_load", "entry", "tail"),
}
CONTROL_VARIANTS = ("original", "fence_all")
VIOLATION_MARKER = "Violations detected"
# The four per-class held-out sets the joint model is scored on. NOT a
# revizor_*_heldout glob: that also matches the legacy revizor_v4_heldout.jsonl
# (same violation dirs under a different group name) and the misfenced sets.
DEFAULT_RECORDS = [f"eval/data/revizor_{c}_heldout.jsonl" for c in ("spectre_v1", "spectre_v4", "mds", "l1tf")]

# ---------------------------------------------------------------------------
# Intel-syntax program.asm model
# ---------------------------------------------------------------------------

_LABEL_ONLY = re.compile(r"^\s*(\.[\w.]+):\s*$")
_NEVER_WRITES = {"cmp", "test", "bt"}
_NO_MEM_ACCESS = {"lea", "nop"}
_PURE_STORE = {"mov"}


class Line:
    def __init__(self, text: str):
        self.text = text
        code = text.split("#", 1)[0].strip()
        self.label = None
        self.is_macro = code.startswith(".macro.")
        m = _LABEL_ONLY.match(code)
        if m:
            self.label = m.group(1)
            code = ""
        self.is_directive = code.startswith(".") and not self.is_macro
        self.is_instr = bool(code) and not self.is_directive and not self.is_macro
        toks = code.split(None, 1) if self.is_instr else []
        self.lock = bool(toks) and toks[0].lower() == "lock"
        if self.lock:
            toks = toks[1].split(None, 1) if len(toks) > 1 else []
        self.mnemonic = toks[0].lower() if toks else ""
        self.operands = [o.strip() for o in toks[1].split(",")] if len(toks) > 1 else []

    @property
    def is_jump(self) -> bool:
        return self.is_instr and (self.mnemonic.startswith("j") or self.mnemonic.startswith("loop"))

    @property
    def is_jcc(self) -> bool:
        return self.is_jump and self.mnemonic != "jmp" and not self.mnemonic.startswith("loop")

    @property
    def target(self) -> Optional[str]:
        return self.operands[0] if self.is_jump and self.operands else None

    def _mem_positions(self) -> List[int]:
        return [i for i, o in enumerate(self.operands) if "[" in o]

    @property
    def writes_mem(self) -> bool:
        """Same judgment calls as synth_v4_benign.instr_writes_mem, Intel
        operand order (destination first)."""
        if not self.is_instr or self.mnemonic in _NO_MEM_ACCESS:
            return False
        mem = self._mem_positions()
        if not mem:
            return False
        if self.lock:
            return True
        if self.mnemonic in _NEVER_WRITES:
            return False
        return 0 in mem

    @property
    def reads_mem(self) -> bool:
        """Same judgment calls as synth_v4_benign._reads_mem."""
        if not self.is_instr or self.mnemonic in _NO_MEM_ACCESS:
            return False
        mem = self._mem_positions()
        if not mem:
            return False
        if any(p != 0 for p in mem):
            return True
        return self.mnemonic not in _PURE_STORE


def parse_program(text: str) -> Tuple[List[Line], int, int]:
    """Returns (lines, start, end): body instructions live strictly between
    line `start` (measurement_start) and line `end` (measurement_end)."""
    lines = [Line(t) for t in text.splitlines()]
    start = next(i for i, l in enumerate(lines) if ".macro.measurement_start" in l.text)
    end = next(i for i, l in enumerate(lines) if ".macro.measurement_end" in l.text)
    return lines, start, end


class Placement:
    """Fence insertion points: AFTER line i, or BEFORE line i."""

    def __init__(self):
        self.after: collections.Counter = collections.Counter()
        self.before: collections.Counter = collections.Counter()
        self.skipped: List[str] = []

    def count(self) -> int:
        return sum(self.after.values()) + sum(self.before.values())


def _body(lines, start, end):
    return [i for i in range(start + 1, end) if lines[i].is_instr]


def _prev_code(lines, i) -> Optional[Line]:
    """The line immediately before i that is not blank (label lines count)."""
    for j in range(i - 1, -1, -1):
        if lines[j].text.strip():
            return lines[j]
    return None


def _add_before(pl: Placement, lines, i, n=1):
    prev = _prev_code(lines, i)
    if prev is not None and prev.is_jump:
        pl.skipped.append(f"before line {i + 1}: follows a jump")
        return
    pl.before[i] += n


def _add_after(pl: Placement, lines, i, n=1):
    if lines[i].is_jump:
        pl.skipped.append(f"after line {i + 1}: is a jump")
        return
    pl.after[i] += n


def _label_index(lines, start, end, label) -> Optional[int]:
    for i in range(start + 1, end + 1):
        if lines[i].label == label:
            return i
    return None


def place(variant: str, cls: str, lines, start, end, k: int = 0) -> Placement:
    pl = Placement()
    body = _body(lines, start, end)
    if variant == "original":
        return pl
    if variant == "fence_all":
        for i in body:
            if not lines[i].is_jump:
                pl.after[i] += 1
        return pl
    if variant == "twin":
        if cls == "SPECTRE_V1":
            for i in body:
                if not lines[i].is_jcc:
                    continue
                t = _label_index(lines, start, end, lines[i].target)
                if t is None:
                    pl.skipped.append(f"jcc line {i + 1}: target {lines[i].target} not in body")
                    continue
                pl.after[t] += 1  # right after the target label line
        elif cls == "SPECTRE_V4":
            for i in body:
                if lines[i].writes_mem:
                    _add_after(pl, lines, i)
        else:  # MDS / L1TF
            for i in body:
                if lines[i].reads_mem:
                    _add_before(pl, lines, i)
        return pl
    if variant == "v1_fallthrough":
        for i in body:
            if not lines[i].is_jcc:
                continue
            nxt = next((j for j in range(i + 1, end + 1) if lines[j].text.strip()), None)
            if nxt is None or not (lines[nxt].is_jump and not lines[nxt].is_jcc):
                pl.skipped.append(f"jcc line {i + 1}: not followed by jmp")
                continue
            t = _label_index(lines, start, end, lines[nxt].target)
            if t is None:
                pl.skipped.append(f"jmp line {nxt + 1}: target {lines[nxt].target} not in body")
                continue
            pl.after[t] += 1
        return pl
    if variant == "shifted":
        pred = (lambda l: l.is_jcc) if cls == "SPECTRE_V1" else (lambda l: l.writes_mem)
        for i in body:
            if pred(lines[i]):
                _add_before(pl, lines, i)
        return pl
    if variant == "after_load":
        for i in body:
            if lines[i].reads_mem:
                _add_after(pl, lines, i)
        return pl
    if variant == "entry":
        if k:
            pl.after[start] += k
        return pl
    if variant == "tail":
        if k and body:
            _add_after(pl, lines, body[-1], k)
        return pl
    raise ValueError(f"unknown variant {variant!r}")


def render(lines: List[Line], pl: Placement) -> str:
    out = []
    for i, l in enumerate(lines):
        out += [FENCE] * pl.before.get(i, 0)
        out.append(l.text)
        out += [FENCE] * pl.after.get(i, 0)
    return "\n".join(out) + "\n"


def make_variants(program_text: str, cls: str) -> Dict[str, Tuple[str, Placement]]:
    lines, start, end = parse_program(program_text)
    twin = place("twin", cls, lines, start, end)
    k = twin.count()
    out = {}
    for v in CONTROL_VARIANTS + CLASS_VARIANTS[cls]:
        pl = twin if v == "twin" else place(v, cls, lines, start, end, k)
        if v != "original" and pl.count() == 0:
            continue
        out[v] = (render(lines, pl), pl)
    return out


# ---------------------------------------------------------------------------
# Locating violation dirs from corpus records
# ---------------------------------------------------------------------------

def resolve_src(src_path: str) -> Optional[Path]:
    cands = []
    if src_path.startswith("~/"):
        cands.append(Path(os.path.expanduser(src_path)))
        cands.append(REPO_ROOT / src_path[2:])
    else:
        cands.append(REPO_ROOT / src_path)
        cands.append(Path.home() / src_path)
    sudo_user = os.environ.get("SUDO_USER")
    if sudo_user and src_path.startswith("~/"):
        cands.append(Path("/home") / sudo_user / src_path[2:])
    for c in cands:
        if c.is_file():
            return c.parent
    return None


def load_targets(record_globs: List[str], classes: List[str]) -> Tuple[List[dict], List[str]]:
    seen, out, missing = set(), [], []
    for pat in record_globs:
        for path in sorted(glob.glob(pat if os.path.isabs(pat) else str(REPO_ROOT / pat))):
            for line in open(path):
                if not line.strip():
                    continue
                r = json.loads(line)
                if r.get("source") != "revizor_hw_i5_8300h" or r.get("label") not in classes:
                    continue
                if r["group"] in seen:
                    continue
                seen.add(r["group"])
                d = resolve_src(r["src_path"])
                if d is None:
                    missing.append(r["src_path"])
                    continue
                if str(d) in seen:  # same violation dir listed under another group
                    continue
                seen.add(str(d))
                out.append({"group": r["group"], "cls": r["label"], "src_dir": str(d),
                            "src_path": r["src_path"], "from": os.path.basename(path)})
    return out, missing


# ---------------------------------------------------------------------------
# plan / run / emit
# ---------------------------------------------------------------------------

def _vdir(out: Path, t: dict) -> Path:
    return out / t["cls"].lower() / Path(t["src_dir"]).name


def cmd_plan(a) -> int:
    out = Path(os.path.expanduser(a.out))
    out.mkdir(parents=True, exist_ok=True)
    targets, missing = load_targets(a.records, a.classes)
    if a.limit:
        per = collections.Counter()
        keep = []
        for t in targets:
            if per[t["cls"]] < a.limit:
                per[t["cls"]] += 1
                keep.append(t)
        targets = keep
    n_var = collections.Counter()
    plan = []
    for t in targets:
        text = (Path(t["src_dir"]) / "program.asm").read_text()
        vd = _vdir(out, t)
        for v, (asm, pl) in make_variants(text, t["cls"]).items():
            d = vd / v
            d.mkdir(parents=True, exist_ok=True)
            (d / "program.asm").write_text(asm)
            plan.append({**t, "variant": v, "asm": str(d / "program.asm"),
                         "n_fences": pl.count(), "skipped": pl.skipped})
            n_var[(t["cls"], v)] += 1
    with open(out / "plan.jsonl", "w") as f:
        for p in plan:
            f.write(json.dumps(p) + "\n")
    print(f"{len(targets)} violation dirs, {len(plan)} variant programs -> {out}/plan.jsonl")
    for (c, v), n in sorted(n_var.items()):
        print(f"  {c:11s} {v:15s} {n}")
    if missing:
        print(f"WARNING: {len(missing)} src_path(s) not found, e.g. {missing[0]}", file=sys.stderr)
    return 0


def write_config(src_dir: Path, dst: Path, keep_filters: bool) -> None:
    text = (src_dir / "reproduce.yaml").read_text()
    if not keep_filters:
        for key in ("enable_speculation_filter", "enable_observation_filter"):
            text, n = re.subn(rf"^{key}:.*$", f"{key}: false", text, flags=re.M)
            if n == 0:
                text += f"\n{key}: false\n"
    dst.write_text(text)


def classify_run(rc: int, output: str) -> str:
    if "Traceback" in output or "[ERROR]" in output:
        return "error"
    if VIOLATION_MARKER in output:
        return "violation"
    if rc == 0:
        return "none"
    return "error"


def run_one(rvzr: str, spec: str, cfg: Path, asm: Path, inputs: List[str], timeout: int) -> Tuple[int, str]:
    cmd = [rvzr, "reproduce", "-s", spec, "-c", str(cfg), "-t", str(asm), "-i", *inputs]
    try:
        p = subprocess.run(cmd, capture_output=True, text=True, timeout=timeout)
        return p.returncode, p.stdout + p.stderr
    except subprocess.TimeoutExpired as e:
        return -9, f"[ERROR] timeout after {timeout}s\n{e.stdout or ''}"


def cmd_run(a) -> int:
    out = Path(os.path.expanduser(a.out))
    plan = [json.loads(l) for l in open(out / "plan.jsonl") if l.strip()]
    res_path = out / "runs.jsonl"
    done = set()
    if res_path.exists():
        for l in open(res_path):
            if l.strip():
                r = json.loads(l)
                done.add((r["group"], r["variant"], r["rep"]))
    env = {k: _read(p) for k, p in (("spec_store_bypass", "/sys/devices/system/cpu/vulnerabilities/spec_store_bypass"),
                                    ("mds", "/sys/devices/system/cpu/vulnerabilities/mds"),
                                    ("l1tf", "/sys/devices/system/cpu/vulnerabilities/l1tf"),
                                    ("smt", "/sys/devices/system/cpu/smt/control"))}
    (out / "env.json").write_text(json.dumps({**env, "reps": a.reps, "keep_filters": a.keep_filters,
                                              "started": time.strftime("%Y-%m-%d %H:%M:%S")}, indent=1))
    # originals first: a dir whose original does not reproduce is skipped early
    plan.sort(key=lambda p: (p["group"], p["variant"] != "original"))
    unstable = set()
    with open(res_path, "a") as f:
        for i, p in enumerate(plan):
            if p["group"] in unstable:
                continue
            src = Path(p["src_dir"])
            inputs = sorted(glob.glob(str(src / "input_*.bin")))
            cfg = Path(p["asm"]).parent / "config.yaml"
            write_config(src, cfg, a.keep_filters)
            hits = 0
            for rep in range(a.reps):
                if (p["group"], p["variant"], rep) in done:
                    continue
                rc, log = run_one(a.rvzr, a.spec, cfg, Path(p["asm"]), inputs, a.timeout)
                (Path(p["asm"]).parent / f"run_{rep}.log").write_text(log)
                outcome = classify_run(rc, log)
                hits += outcome == "violation"
                f.write(json.dumps({"group": p["group"], "cls": p["cls"], "variant": p["variant"],
                                    "rep": rep, "rc": rc, "outcome": outcome}) + "\n")
                f.flush()
            print(f"[{i + 1}/{len(plan)}] {p['cls']} {Path(p['src_dir']).name} {p['variant']}: "
                  f"{hits} new violation(s)", flush=True)
            if p["variant"] == "original" and a.skip_unstable:
                rows = [json.loads(l) for l in open(res_path) if l.strip()]
                o = [r for r in rows if r["group"] == p["group"] and r["variant"] == "original"]
                if sum(r["outcome"] == "violation" for r in o) < a.reps:
                    unstable.add(p["group"])
                    print(f"    original reproduced {sum(r['outcome'] == 'violation' for r in o)}/{a.reps}: "
                          "UNSTABLE, skipping its variants", flush=True)
    return 0


def _read(p: str) -> str:
    try:
        return Path(p).read_text().strip()
    except OSError:
        return "unknown"


def label_results(plan: List[dict], runs: List[dict], reps: int) -> List[dict]:
    by = collections.defaultdict(list)
    for r in runs:
        by[(r["group"], r["variant"])].append(r["outcome"])
    out = []
    for p in plan:
        oc = by.get((p["group"], p["variant"]), [])
        orig = by.get((p["group"], "original"), [])
        hits = oc.count("violation")
        if len(orig) < reps or orig.count("violation") < reps:
            verdict = "unstable_original"
        elif len(oc) < reps:
            verdict = "incomplete"
        elif "error" in oc:
            verdict = "error"
        elif hits == reps:
            verdict = "vulnerable"
        elif hits == 0:
            verdict = "mitigated"
        else:
            verdict = "flaky"
        out.append({**p, "hits": hits, "runs": len(oc), "verdict": verdict})
    return out


def cmd_emit(a) -> int:
    out = Path(os.path.expanduser(a.out))
    plan = [json.loads(l) for l in open(out / "plan.jsonl") if l.strip()]
    runs = [json.loads(l) for l in open(out / "runs.jsonl") if l.strip()]
    reps = json.loads((out / "env.json").read_text())["reps"]
    labelled = label_results(plan, runs, reps)

    sys.path.insert(0, str(HERE.parent))
    import convert_v4_gadgets as cvg  # noqa: E402

    recs = []
    for r in labelled:
        if r["variant"] == "original" or r["verdict"] not in ("vulnerable", "mitigated"):
            continue
        asm = Path(r["asm"])
        if not asm.is_file():
            asm = out / r["cls"].lower() / Path(r["src_dir"]).name / r["variant"] / "program.asm"
        seq = cvg.convert_program_asm(str(asm))
        mitigated = r["verdict"] == "mitigated"
        recs.append({
            "label": "BENIGN" if mitigated else r["cls"],
            "arch": "x86_64",
            "sequence": seq,
            "group": f"{r['group']}_{'fenced' if mitigated else 'misfenced'}",
            "source": "revizor_hw_reproduce",
            "variant": r["variant"],
            "vuln_class": r["cls"],
            "hw_hits": r["hits"],
            "hw_runs": r["runs"],
            "src_path": r["src_path"],
        })
    jpath = Path(a.jsonl)
    jpath.parent.mkdir(parents=True, exist_ok=True)
    with open(jpath, "w") as f:
        for r in recs:
            f.write(json.dumps(r) + "\n")

    tab = collections.defaultdict(collections.Counter)
    for r in labelled:
        tab[(r["cls"], r["variant"])][r["verdict"]] += 1
    cols = ("vulnerable", "mitigated", "flaky", "error", "unstable_original", "incomplete")
    L = ["# Hardware labels for fenced Revizor variants", "",
         f"`rvzr reproduce` x{reps} per variant on the i5-8300H, filters "
         f"{'ON' if json.loads((out / 'env.json').read_text()).get('keep_filters') else 'OFF'}. "
         f"vulnerable = violation in {reps}/{reps}, mitigated = 0/{reps}. "
         "A dir whose unmodified original does not reproduce every time is unstable_original.", "",
         "| class | variant | " + " | ".join(cols) + " |", "|---|---|" + "---|" * len(cols)]
    for (c, v), cnt in sorted(tab.items()):
        L.append(f"| {c} | {v} | " + " | ".join(str(cnt.get(k, 0)) for k in cols) + " |")
    L += ["", f"{len(recs)} labelled variant records -> `{jpath}`"]
    (out / "summary.md").write_text("\n".join(L) + "\n")
    print("\n".join(L))
    return 0


def main(argv=None) -> int:
    ap = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    sub = ap.add_subparsers(dest="cmd", required=True)
    p = sub.add_parser("plan")
    p.add_argument("--records", nargs="+", default=DEFAULT_RECORDS,
                   help="corpus JSONL(s)/globs; held-out sets by default. Use "
                        "eval/data/revizor_{spectre_v1,spectre_v4,mds,l1tf}_real.jsonl for the training pool")
    p.add_argument("--classes", nargs="+", default=list(CLASSES), choices=CLASSES)
    p.add_argument("--limit", type=int, default=0, help="max violation dirs per class (0 = all)")
    p.add_argument("--out", required=True)
    r = sub.add_parser("run")
    r.add_argument("--out", required=True)
    r.add_argument("--rvzr", required=True)
    r.add_argument("--spec", required=True)
    r.add_argument("--reps", type=int, default=3)
    r.add_argument("--timeout", type=int, default=600)
    r.add_argument("--keep-filters", action="store_true",
                   help="keep Revizor's speculation/observation filters (default: off)")
    r.add_argument("--no-skip-unstable", dest="skip_unstable", action="store_false")
    e = sub.add_parser("emit")
    e.add_argument("--out", required=True)
    e.add_argument("--jsonl", default=str(REPO_ROOT / "eval/data/revizor_hwlabel_variants.jsonl"))
    a = ap.parse_args(argv)
    return {"plan": cmd_plan, "run": cmd_run, "emit": cmd_emit}[a.cmd](a)


if __name__ == "__main__":
    raise SystemExit(main())
