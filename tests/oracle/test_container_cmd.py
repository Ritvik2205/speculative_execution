"""Tests for the container-runtime switch in spectector_oracle._container_cmd.

The Spectector oracle runs under Docker on dev boxes and under Apptainer on
the cluster (no Docker there). The runtime is chosen by env var; the Docker
path must stay byte-for-byte what it always was.
"""
import pytest

from oracle.spectector_oracle import _container_cmd

REPO = "/home/s123/SpecExec"
WORK = "/work"
INNER = "mkdir -p /work/oracle/build && run-spectector /work/x.s"


def test_default_is_docker(monkeypatch):
    monkeypatch.delenv("SPECEXEC_CONTAINER_RUNTIME", raising=False)
    cmd = _container_cmd(REPO, WORK, INNER)
    assert cmd == [
        "docker", "run", "--rm",
        "-v", f"{REPO}:{WORK}",
        "specdiscover-spectector:pinned",
        "bash", "-c", INNER,
    ]


def test_explicit_docker(monkeypatch):
    monkeypatch.setenv("SPECEXEC_CONTAINER_RUNTIME", "docker")
    cmd = _container_cmd(REPO, WORK, INNER)
    assert cmd[0] == "docker"
    assert cmd[-1] == INNER  # inner script passed through unchanged


@pytest.mark.parametrize("runtime", ["apptainer", "singularity", "Apptainer"])
def test_apptainer_builds_exec_bind(monkeypatch, runtime):
    monkeypatch.setenv("SPECEXEC_CONTAINER_RUNTIME", runtime)
    monkeypatch.setenv("SPECEXEC_SPECTECTOR_SIF", "/disk/scratch/s123/spectector.sif")
    cmd = _container_cmd(REPO, WORK, INNER)
    assert cmd[0] == runtime.lower()
    assert cmd[1] == "exec"
    assert "--cleanenv" in cmd
    # repo bound at work_dir, writable, so oracle/build/ artifacts land in repo
    assert "--bind" in cmd
    assert f"{REPO}:{WORK}" in cmd
    # the .sif path is on the argv
    assert "/disk/scratch/s123/spectector.sif" in cmd
    # HOME forced writable (container FS is read-only for a non-root user)
    assert cmd[-2] == "-c"
    assert cmd[-1].startswith("export HOME=/tmp;")
    assert INNER in cmd[-1]


def test_apptainer_without_sif_raises(monkeypatch):
    monkeypatch.setenv("SPECEXEC_CONTAINER_RUNTIME", "apptainer")
    monkeypatch.delenv("SPECEXEC_SPECTECTOR_SIF", raising=False)
    with pytest.raises(RuntimeError, match="SPECEXEC_SPECTECTOR_SIF"):
        _container_cmd(REPO, WORK, INNER)
