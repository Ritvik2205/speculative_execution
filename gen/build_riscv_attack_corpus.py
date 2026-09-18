#!/usr/bin/env python3
"""build_riscv_attack_corpus.py -- one-command driver to grow the thin riscv64
ATTACK corpus and PROVE the result is idiomatic riscv64, not an ARM
transliteration.

Baseline (before this driver): 37 records -- SPECTRE_V1 12, RETBLEED 10,
SPECTRE_RSB 6, SPECTRE_V4 5, BRANCH_HISTORY_INJECTION 4; L1TF/MDS/SPECTRE_V2
are at 0.

This does NOT reimplement harvesting or the idiomaticity gate -- it drives
two existing scripts, unmodified, as subprocesses (both are print-oriented
CLIs with no return-value API, and the gate's imports pull in torch via
spec/train_mlm.py, so importing it at module scope would make every test of
this driver pay a torch-import cost; subprocess keeps the driver's own tests
compiler-free and torch-free):

  1. gen/harvest_riscv_from_cvulns.py  -- compiles c_vulns/c_code/*.c with a
     real riscv64 cross-compiler, splits/neutralizes/structurally-verifies
     gadgets, and (with --apply) writes spec/data/riscv_cvulns_batch.jsonl.
  2. eval/isa_independence_check.py    -- per-class canonical-op bigram
     Jensen-Shannon divergence vs x86_64/arm64 (the "is this a
     transliteration" gate); run with --riscv-jsonl pointed at the harvested
     corpus.

Run on the cluster (which has the riscv64 toolchain -- NOT the Mac):
  python3 gen/build_riscv_attack_corpus.py               # dry run, no writes
  python3 gen/build_riscv_attack_corpus.py --apply        # writes the corpus
                                                            # + runs the gate
"""
from __future__ import annotations

import argparse
import ast
import os
import re
import shutil
import subprocess
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
HARVEST_SCRIPT = ROOT / "gen" / "harvest_riscv_from_cvulns.py"
GATE_SCRIPT = ROOT / "eval" / "isa_independence_check.py"
CVULNS_DIR = ROOT / "c_vulns" / "c_code"
DEFAULT_OUT = ROOT / "spec" / "data" / "riscv_cvulns_batch.jsonl"

# The 37-record baseline named in the task, for before/after comparison.
BASELINE_COUNTS = {
    "SPECTRE_V1": 12,
    "RETBLEED": 10,
    "SPECTRE_RSB": 6,
    "SPECTRE_V4": 5,
    "BRANCH_HISTORY_INJECTION": 4,
    "L1TF": 0,
    "MDS": 0,
    "SPECTRE_V2": 0,
}

RISCV_CC_CANDIDATES = [
    "riscv64-elf-gcc", "riscv64-unknown-elf-gcc", "riscv64-linux-gnu-gcc",
]
RISCV_CC_PATTERN = re.compile(r"^riscv64-.*-gcc$")

APT_HINT = (
    "no riscv64-*-gcc cross-compiler found on PATH.\n"
    "This driver must run on the cluster (which has the toolchain), not "
    "the Mac. Install one, e.g.:\n"
    "  sudo apt-get install gcc-riscv64-unknown-elf   # bare-metal elf target\n"
    "  sudo apt-get install gcc-riscv64-linux-gnu      # linux target\n"
)


def find_riscv_cc() -> str | None:
    """Return the name of a riscv64-*-gcc on PATH, or None."""
    for cc in RISCV_CC_CANDIDATES:
        if shutil.which(cc):
            return cc
    for d in os.environ.get("PATH", "").split(os.pathsep):
        try:
            names = os.listdir(d)
        except OSError:
            continue
        for name in names:
            if RISCV_CC_PATTERN.match(name) and os.access(os.path.join(d, name), os.X_OK):
                return name
    return None


def extract_file_class(harvest_script: Path = HARVEST_SCRIPT) -> dict:
    """Statically read FILE_CLASS out of harvest_riscv_from_cvulns.py via AST,
    without importing the module (which drags in build_dataset/isa_spec)."""
    tree = ast.parse(harvest_script.read_text())
    for node in ast.walk(tree):
        if isinstance(node, ast.Assign):
            for target in node.targets:
                if isinstance(target, ast.Name) and target.id == "FILE_CLASS":
                    return ast.literal_eval(node.value)
    raise RuntimeError(f"FILE_CLASS assignment not found in {harvest_script}")


def list_uncovered_files(cvulns_dir: Path, file_class: dict) -> list[str]:
    """.c files in cvulns_dir that FILE_CLASS does not map to a vuln class."""
    mapped = set(file_class)
    return sorted(p.name for p in cvulns_dir.glob("*.c") if p.name not in mapped)


def _parse_dict_after(marker: str, text: str) -> dict:
    for line in text.splitlines():
        if line.startswith(marker):
            payload = line[len(marker):].strip()
            try:
                return ast.literal_eval(payload)
            except (ValueError, SyntaxError):
                return {}
    return {}


def run_harvest(apply: bool, min_instructions: int, out_path: Path) -> dict:
    cmd = [sys.executable, str(HARVEST_SCRIPT), "--min-instructions", str(min_instructions)]
    if apply:
        cmd.append("--apply")
    proc = subprocess.run(cmd, cwd=str(ROOT), capture_output=True, text=True)
    stdout = proc.stdout or ""
    result = {
        "returncode": proc.returncode,
        "stdout": stdout,
        "stderr": proc.stderr or "",
        "kept_per_class": _parse_dict_after("kept per class:", stdout),
        "compile_failures": _parse_dict_after("compile failures:", stdout),
        "structural_rejects": _parse_dict_after("structural rejects:", stdout),
        "wrote_path": None,
    }
    if apply and proc.returncode == 0 and DEFAULT_OUT.exists():
        result["wrote_path"] = DEFAULT_OUT
        if out_path.resolve() != DEFAULT_OUT.resolve():
            out_path.parent.mkdir(parents=True, exist_ok=True)
            out_path.write_text(DEFAULT_OUT.read_text())
            result["wrote_path"] = out_path
    return result


_ROW_RE = re.compile(
    r"^\s*(?P<cls>\S+)\s+(?P<y>[\d.]+)\s+(?P<xr>[\d.]+)\s+(?P<ar>[\d.]+)\s+"
    r"(?P<ratio>[\d.]+)x(?P<flag>\s*LOW n)?\s*$"
)


def _parse_gate_per_class(stdout: str) -> dict:
    rows: dict = {}
    in_section = False
    for line in stdout.splitlines():
        if "PER CLASS" in line:
            in_section = True
            continue
        if in_section and ("SIGN TEST" in line or "USE FOR GENERATED SAMPLES" in line):
            break
        if not in_section:
            continue
        m = _ROW_RE.match(line)
        if m:
            rows[m.group("cls")] = {
                "x86_arm": float(m.group("y")),
                "x86_rv": float(m.group("xr")),
                "arm_rv": float(m.group("ar")),
                "ratio": float(m.group("ratio")),
                "low_n": bool(m.group("flag")),
            }
    return rows


def _parse_gate_sign_test(stdout: str) -> dict:
    m_counts = re.search(r"classes where arm-vs-riscv < x86-vs-arm:\s*(\d+)/(\d+)", stdout)
    m_p = re.search(r"one-sided sign test p\s*=\s*([\d.]+)", stdout)
    verdict_lines = []
    in_section = False
    for line in stdout.splitlines():
        if "SIGN TEST" in line:
            in_section = True
            continue
        if in_section and "USE FOR GENERATED SAMPLES" in line:
            break
        if in_section and "->" in line:
            verdict_lines.append(line.strip())
    return {
        "closer": int(m_counts.group(1)) if m_counts else None,
        "total": int(m_counts.group(2)) if m_counts else None,
        "p_value": float(m_p.group(1)) if m_p else None,
        "verdict": " ".join(verdict_lines) if verdict_lines else None,
    }


def run_gate(riscv_jsonl: Path) -> dict:
    cmd = [sys.executable, str(GATE_SCRIPT), "--riscv-jsonl", str(riscv_jsonl)]
    proc = subprocess.run(cmd, cwd=str(ROOT), capture_output=True, text=True)
    stdout = proc.stdout or ""
    return {
        "returncode": proc.returncode,
        "stdout": stdout,
        "stderr": proc.stderr or "",
        "per_class": _parse_gate_per_class(stdout),
        "sign_test": _parse_gate_sign_test(stdout),
    }


def gate_verdict(ratio: float) -> str:
    """Same thresholds isa_independence_check.py uses for its pooled verdict,
    applied per class: well below the x86-vs-arm yardstick means the
    candidate inherited its source ISA's instruction ordering."""
    if ratio < 0.6:
        return "FAIL"
    if ratio >= 0.9:
        return "PASS"
    return "AMBIGUOUS"


def build_report(*, kept_per_class: dict, gate_ran: bool, gate_per_class: dict,
                  gate_sign_test: dict, uncovered_files: list, compile_failures: dict,
                  structural_rejects: dict, wrote_path, apply: bool) -> str:
    lines = []
    lines.append("=" * 72)
    lines.append("RISC-V ATTACK CORPUS -- build report")
    lines.append("=" * 72)

    lines.append("\nPer-class kept counts (this run vs 37-record baseline):")
    all_classes = sorted(set(BASELINE_COUNTS) | set(kept_per_class))
    for c in all_classes:
        kept = kept_per_class.get(c, 0)
        base = BASELINE_COUNTS.get(c, "?")
        lines.append(f"  {c:28s} kept={kept:<5} baseline={base}")

    lines.append("\nIdiomaticity gate (per-class bigram JS-divergence vs x86/arm yardstick):")
    if not gate_ran:
        lines.append("  GATE NOT RUN (dry run -- pass --apply to write a corpus the gate can read)")
    else:
        harvested_classes = sorted(c for c in all_classes if kept_per_class.get(c, 0) > 0)
        for c in harvested_classes:
            row = gate_per_class.get(c)
            if row is None:
                lines.append(
                    f"  {c:28s} GATE NOT RUN (too few records, or class not present in "
                    "both the x86_64 and arm64 reference corpora)"
                )
            else:
                v = gate_verdict(row["ratio"])
                low_n = " LOW-n" if row["low_n"] else ""
                lines.append(
                    f"  {c:28s} {v:10s} ratio={row['ratio']:.2f}x "
                    f"(x86-arm={row['x86_arm']:.4f} x86-rv={row['x86_rv']:.4f} "
                    f"arm-rv={row['arm_rv']:.4f}){low_n}"
                )
        if gate_sign_test.get("closer") is not None:
            lines.append(
                f"\n  Sign test: {gate_sign_test['closer']}/{gate_sign_test['total']} classes "
                f"closer to arm64 than the x86-arm yardstick, p={gate_sign_test['p_value']}"
            )
            if gate_sign_test.get("verdict"):
                lines.append(f"  {gate_sign_test['verdict']}")

    lines.append("\nUncovered c_vulns/c_code/*.c files (NOT in FILE_CLASS -- expansion candidates):")
    if uncovered_files:
        for f in uncovered_files:
            lines.append(f"  {f}")
    else:
        lines.append("  (none)")

    if compile_failures:
        lines.append("\nCompile failures (mapped files):")
        for k, v in compile_failures.items():
            lines.append(f"  {k}: {v}")
    if structural_rejects:
        lines.append("\nStructural rejects (mapped files, by class):")
        for k, v in structural_rejects.items():
            lines.append(f"  {k}: {v}")

    lines.append("")
    if apply:
        lines.append(f"Corpus written: {wrote_path}")
    else:
        lines.append("Corpus NOT written (dry run -- pass --apply)")

    return "\n".join(lines)


def main(argv=None) -> int:
    ap = argparse.ArgumentParser(description=__doc__,
                                  formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument("--apply", action="store_true",
                     help="write the corpus and run the idiomaticity gate on it "
                          "(default: dry run, no writes, gate not run)")
    ap.add_argument("--out", default=str(DEFAULT_OUT), help="corpus output path")
    ap.add_argument("--min-instructions", type=int, default=4)
    args = ap.parse_args(argv)

    cc = find_riscv_cc()
    if cc is None:
        print(APT_HINT, file=sys.stderr)
        return 1

    file_class = extract_file_class()
    uncovered = list_uncovered_files(CVULNS_DIR, file_class)

    out_path = Path(args.out)
    harvest = run_harvest(apply=args.apply, min_instructions=args.min_instructions,
                           out_path=out_path)
    if harvest["returncode"] != 0:
        print("harvest failed:", file=sys.stderr)
        print(harvest["stderr"], file=sys.stderr)
        return 1

    gate_ran = False
    gate_per_class: dict = {}
    gate_sign_test: dict = {}
    if args.apply:
        corpus_path = harvest["wrote_path"] or out_path
        gate = run_gate(corpus_path)
        if gate["returncode"] != 0:
            print("gate failed:", file=sys.stderr)
            print(gate["stderr"], file=sys.stderr)
        else:
            gate_ran = True
            gate_per_class = gate["per_class"]
            gate_sign_test = gate["sign_test"]

    report = build_report(
        kept_per_class=harvest["kept_per_class"],
        gate_ran=gate_ran,
        gate_per_class=gate_per_class,
        gate_sign_test=gate_sign_test,
        uncovered_files=uncovered,
        compile_failures=harvest["compile_failures"],
        structural_rejects=harvest["structural_rejects"],
        wrote_path=harvest["wrote_path"],
        apply=args.apply,
    )
    print(report)
    return 0


if __name__ == "__main__":
    sys.exit(main())
