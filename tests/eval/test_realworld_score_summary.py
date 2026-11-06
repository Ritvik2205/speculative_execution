import json

from eval import realworld_score_summary as rs


def fake(bal, n=100):
    cell = {"model": {"bal_acc": bal}, "always_attack": {"bal_acc": 0.5, "n": n, "n_leak": 5, "n_safe": 95, "n_groups": 4}}
    return {"counts": {"headline": n}, "meta": {}, "slices": {"headline": {"all": cell}}}


def test_summary_mean_sd_per_seed(tmp_path):
    for tag, vals in (("rw", [0.8, 0.9]), ("b1", [0.6])):
        for s, v in zip((1, 7), vals):
            d = tmp_path / f"{tag}_s{s}"
            d.mkdir()
            (d / "score.json").write_text(json.dumps(fake(v)))
    md = rs.render(rs.collect(tmp_path))
    assert "0.850 +/- 0.071" in md and "0.800 0.900" in md
    assert "| b1 | 1 |" in md and "bar: always_attack" in md


def test_summary_names_mode_and_bars_per_tag(tmp_path):
    for tag, mode, bar in (("rw", "recomputed vs the run's own pool (--overlap-clean): 3 -> 0", 0.4),
                           ("b1", None, 0.6)):
        d = tmp_path / f"{tag}_s1"
        d.mkdir()
        js = fake(0.7)
        js["slices"]["headline"]["all"]["opcode_lr"] = {"bal_acc": bar}
        js["meta"] = {"train_overlap": mode} if mode else {}
        (d / "score.json").write_text(json.dumps(js))
    md = rs.render(rs.collect(tmp_path))
    assert "overlap-clean" in md and "H0-comparable" in md
    assert "bar: opcode_lr (rw)" in md and "bar: opcode_lr (b1)" in md


def test_missing_and_failed_runs_reported_at_top(tmp_path):
    # I6: expected tag x seed list + per-run rc status file -> MISSING / gate-failed at the top of SUMMARY.md
    d = tmp_path / "rw_s1"
    d.mkdir()
    (d / "score.json").write_text(json.dumps(fake(0.7)))
    status = tmp_path / "STATUS.tsv"
    status.write_text("rw_s1\t0\nrw_s7\t2\nb1_s1\tno_ckpt\n")
    md = rs.render(rs.collect(tmp_path), expected=["rw_s1", "rw_s7", "b1_s1", "b1_s7"],
                   status=rs.read_status(status))
    head = md.split("## ", 2)[1]                     # the first section
    assert "MISSING" in head and "rw_s7" in head and "rc=2" in head and "gate" in head
    assert "b1_s1" in head and "no_ckpt" in head and "b1_s7" in head and "no status" in head
    assert "`rw_s1`" not in head
    assert md.index("MISSING") < md.index("| arm |")
    ok = rs.render(rs.collect(tmp_path), expected=["rw_s1"], status=rs.read_status(status))
    assert "all 1 expected runs present" in ok.lower()


def test_expected_from_cli(tmp_path):
    out = tmp_path / "S.md"
    rs.main(["--root", str(tmp_path), "--out", str(out), "--expected", "rw_s1", "b1_s1"])
    assert "MISSING" in out.read_text()
