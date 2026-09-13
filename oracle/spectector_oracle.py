"""Spectector oracle driver for Phase 4 oracle."""
import json
import logging
import subprocess
from pathlib import Path
from oracle.manifest import LeakRecord

# Statuses Spectector can adjudicate. Anything else (missing, unexpected,
# or paths["0"] absent so unsupported_ins is None) means Spectector did not
# actually render a verdict for this gadget, so we must not fabricate one.
_ADJUDICATED_STATUSES = {"safe", "data", "control"}


def parse_spectector_json(text):
    """Parse Spectector JSON with trailing comma.

    Args:
        text: JSON string (may have trailing comma and whitespace)

    Returns:
        dict with keys: status, data_check, control_check, unsupported_ins,
                        formulas_length, trace_length
    """
    # Strip trailing whitespace and comma
    text = text.rstrip()
    if text.endswith(','):
        text = text[:-1]

    # Spectector's --stats can accumulate several comma-separated objects in one
    # file (it appends per run/path). Wrap in a list so 1..N objects parse, and
    # take the last (most recent) verdict. Robust to both single- and multi-object.
    objs = json.loads("[" + text + "]")
    data = objs[-1] if objs else {}

    # Extract fields from top-level status and paths["0"]
    status = data.get("status")
    path0 = data.get("paths", {}).get("0", {})

    return {
        "status": status,
        "data_check": path0.get("data_check"),
        "control_check": path0.get("control_check"),
        "unsupported_ins": path0.get("unsupported_ins"),
        "formulas_length": path0.get("formulas_length"),
        "trace_length": path0.get("trace_length"),
    }


def build_spec_record(row, status_json, gem5_version="spectector-master"):
    """Build a LeakRecord from gadget row and Spectector status JSON.

    Args:
        row: dict with gadget_id, vuln_class, adjudicable
        status_json: dict from parse_spectector_json
        gem5_version: gem5 version string (default "spectector-master")

    Returns:
        LeakRecord with fields populated according to spec
    """
    # Determine if there's a leak
    status = status_json["status"]
    unsupported_ins = status_json["unsupported_ins"]
    leak = status in {"data", "control"} and unsupported_ins == 0

    # Compute leak_signal as continuous proxy. NOTE: unlike manifest.py's
    # snr_o3 - snr_inorder delta, this is Spectector's raw symbolic trace
    # length — a proxy specific to this oracle, not a cross-oracle SNR value.
    if leak:
        leak_signal = float(status_json["trace_length"])
    else:
        leak_signal = 0.0

    return LeakRecord(
        program=row["gadget_id"],
        vuln_class=row["vuln_class"],
        arch="x86_64",
        secret=0,
        recovered_byte=0,
        recovered_ok=leak,
        snr_o3=0.0,
        snr_inorder=0.0,
        leak_signal=leak_signal,
        leak=leak,
        adjudicable=row["adjudicable"],
        status="ok",
        gem5_version=gem5_version,
        member_files=[],
    )


def _unrunnable(row):
    """Build the LeakRecord for a gadget Spectector did not adjudicate.

    Covers: docker/compile failures, missing output, timeouts, unexpected
    exceptions, and any parsed result where Spectector's top-level status
    isn't a genuine verdict (missing/unexpected status, or paths["0"]
    absent so unsupported_ins is None) or reports unsupported instructions.
    Never a stand-in for a real "safe" verdict.
    """
    return LeakRecord(
        program=row["gadget_id"],
        vuln_class=row["vuln_class"],
        arch="x86_64",
        secret=0,
        recovered_byte=0,
        recovered_ok=False,
        snr_o3=0.0,
        snr_inorder=0.0,
        leak_signal=0.0,
        leak=False,
        adjudicable=row["adjudicable"],
        status="unrunnable",
        gem5_version="spectector-master",
        member_files=[],
    )


def run_spec_gadget(row, repo_root):
    """Run Spectector on a gadget in Docker container.

    Args:
        row: dict with gadget_id, path, vuln_class, adjudicable
        repo_root: path to SpecExec repository root

    Returns:
        LeakRecord with results or status="unrunnable" on failure
    """
    gadget_id = row["gadget_id"]
    rel_path = row["path"]  # relative path to victim .c file

    # Paths for docker run (write build artifacts under the gitignored oracle/build/)
    work_dir = "/work"
    out_asm = f"{work_dir}/oracle/build/{gadget_id}.s"
    out_json = f"{work_dir}/oracle/build/{gadget_id}.json"

    # Docker command: compile and run spectector
    docker_cmd = [
        "docker", "run", "--rm",
        "-v", f"{repo_root}:{work_dir}",
        "specdiscover-spectector:pinned",
        "bash", "-c",
        # Compile with GCC then run spectector. rm the stats file first —
        # Spectector's --stats appends, so a stale file would accumulate objects.
        f"mkdir -p {work_dir}/oracle/build && rm -f {out_json} && "
        f"x86_64-linux-gnu-gcc -O0 -S -fcf-protection=none -o {out_asm} {work_dir}/{rel_path} "
        f"&& run-spectector {out_asm} -a noninter --stats {out_json}"
    ]

    try:
        # Run docker command with timeout. Spectector's symbolic data check on a
        # leaking gadget takes ~25-40s; docker+compile add overhead. 30s flakily
        # times out real leaks (observed on SPECTRE_V1). Allow 300s per gadget.
        result = subprocess.run(
            docker_cmd,
            capture_output=True,
            text=True,
            timeout=300,
        )

        # Check if compilation/execution succeeded
        if result.returncode != 0:
            # Compile or spectector execution failed
            return _unrunnable(row)

        # Read JSON output (written under oracle/build/ inside the mounted repo)
        json_path = Path(repo_root) / "oracle" / "build" / f"{gadget_id}.json"
        if not json_path.exists():
            return _unrunnable(row)

        # Parse JSON and build record
        with open(json_path) as f:
            json_text = f.read()

        status_json = parse_spectector_json(json_text)

        # Only genuinely-adjudicated gadgets may become a "ok" verdict. Treat
        # as unrunnable when: the top-level status isn't one Spectector
        # actually emits, OR paths["0"] was absent (unsupported_ins is None,
        # meaning Spectector produced no path at all), OR Spectector flagged
        # unsupported instructions in the path it did produce. Do not let any
        # of these fall through to build_spec_record, which hardcodes
        # status="ok" for adjudicated gadgets only.
        status = status_json.get("status")
        unsupported_ins = status_json.get("unsupported_ins")
        if (
            status not in _ADJUDICATED_STATUSES
            or unsupported_ins is None
            or unsupported_ins > 0
        ):
            return _unrunnable(row)

        return build_spec_record(row, status_json)

    except subprocess.TimeoutExpired:
        # Timeout
        return _unrunnable(row)
    except Exception as e:
        # Other errors (docker failures, malformed JSON, I/O errors, ...).
        # Log so failures are visible instead of silently swallowed, but
        # never let one bad gadget crash the batch.
        logging.warning("run_spec_gadget failed for %s: %s", row.get("gadget_id"), e)
        return _unrunnable(row)
