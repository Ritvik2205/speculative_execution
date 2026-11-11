"""Pair benchmark: two sides that share everything except the property."""
import random

from eval.pairs import build, score


def hw(variant, label, seq, stamp="260925-134248", cls="SPECTRE_V1"):
    return {"label": label, "vuln_class": cls, "variant": variant, "sequence": seq,
            "group": f"revizor_x_violation-{stamp}_fenced",
            "src_path": f"~/r/violation-{stamp}/program.asm"}


def test_hardware_pairs_cross_leaking_and_mitigated_variants_of_one_program():
    rows = [hw("entry", "SPECTRE_V1", ["lfence", "a", "b"]),
            hw("tail", "SPECTRE_V1", ["a", "b", "lfence"]),
            hw("twin", "BENIGN", ["a", "lfence", "b"]),
            hw("twin", "BENIGN", ["x", "lfence"], stamp="260925-000000")]
    ps = build.hw_pairs(rows, "variants")
    assert len(ps) == 2                       # the second program has no leaking side
    assert {p["kind"] for p in ps} == {"entry|twin", "tail|twin"}
    assert all(p["safe"] == ["a", "lfence", "b"] and p["set"] == "variants" for p in ps)
    assert len({p["base"] for p in ps}) == 1 and len({p["pair_id"] for p in ps}) == 2


def lx(side, seq, fn="f"):
    return {"group": "linux:abc", "file": "k.c", "function": fn, "compiler": "gcc", "opt": "-O2",
            "side": side, "sequence": seq, "label": "SPECTRE_V1" if side == "pre" else "BENIGN"}


def test_linux_pairs_join_pre_and_post_and_drop_unchanged_functions():
    rows = [lx("pre", ["a", "b"]), lx("post", ["a", "m", "b"]),
            lx("pre", ["c"], fn="g"), lx("post", ["c"], fn="g")]
    ps = build.linux_pairs(rows)
    assert len(ps) == 1
    assert ps[0]["leak"] == ["a", "b"] and ps[0]["safe"] == ["a", "m", "b"]
    assert ps[0]["label_source"] == "patch"


def test_inject_places_core_whole_and_twins_keep_the_opcode_multiset():
    host, core = ["h0", "h1", "h2"], ["load", "use"]
    assert build.inject(host, core, 1) == ["h0", "load", "use", "h1", "h2"]
    assert build.reordered(core) == ["use", "load"]
    assert build.fenced(core) == ["load", "lfence", "use"]


def test_injected_pairs_keep_only_what_the_oracle_confirms():
    host, core = ["h0", "h1"], ["load", "use"]
    leak = build.inject(host, core, 1)
    verdicts = {("tainted", tuple(host)): "safe",
                ("tainted", tuple(leak)): "leak",
                ("tainted_ctl", tuple(leak)): "safe",
                ("tainted", tuple(build.inject(host, build.reordered(core), 1))): "safe",
                ("tainted", tuple(build.inject(host, build.fenced(core), 1))): "leak"}
    ps = build.injected_pairs({"id": "j0", "host": host, "core": core, "at": 1},
                              lambda body, victim: verdicts[(victim, tuple(body))])
    assert {p["kind"] for p in ps} == {"inject", "reorder"}       # fenced copy still leaks: dropped
    assert all(p["leak"] == leak and p["label_source"] == "spectector_tainted" for p in ps)


def test_injection_that_does_not_leak_or_is_not_attacker_dependent_yields_nothing():
    job = {"id": "j", "host": ["h"], "core": ["c"], "at": 0}
    assert build.injected_pairs(job, lambda b, v: "safe") == []
    assert build.injected_pairs(job, lambda b, v: "leak") == []     # host leaks, control leaks


def test_jobs_are_deterministic_and_stay_inside_the_host():
    hosts, cores = [["a", "b", "c"], ["d"]], [["x", "y"]]
    j1 = build.jobs(hosts, cores, 5, random.Random(0))
    assert j1 == build.jobs(hosts, cores, 5, random.Random(0))
    assert all(0 <= j["at"] <= len(j["host"]) for j in j1) and len(j1) == 5


def P(pid, leak, safe, base="b", kind="k"):
    return {"pair_id": pid, "base": base, "kind": kind, "leak": leak, "safe": safe}


def test_pair_metrics_count_wins_ties_and_weight_programs_equally():
    pairs = [P("1", ["x"] * 3, ["x"], "A"), P("2", ["x"] * 3, ["x"], "A"),
             P("3", ["x"], ["x"], "B"), P("4", ["x"], ["x", "x"], "C")]
    m = score.pair_metrics(pairs, len)
    assert (m["n"], m["wins"], m["ties"], m["losses"]) == (4, 2, 1, 1)
    assert m["win_rate"] == 0.5 and m["auc"] == 0.625            # tie counts half
    assert abs(m["auc_by_base"] - (1 + 0.5 + 0) / 3) < 1e-9


def test_scorer_blind_to_order_ties_on_a_reorder_pair():
    p = [P("1", ["mov a", "add b"], ["add b", "mov a"])]
    assert score.pair_metrics(p, score.SCORERS["length"])["ties"] == 1
    assert score.pair_metrics(p, score.SCORERS["fewer fences"])["ties"] == 1


def test_threshold_accuracy_uses_a_fixed_cutoff_on_both_sides():
    pairs = [P("1", ["x"] * 5, ["x"]), P("2", ["x"] * 5, ["x"] * 4)]
    m = score.threshold_accuracy(pairs, len, cutoff=3)
    assert m == {"leak_recall": 1.0, "safe_specificity": 0.5, "balanced": 0.75, "both_right": 0.5}
