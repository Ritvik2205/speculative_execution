"""Spectector oracle driver for Phase 4 oracle."""
import json
import logging
import os
import subprocess
from pathlib import Path
from oracle.manifest import LeakRecord

# Container runtime for the pinned Spectector image. Default is Docker (the
# Mac / i5 dev boxes). On the Teaching/ICF cluster there is no Docker, only
# Apptainer, so set SPECEXEC_CONTAINER_RUNTIME=apptainer and point
# SPECEXEC_SPECTECTOR_SIF at the .sif pulled from ghcr.io (see
# oracle/apptainer/pull_spectector.sh). Spectector is symbolic — no hardware
# dependency — so it runs anywhere x86_64 Linux does.
_DOCKER_IMAGE = "specdiscover-spectector:pinned"
# Spectector-Combined (Fabian, Guarnieri & Patrignani, CCS 2022) extends the
# analysis beyond conditional branches, selected per run by `-v` (NOT
# `--version`: the flag is undocumented in the usage text, and the fork's own
# test scripts under v2_tests/ invoke it as `-v 2`):
#   1 = conditional branch (what upstream does), 2 = indirect branch,
#   4 = store-to-load forwarding, 5 = return speculation,
#   6 = straight-line speculation. Digits combine (`--version 124`); 5 and 6
# cannot combine, as they speculate on the same instructions.
# Kept as a SEPARATE image so existing V1/V4 results stay reproducible against
# the exact oracle that produced them. See
# oracle/docker/Dockerfile.spectector_combined.
_DOCKER_IMAGE_COMBINED = "specdiscover-spectector-combined:pinned"

# Which `--version` digits to request per class, when running the combined
# image. A class absent here has no modelled mechanism and must not be
# adjudicated by this oracle.
SPECTECTOR_VERSION_FOR_CLASS = {
    "SPECTRE_V1": "1",
    "SPECTRE_V2": "2",
    "SPECTRE_V4": "4",
    "RETBLEED": "5",
    "INCEPTION": "5",
}


def _container_cmd(repo_root, work_dir, inner_script, image=None):
    """Build the argv that runs `inner_script` inside the Spectector image,
    with `repo_root` bound at `work_dir`. Docker (default) and Apptainer
    produce identical in-container behaviour; the Docker path is byte-for-byte
    what it was before this indirection was added."""
    runtime = os.environ.get("SPECEXEC_CONTAINER_RUNTIME", "docker").lower()
    if runtime in ("apptainer", "singularity"):
        # The combined image has its own .sif; a versioned run (image set to
        # _DOCKER_IMAGE_COMBINED) must use SPECEXEC_SPECTECTOR_COMBINED_SIF so
        # the upstream V1/V4 runs and the extended V2/RETBLEED runs can coexist
        # on the cluster without swapping one env var.
        if image == _DOCKER_IMAGE_COMBINED:
            sif = os.environ.get("SPECEXEC_SPECTECTOR_COMBINED_SIF")
            if not sif:
                raise RuntimeError(
                    "a versioned (--version/-v) run requires "
                    "SPECEXEC_SPECTECTOR_COMBINED_SIF to point at the pulled "
                    "combined .sif (oracle/apptainer/pull_spectector.sh with "
                    "COMBINED=1)")
        else:
            sif = os.environ.get("SPECEXEC_SPECTECTOR_SIF")
            if not sif:
                raise RuntimeError(
                    "SPECEXEC_CONTAINER_RUNTIME=%s requires SPECEXEC_SPECTECTOR_SIF "
                    "to point at the pulled .sif (oracle/apptainer/pull_spectector.sh)"
                    % runtime)
        # --cleanenv: don't leak the host PATH/HOME into the container (matches
        # Docker's clean env). export HOME=/tmp: Ciao/Z3 want a writable HOME,
        # and the container FS is read-only under a non-root user; /tmp is
        # always writable. The bind at work_dir is writable, so build artifacts
        # still land under oracle/build/ in the repo exactly as with Docker.
        return [runtime, "exec", "--cleanenv",
                "--bind", "%s:%s" % (repo_root, work_dir),
                sif, "bash", "-c", "export HOME=/tmp; " + inner_script]
    # Default: Docker.
    return ["docker", "run", "--rm",
            "-v", "%s:%s" % (repo_root, work_dir),
            image or _DOCKER_IMAGE, "bash", "-c", inner_script]

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


def run_spec_gadget(row, repo_root, versions=None, image=None,
                    window=None, steps=None, timeout=None):
    """Run Spectector on a gadget in Docker container.

    Args:
        row: dict with gadget_id, path, vuln_class, adjudicable
        repo_root: path to SpecExec repository root
        versions: Spectector-Combined `-v` digits (e.g. "2" for
            indirect-branch speculation). None keeps upstream behaviour,
            which models conditional branches only. Requires `image` to be
            the combined image -- upstream Spectector has no such flag.
        image: container image to run; defaults to the pinned upstream one.
        window, steps: speculative window (`-w`) and step budget (`--steps`)
            for the versioned path; default 50 / 1000000. NOTE 50, not the
            fork's 200: the batch V2 adjudicability run (eval/v2_combined)
            found w=200 TIMES OUT the positive-control anchor in all 10 shards
            (every gadget reads unrunnable), while w=50 passes the anchor and
            adjudicates 82%. Ignored on the upstream path.
        timeout: seconds Spectector may run (default
            $SPECEXEC_SPECTECTOR_TIMEOUT, else 300).

    Returns:
        LeakRecord with results or status="unrunnable" on failure
    """
    if versions and image is None:
        image = _DOCKER_IMAGE_COMBINED
    gadget_id = row["gadget_id"]
    rel_path = row["path"]  # relative path to victim .c file

    # Paths for docker run (write build artifacts under the gitignored oracle/build/)
    work_dir = "/work"
    out_asm = f"{work_dir}/oracle/build/{gadget_id}.s"
    out_json = f"{work_dir}/oracle/build/{gadget_id}.json"

    # Compile with GCC then run spectector. rm the stats file first —
    # Spectector's --stats appends, so a stale file would accumulate objects.
    # The combined (`-v`) path needs the flags Spectector-Combined's own test
    # scripts use, and the upstream path must NOT get them (they change its
    # behaviour and the V1/V4 numbers were produced without them):
    #   -e [<entry>]        an explicit entry point. Upstream auto-detects it,
    #                       but the extended analyses need it named, and without
    #                       it an indirect-branch gadget blows up (observed:
    #                       "Killed"). The entry is `gadget` when the .s
    #                       defines it (every synth victim does, and the
    #                       combined V2 victim defines its landing pad
    #                       `leaky` FIRST), else the first global (non-.L)
    #                       label -- derived in-shell so it fits any victim.
    #   --skip-uns --parse-uns   treat instructions the model lacks as skips
    #                       rather than aborting -- required for the extra
    #                       mechanisms, matching v2_tests/execute_v2.sh.
    #   -w 50 --steps ...   a speculative window and step budget. 50 is the
    #                       anchor-validated window; the fork's 200 times the
    #                       positive-control anchor out (eval/v2_combined).
    #   -fcf-protection=branch   the fork models a mispredicted indirect jump
    #                       as landing on any `endbr64`; with none in the .s
    #                       the target set is unbounded and the analysis
    #                       exhausts memory (32 GB measured on the cluster).
    #                       The upstream path keeps =none, byte-identical.
    if versions:
        extra = (f" -v {versions} -e [$ENTRY] --skip-uns --parse-uns "
                 f"-w {window or 50} --steps {steps or 1000000}")
        cf_protection = "branch"
        entry_cmd = (f"ENTRY=$( (grep -oE '^gadget:' {out_asm} || "
                     f"grep -oE '^[a-zA-Z_][a-zA-Z0-9_]*:' {out_asm} "
                     f"| grep -v '^\\.') | head -1 | tr -d ':') && ")
    else:
        extra = ""
        entry_cmd = ""
        cf_protection = "none"
    if timeout is None:
        timeout = int(os.environ.get("SPECEXEC_SPECTECTOR_TIMEOUT", "300"))
    # Kill Spectector from INSIDE the container. subprocess.run's timeout only
    # kills the runtime client: under Apptainer (no PID namespace) and Docker
    # alike the ciaoengine underneath survives it and keeps its memory (seen:
    # two orphaned 12-13 GB V2 analyses on a shared cluster node). coreutils
    # `timeout` signals the whole process group it creates, so the analysis
    # dies with it; the outer timeout below is only a backstop.
    inner_script = (
        f"mkdir -p {work_dir}/oracle/build && rm -f {out_json} && "
        f"x86_64-linux-gnu-gcc -O0 -S -fcf-protection={cf_protection} -o {out_asm} {work_dir}/{rel_path} "
        f"&& {entry_cmd}timeout -s KILL {timeout} run-spectector {out_asm} -a noninter"
        + extra
        + f" --stats {out_json}"
    )
    container_cmd = _container_cmd(repo_root, work_dir, inner_script, image=image)

    try:
        # Run the container with a timeout. Spectector's symbolic data check on a
        # leaking gadget takes ~25-40s; container+compile add overhead. 30s flakily
        # times out real leaks (observed on SPECTRE_V1). Allow 300s per gadget
        # by default; the outer limit adds slack for container start + compile.
        result = subprocess.run(
            container_cmd,
            capture_output=True,
            text=True,
            timeout=timeout + 60,
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
