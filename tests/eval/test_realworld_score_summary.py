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
