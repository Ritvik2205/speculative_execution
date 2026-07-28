from __future__ import annotations
import os, subprocess
from oracle.manifest import LeakRecord
from oracle.parse_poc import parse_poc_output
from oracle.leak_signal import snr, leak_signal, is_leak

IMAGE = "specdiscover-gem5:pinned"

def gem5_binary_for(arch):
    return "/gem5/build/ARM/gem5.opt" if arch == "arm64" else "/gem5/build/X86/gem5.opt"

def compiler_for(arch):
    return "aarch64-linux-gnu-gcc" if arch == "arm64" else "gcc"

def build_record(gadget_id, vuln_class, arch, secret, o3_stdout, timing_stdout,
                 adjudicable, gem5_version, status="ok") -> LeakRecord:
    o3 = parse_poc_output(o3_stdout)
    tm = parse_poc_output(timing_stdout)
    s_o3 = snr(o3.latencies, secret)
    s_tm = snr(tm.latencies, secret)
    recovered_ok = (o3.recovered_byte == secret)
    return LeakRecord(
        program=gadget_id, vuln_class=vuln_class, arch=arch,
        secret=secret, recovered_byte=o3.recovered_byte, recovered_ok=recovered_ok,
        snr_o3=s_o3, snr_inorder=s_tm, leak_signal=leak_signal(s_o3, s_tm),
        leak=is_leak(recovered_ok, s_o3, s_tm), adjudicable=adjudicable,
        status=status, gem5_version=gem5_version, member_files=[],
    )

def _docker(repo_root, *cmd):
    return subprocess.run(
        ["docker", "run", "--rm", "-v", f"{repo_root}:/work", IMAGE, *cmd],
        capture_output=True, text=True)

def _run_cpu(repo_root, arch, binary_in_container, cpu):
    isa = "arm" if arch == "arm64" else "x86"
    r = _docker(repo_root, gem5_binary_for(arch), "/work/oracle/gem5_se.py",
                "--binary", binary_in_container, "--cpu", cpu, "--isa", isa)
    return r.stdout

def run_gadget(row, repo_root, gem5_version) -> LeakRecord:
    gid, arch, cls = row["gadget_id"], row["arch"], row["vuln_class"]
    src = "/work/" + os.path.relpath(row["path"], repo_root)
    out_bin = f"/work/oracle/build/{gid}"
    comp = _docker(repo_root, "bash", "/work/oracle/compile_gadget.sh",
                   src, out_bin, compiler_for(arch))
    if comp.returncode != 0:
        return build_record(gid, cls, arch, row["secret"], "", "",
                            row["adjudicable"], gem5_version, status="build_failed")
    o3 = _run_cpu(repo_root, arch, out_bin, "o3")
    tm = _run_cpu(repo_root, arch, out_bin, "timing")
    return build_record(gid, cls, arch, row["secret"], o3, tm,
                        row["adjudicable"], gem5_version, status="ok")
