"""Pair benchmark: two sides that share everything except the property."""
import json
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


def test_linux_pairs_from_an_arm64_build_form_their_own_set():
    rows = [dict(lx("pre", ["ldr w0, [x0]"]), arch="arm64"),
            dict(lx("post", ["csdb", "ldr w0, [x0]"]), arch="arm64"),
            lx("pre", ["a"], fn="g"), lx("post", ["a", "b"], fn="g")]
    ps = {p["set"]: p for p in build.linux_pairs(rows)}
    assert set(ps) == {"linux", "linux_arm64"}
    assert ps["linux_arm64"]["leak"] == ["ldr w0, [x0]"]
    assert ps["linux"]["pair_id"] != ps["linux_arm64"]["pair_id"]


def test_fence_count_sees_arm64_barriers():
    f = score.SCORERS["fewer fences"]
    plain = ["ldr w0, [x0, #4]", "ret"]
    for barrier in ("csdb", "hint #20", "\thint\t#20", "sb", "dsb nsh", "isb"):
        assert f(plain) > f([barrier] + plain), barrier
    assert f(plain) == f(["sbfx x0, x1, #2, #3"] + plain)      # not a barrier
    assert f(["movq (%rdi), %rax"]) > f(["lfence", "movq (%rdi), %rax"])


# --- signal-awareness: what does a model need to keep calling a program leaking? ---

from eval.pairs import signal_probe as signal


def test_reduce_keeps_only_what_the_model_needs():
    needs_fence = lambda s: 1.0 if "lfence" in s else 0.0
    assert signal.reduce(["a", "lfence", "b", "c"], needs_fence) == ["lfence"]
    assert signal.reduce(["a", "b"], needs_fence) is None        # never called leaking


def test_reduce_keeps_order_when_the_model_needs_several():
    both = lambda s: float("load" in s and "use" in s)
    assert signal.reduce(["x", "load", "y", "use", "z"], both) == ["load", "use"]


def test_leak_capable_needs_two_memory_touching_instructions():
    assert not signal.leak_capable(["lfence"])
    assert not signal.leak_capable(["movq (%rdi), %rax", "addq %rax, %rbx"])
    assert signal.leak_capable(["movq (%rdi), %rax", "movb (%rsi,%rax), %cl"])
    assert signal.leak_capable(["pushq %rax", "ret"])             # implicit stack accesses count
    assert not signal.leak_capable(["leaq 8(%rdi), %rax", "leaq (%rsi,%rax), %rcx"])   # lea reads nothing


def test_summary_counts_reduced_programs_that_cannot_leak():
    fence = lambda s: float("lfence" in s)
    rows = signal.run([["a", "lfence"], ["movq (%rdi), %rax", "lfence", "movb (%rsi,%rax), %cl"], ["a"]], fence)
    s = signal.summary(rows)
    assert s["programs"] == 3 and s["called_leaking"] == 2
    assert s["cannot_leak"] == 2 and s["median_reduced_len"] == 1


# --- LLM baseline harness (no network: a fake completion function) ---

from eval.pairs import score_llm


def test_llm_answers_are_parsed_from_the_final_line_only():
    assert score_llm.parse_probability("maybe 0.9?\nPROBABILITY: 0.25") == 0.25
    assert score_llm.parse_probability("PROBABILITY: 1.5") is None
    assert score_llm.parse_probability("no verdict") is None and score_llm.parse_probability(None) is None
    assert score_llm.parse_choice("ANSWER: A is tempting\nANSWER: B") == "B"
    assert score_llm.parse_choice("B") is None


def _two_pairs():
    return [{"pair_id": "p1", "set": "variants", "kind": "k", "leak": ["load", "use"], "safe": ["load", "lfence", "use"]},
            {"pair_id": "p2", "set": "linux", "kind": "k", "leak": ["x"], "safe": ["x", "and"]}]


def test_single_protocol_scores_each_distinct_sequence_once_and_drops_unanswered_pairs():
    calls = []

    def fake(system, prompt):
        calls.append(prompt)
        if "lfence" in prompt:
            return "PROBABILITY: 0.1"
        return None if "```\nx\n```" in prompt else "PROBABILITY: 0.8"
    rows, stats = score_llm.run_single(_two_pairs(), fake)
    assert stats == {"calls": 4, "unparsed": 1}
    assert {(r["pair_id"], r["side"]): r["score"] for r in rows} == {("p1", "leak"): 0.8, ("p1", "safe"): 0.1}


def test_choice_protocol_asks_both_orders_so_a_position_habit_scores_half():
    always_a = lambda system, prompt: "ANSWER: A"
    rows, stats = score_llm.run_choice(_two_pairs()[:1], always_a)
    assert stats["calls"] == 2
    assert {r["side"]: r["score"] for r in rows} == {"leak": 0.5, "safe": 0.5}
    sees_fence = lambda system, prompt: "ANSWER: " + ("B" if prompt.index("lfence") < prompt.index("Sequence B") else "A")
    rows, _ = score_llm.run_choice(_two_pairs()[:1], sees_fence)
    assert {r["side"]: r["score"] for r in rows} == {"leak": 1.0, "safe": 0.0}


def test_plan_counts_calls_before_anything_is_sent():
    assert score_llm.plan(_two_pairs(), "single", 3) == 12
    assert score_llm.plan(_two_pairs(), "choice", 3) == 12


# --- several score files under one name = several seeds of one model ---

def test_score_files_with_the_same_name_are_seeds_of_one_row(tmp_path):
    pairs = [{"pair_id": "a", "base": "b1", "leak": ["l"], "safe": ["s"]},
             {"pair_id": "b", "base": "b2", "leak": ["l2"], "safe": ["s2"]}]

    def write(name, leak_a, leak_b):
        p = tmp_path / name
        p.write_text("".join(json.dumps(r) + "\n" for r in [
            {"pair_id": "a", "side": "leak", "score": leak_a}, {"pair_id": "a", "side": "safe", "score": 0.5},
            {"pair_id": "b", "side": "leak", "score": leak_b}, {"pair_id": "b", "side": "safe", "score": 0.5}]))
        return str(p)
    specs = [f"GINE={write('s0.jsonl', 0.9, 0.9)}", f"GINE={write('s1.jsonl', 0.9, 0.1)}",
             f"other={write('o.jsonl', 0.1, 0.1)}"]
    rows = score.score_files({("set", "all"): pairs}, specs)
    assert [m["auc"] for m in rows["GINE"][("set", "all")]] == [1.0, 0.5]
    assert [m["auc"] for m in rows["other"][("set", "all")]] == [0.0]
    assert score._fmt(rows["GINE"][("set", "all")]).startswith("0.750 ± 0.354 (2 seeds)")


def test_graph_model_sides_carry_the_architecture_of_their_pair_set():
    import importlib.util
    spec = importlib.util.spec_from_file_location("score_gine", "eval/pairs/score_gine.py")
    sg = importlib.util.module_from_spec(spec)
    spec.loader.exec_module(sg)
    recs = sg.sides([{"pair_id": "a", "set": "linux_arm64", "leak": ["ldr x0, [x1]"], "safe": ["csdb"]},
                     {"pair_id": "b", "set": "variants", "leak": ["l"], "safe": ["s"]}], "SAFE")
    assert [r["arch"] for r in recs] == ["arm64", "arm64", "x86_64", "x86_64"]


# --- LLM baseline: spending cap and paid-call ledger --------------------------------------

def _llm_pairs():
    return [{"pair_id": f"p{i}", "set": "variants", "kind": "", "leak": [f"mov {i}(%rax), %rbx"],
             "safe": [f"lfence", f"mov {i}(%rax), %rbx"]} for i in range(6)]


def test_llm_ledger_stops_at_the_cap_and_never_pays_twice(tmp_path):
    from eval.pairs import score_llm as L
    calls = []

    def raw(system, prompt):                     # 1M output tokens on opus = $20 a call
        calls.append(prompt)
        return "PROBABILITY: 0.9", "claude-opus-5-5", 0, 50_000     # $1.00 a call
    led = L.Ledger(tmp_path / "ledger.jsonl", cap_usd=3.0, reserve=1.0)
    job_list = L.jobs(_llm_pairs(), "single", 1)
    assert len(job_list) == 12
    st = L.prefetch(job_list, raw, led, "claude-opus-5-5", "low", workers=1)
    assert st["stopped_by_cap"] and len(calls) == 3 and abs(led.spent - 3.0) < 1e-9
    # a second run with a higher cap pays only for what is missing
    led2 = L.Ledger(tmp_path / "ledger.jsonl", cap_usd=100.0, reserve=1.0)
    L.prefetch(job_list, raw, led2, "claude-opus-5-5", "low", workers=3)
    assert len(calls) == 12 and len(set(calls)) == 12
    rows, stats = L.run_single(_llm_pairs(), L.from_ledger(led2, "claude-opus-5-5", "low"))
    assert len(rows) == 12 and stats["unparsed"] == 0


def test_llm_repeats_are_separate_paid_calls_and_choice_reads_both_orders(tmp_path):
    from eval.pairs import score_llm as L

    def raw(system, prompt):                     # always picks the sequence without lfence
        a = prompt.split("Sequence B:")[0]
        return ("ANSWER: B" if "lfence" in a else "ANSWER: A"), "claude-opus-5-5", 10, 10
    led = L.Ledger(tmp_path / "l.jsonl", cap_usd=1.0, reserve=0.01)
    job_list = L.jobs(_llm_pairs(), "choice", 2)
    st = L.prefetch(job_list, raw, led, "claude-opus-5-5", "low")
    assert st["paid"] == 24
    rows, _ = L.run_choice(_llm_pairs(), L.from_ledger(led, "claude-opus-5-5", "low"), repeats=2)
    assert all(r["score"] == (1.0 if r["side"] == "leak" else 0.0) for r in rows)
