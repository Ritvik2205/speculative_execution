"""Pair benchmark: two sides that share everything except the property."""
import json
import random

import pytest

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


def test_mechanism_rule_is_scored_per_class_and_weighted_by_pairs():
    # the rule depends on the pair's class, so a mixed set is scored class by class
    pairs = [json.loads(l) for l in open("eval/pairs/data/pairs_hw.jsonl")][:60]
    assert len({p["cls"] for p in pairs}) >= 1
    m = score.mechanism_metrics(pairs)
    by = {}
    for p in pairs:
        by.setdefault(p["cls"], []).append(p)
    want = sum(score.pair_metrics(q, score._mechanism(c))["auc"] * len(q) for c, q in by.items()) / len(pairs)
    assert m["n"] == len(pairs) and abs(m["auc"] - want) < 1e-12


# ---- open-weight model run on the cluster (no network, no paid calls) ----
from eval.pairs import score_llm_local as local


def test_only_text_after_the_thinking_block_is_read_as_the_answer():
    assert local.visible("PROBABILITY: 0.9\n</think>\nreasoned.\nPROBABILITY: 0.2") == "reasoned.\nPROBABILITY: 0.2"
    # thinking that never closed (ran out of tokens) is not an answer, whatever it contains
    assert local.visible("so far\nPROBABILITY: 0.9") is None
    assert local.visible("a</think>b</think>\nANSWER: B") == "ANSWER: B"


def test_shards_cover_every_job_once_and_do_not_depend_on_job_order():
    jl = [(f"prompt {i}", r) for i in range(40) for r in range(3)]
    parts = [local.shard_of(jl, i, 4, "m", "e") for i in range(4)]
    assert sorted(j for p in parts for j in p) == sorted(jl)
    assert all(parts[i] and not set(parts[i]) & set(parts[j]) for i in range(4) for j in range(i))
    assert set(local.shard_of(jl[::-1], 2, 4, "m", "e")) == set(parts[2])


def test_batches_group_similar_lengths_and_respect_the_token_budget():
    items = [("k%d" % i, "p", n) for i, n in enumerate([10, 3000, 20, 2900, 15, 12])]
    bs = local.batches(items, max_batch=4, token_budget=6000)
    assert sorted(x for b in bs for x in b) == sorted(items)
    assert all(len(b) <= 4 and len(b) * max(n for _, _, n in b) <= 6000 for b in bs)
    assert [n for _, _, n in bs[0]] == [3000, 2900]            # longest first, so memory fails early


def test_local_run_resumes_from_its_ledger_and_scores_through_the_same_parser(tmp_path):
    pairs = [{"pair_id": "a", "set": "variants", "kind": "", "leak": ["mov (%rax), %rbx"], "safe": ["lfence", "ret"]}]
    jl = score_llm.jobs(pairs, "single", 2)
    asked = []

    def gen(batch, seed):
        asked.extend(q for _, q in batch)
        return [("thinking</think>\nPROBABILITY: %s" % ("0.8" if "mov" in q else "0.1"), 50, 9, True) for _, q in batch]

    led = tmp_path / "ledger.jsonl"
    count = lambda system, prompt: len(prompt)
    s1 = local.run(jl, gen, count, led, "m@rev", "sampled", max_prompt_tokens=10_000)
    s2 = local.run(jl, gen, count, led, "m@rev", "sampled", max_prompt_tokens=10_000)
    assert s1["generated"] == 4 and s2["generated"] == 0 and len(asked) == 4
    ledger = score_llm.Ledger(led, 0)
    rows, stats = score_llm.run_single(pairs, score_llm.from_ledger(ledger, "m@rev", "sampled"), 2)
    assert {(r["side"], r["score"]) for r in rows} == {("leak", 0.8), ("safe", 0.1)} and stats["unparsed"] == 0


def test_local_run_records_but_does_not_score_truncated_or_overlong_prompts(tmp_path):
    jl = [("short prompt", 0), ("x" * 500, 0)]
    gen = lambda batch, seed: [("PROBABILITY: 0.9 and still thinking", 5, 4096, False) for _ in batch]
    led = tmp_path / "ledger.jsonl"
    s = local.run(jl, gen, lambda system, prompt: len(prompt), led, "m", "e", max_prompt_tokens=100)
    rows = [json.loads(l) for l in open(led)]
    assert s["generated"] == 1 and s["too_long"] == 1 and s["no_answer"] == 1
    assert all(r["text"] is None for r in rows) and {r.get("skipped") for r in rows} == {None, "too_long"}


# ---- injected pairs, version 2: length-neutral kinds, hosts and cores split ----
HOST = [f"movl\t${i}, %r10d" for i in range(12)]
CORE = ["movq\t16(%r15), %rsi", "movb\t%dl, (%rsi,%rcx)"]


def test_place_puts_fence_and_core_at_the_asked_positions_and_keeps_host_order():
    s = build.place(HOST, CORE, fence_idx=7, core_start=2)
    assert len(s) == len(HOST) + len(CORE) + 1 and s[7] == "lfence" and s[2:4] == CORE
    assert [x for x in s if x in HOST] == HOST


def test_barrier_sides_differ_only_in_which_side_of_the_fence_the_core_sits():
    core_earlier = fence_later = 0
    for seed in range(400):
        leak, safe = build.barrier_sides(HOST, CORE, random.Random(seed))
        assert len(leak) == len(safe) and sorted(leak) == sorted(safe)
        assert leak.index(CORE[0]) + len(CORE) <= leak.index("lfence") and safe.index("lfence") < safe.index(CORE[0])
        assert leak[leak.index(CORE[0]) + 1] == CORE[1] and safe[safe.index(CORE[0]) + 1] == CORE[1]
        assert [x for x in leak if x in HOST] == HOST == [x for x in safe if x in HOST]
        core_earlier += leak.index(CORE[0]) < safe.index(CORE[0])
        fence_later += leak.index("lfence") > safe.index("lfence")
    # neither position on its own separates the sides
    assert 160 <= core_earlier <= 240 and core_earlier + fence_later == 400


def test_decoy_keeps_every_mnemonic_and_breaks_the_link_into_the_address():
    d = build.decoy(CORE, random.Random(0))
    assert d is not None and d != CORE and d[0] == CORE[0] and len(d) == len(CORE)
    assert [x.split()[0] for x in d] == [x.split()[0] for x in CORE]
    assert "%rsi" not in d[1] and d[1].startswith("movb\t%dl, (")       # only the address register changed
    assert "%r15" not in d[1] and "%rsp" not in d[1]                     # never the tainted pointer or the stack
    assert all("(%rbx,%rcx)" in build.decoy(CORE, random.Random(i), prefer={"rbx", "r15"})[1] for i in range(20))
    # with `prefer`, only those registers: none qualifies -> no decoy (no new register on the safe side)
    assert build.decoy(CORE, random.Random(0), prefer={"r15", "rcx", "rsi"}) is None
    # a core whose second instruction does not use what the first defines has no decoy
    assert build.decoy(["movq\t16(%r15), %rsi", "testq\t%rax, %rax"], random.Random(0)) is None


def test_v2_decoy_names_the_same_registers_on_both_sides():
    host = HOST[:-1] + ["movq\t%rsi, %rbx"]          # host names %rbx and still uses %rsi
    job = {"id": "j0", "part": "train", "host": host, "core": CORE, "at": 3, "seed": 1,
           "host_cluster": "H1", "template": "T1"}
    oracle = lambda body, victim: "safe" if victim == "tainted_ctl" or CORE[1] not in body else "leak"
    ps = [p for p in build.injected_pairs_v2(job, oracle) if p["kind"] == "decoy"]
    assert len(ps) == 1 and build.register_names(ps[0]["leak"]) == build.register_names(ps[0]["safe"])
    assert "(%rbx,%rcx)" in "\n".join(ps[0]["safe"])
    # host that names no free 64-bit register: no decoy rather than a new name on the safe side
    job2 = {**job, "host": HOST}
    assert [p for p in build.injected_pairs_v2(job2, oracle) if p["kind"] == "decoy"] == []


def test_parts_are_fixed_by_name_and_roughly_60_20_20():
    parts = [build.part_of(f"cluster{i}") for i in range(2000)]
    assert parts == [build.part_of(f"cluster{i}") for i in range(2000)]
    c = {p: parts.count(p) / 2000 for p in ("train", "val", "test")}
    assert abs(c["train"] - 0.6) < 0.04 and abs(c["val"] - 0.2) < 0.04 and abs(c["test"] - 0.2) < 0.04


def test_v2_pairs_need_the_oracle_on_every_side_and_the_fence_to_be_the_cause():
    job = {"id": "j0", "part": "train", "host": HOST[:-1] + ["movq\t%rsi, %rbx"], "core": CORE, "at": 3,
           "seed": 1, "host_cluster": "H1", "template": "T1"}

    def oracle(body, victim):                 # leaks iff the core's two lines are intact and not behind a fence
        if victim == "tainted_ctl":
            return "safe"
        if CORE[0] not in body or CORE[1] not in body or body.index(CORE[1]) < body.index(CORE[0]):
            return "safe"
        return "safe" if "lfence" in body[:body.index(CORE[0])] else "leak"

    ps = build.injected_pairs_v2(job, oracle)
    assert sorted(p["kind"] for p in ps) == ["barrier", "decoy"]         # reorder is test-only
    assert all(p["set"] == "injected2" and p["part"] == "train" and len(p["leak"]) == len(p["safe"]) for p in ps)
    assert sorted(p["kind"] for p in build.injected_pairs_v2({**job, "part": "test"}, oracle)) == ["barrier", "decoy", "reorder"]
    # an oracle that calls the fenced side safe even without its fence: the fence is not the cause, no barrier pair
    _, sb = build.barrier_sides(job["host"], CORE, random.Random("1:barrier"))
    bare = [x for x in sb if x != "lfence"]
    not_the_fence = lambda body, victim: "safe" if body == bare else oracle(body, victim)
    assert "barrier" not in [p["kind"] for p in build.injected_pairs_v2(job, not_the_fence)]
    # a core that does not leak in this host gives nothing
    assert build.injected_pairs_v2(job, lambda body, victim: "safe") == []


def test_v2_jobs_draw_hosts_and_cores_from_one_part_only():
    hosts = {"train": [HOST], "val": [HOST[::-1]], "test": [HOST[2:] + HOST[:2]]}
    cores = {"train": [CORE], "val": [CORE], "test": [CORE]}
    meta = lambda x: "m"
    js = build.jobs_v2(hosts, cores, {"train": 5, "val": 3, "test": 2}, 0, meta, meta)
    assert [j["part"] for j in js].count("train") == 5 and len(js) == 10
    assert all(j["host"] == hosts[j["part"]][0] for j in js)
    # asking for more later leaves the earlier attempts as they were
    more = build.jobs_v2(hosts, cores, {"train": 9, "val": 3, "test": 6}, 0, meta, meta)
    assert all(j in more for j in js)


def test_exclude_public_drops_only_the_linux_sets():
    allp, nonpub = local.load_pairs(0), local.load_pairs(0, exclude_public=True)
    assert {p["set"] for p in allp} - {p["set"] for p in nonpub} == set(score_llm.PUBLIC_SETS)
    assert len(nonpub) == sum(p["set"] not in score_llm.PUBLIC_SETS for p in allp)


def test_a_backend_with_its_own_seeds_gets_one_seed_per_prompt_and_extra_fields_are_kept(tmp_path):
    jl = [(f"prompt {i}", 0) for i in range(5)]
    got = []

    def gen(batch, seeds):
        got.append(list(seeds))
        return [("x</think>\nPROBABILITY: 0.5", 3, 4, True, {"finish_reason": "stop"}) for _ in batch]
    gen.per_row_seeds = True
    led = tmp_path / "l.jsonl"
    local.run(jl, gen, lambda system, prompt: 1, led, "m", "card-sampling-vllm", 100)
    rows = [json.loads(l) for l in open(led)]
    assert len(got) == 1 and len(set(got[0])) == 5                       # all in one call, distinct seeds
    assert sorted(r["seed"] for r in rows) == sorted(got[0]) and all(r["finish_reason"] == "stop" for r in rows)
    assert local.EFFORTS["vllm"] != local.EFFORTS["hf"]                   # never mixed with transformers answers


def test_answer_cap_gets_its_own_job_keys_and_fits_the_context():
    from eval.pairs import score_llm_local as local
    assert local.effort_for("vllm", 4096) == "card-sampling-vllm"            # the first runs keep their keys
    assert local.effort_for("vllm", 30000) == "card-sampling-vllm-max30000"
    assert local.effort_for("hf", 4096) == local.EFFORT
    assert local.answer_cap(30000, 32768, 1500) == 30000
    assert local.answer_cap(30000, 32768, 7000) == 25768                    # prompt + answer fits the context


def test_program_interval_resamples_programs_not_pairs():
    from eval.pairs.llm_local_report import program_interval
    # Program "a": 40 pairs, all ranked right. Program "b": 1 pair, ranked wrong.
    pairs = [{"pair_id": f"a{i}", "base": "a"} for i in range(40)] + [{"pair_id": "b0", "base": "b"}]
    table = {}
    for p in pairs:
        right = p["base"] == "a"
        table[(p["pair_id"], "leak")] = 1.0 if right else 0.0
        table[(p["pair_id"], "safe")] = 0.0 if right else 1.0
    lo, hi = program_interval(pairs, table, draws=400)
    # Over pairs the statistic is 40/41 with a tight interval; over two programs a draw can be all "b".
    assert lo == 0.0 and hi == 1.0
    assert program_interval(pairs[:40], table) is None      # one program: no interval


def test_lora_smoke_trains_on_the_answer_only_and_finds_attention_layers_by_name():
    from eval.pairs.lora_smoke import training_example, lora_targets
    ids, labels = training_example([5, 6, 7], [8, 9])
    assert ids == [5, 6, 7, 8, 9] and labels == [-100, -100, -100, 8, 9]
    names = ["model.layers.0.self_attn.q_proj", "model.layers.0.self_attn.v_proj",
             "model.layers.0.mlp.experts.3.up_proj", "lm_head"]
    assert lora_targets(names) == ["q_proj", "v_proj"]
    assert lora_targets(["transformer.h.0.attn.c_attn"]) == []       # other naming: caller must stop
    # GLM-4.7-Flash splits the query and key/value projections in two (seen in smoke job 3721808)
    glm = [f"model.layers.0.self_attn.{n}" for n in ("q_a_proj", "q_b_proj", "kv_a_proj_with_mqa", "kv_b_proj", "o_proj")]
    assert lora_targets(glm + ["model.layers.0.mlp.gate_proj"]) == [
        "kv_a_proj_with_mqa", "kv_b_proj", "o_proj", "q_a_proj", "q_b_proj"]


def test_rename_tainted_moves_r15_to_a_register_neither_side_uses_same_on_both_sides():
    from eval.pairs.train_data import rename_tainted
    pair = {"pair_id": "inj2_x",
            "leak": ["movq\t-8(%r15), %r11", "movl\t%r15d, %r8d", "movq\t(%r11,%r9), %rax"],
            "safe": ["movq\t-8(%r15), %r11", "lfence", "movb\t%r15b, %r10b", "movq\t(%r11,%r9), %rax"]}
    out = rename_tainted(pair)
    text = "\n".join(out["leak"] + out["safe"])
    assert "r15" not in text
    new = out["tainted_register"]
    assert new in ("r12", "r13", "r14")                      # r8..r11 are used by one side or the other
    assert out["leak"] == [f"movq\t-8(%{new}), %r11", f"movl\t%{new}d, %r8d", "movq\t(%r11,%r9), %rax"]
    assert out["safe"][2] == f"movb\t%{new}b, %r10b"         # the same register on the safe side
    assert pair["leak"][0] == "movq\t-8(%r15), %r11"         # input untouched
    assert rename_tainted(pair) == out                       # fixed per pair, not per call
    picks = {rename_tainted({**pair, "pair_id": f"p{i}"})["tainted_register"] for i in range(40)}
    assert picks == {"r12", "r13", "r14"}                    # the choice varies across pairs
    # nothing free: the pair is returned as None so the caller can count and drop it
    full = {"pair_id": "f", "leak": [f"movq\t%r15, %r{i}" for i in range(8, 15)], "safe": ["nop"]}
    assert rename_tainted(full) is None


def test_train_llm_prompt_shots_and_losses():
    from eval.pairs import train_llm as t
    seq = ["movq\t(%rdi), %rax", "lfence"]
    p = t.direct_prompt(seq)
    assert "movq\t(%rdi), %rax\nlfence" in p and p.rstrip().endswith("YES or NO.")
    assert "Example" not in p
    train = [{"pair_id": f"p{i}", "leak": [f"leak{i}"], "safe": [f"safe{i}"]} for i in range(20)]
    shots = t.pick_shots(train, 4, seed=1)
    assert len(shots) == 8 and sorted(w for _, w in shots) == ["NO"] * 4 + ["YES"] * 4
    assert len({s[0][4:] for s, _ in shots}) == 4               # both sides of each of 4 pairs
    assert t.pick_shots(train, 4, seed=1) == shots and t.pick_shots(train, 4, seed=2) != shots
    q = t.direct_prompt(seq, shots)
    assert q.count("Example") == 8 and q.index("Example 8") < q.index("movq\t(%rdi), %rax")
    assert q.rstrip().endswith("YES or NO.")
    # readout: probability of leaking from the two answer logits
    assert t.probability(2.0, 2.0) == 0.5 and t.probability(5.0, 1.0) > 0.98 > 0.02 > t.probability(1.0, 5.0)
    # pairwise: zero once the leaking side is ahead by the margin, linear below it
    assert t.pair_margin(3.0, 1.0, margin=1.0) == 0.0
    assert t.pair_margin(1.0, 1.0, margin=1.0) == 1.0 and t.pair_margin(0.0, 2.0, margin=1.0) == 3.0
    # each seed starts the examples in a different order; both sides of every pair are present
    ex = t.side_examples(train[:3], seed=0)
    assert sorted(ex) == sorted((p[s], y) for p in train[:3] for s, y in (("leak", 1), ("safe", 0)))
    assert t.side_examples(train, seed=0) != t.side_examples(train, seed=1)


def test_graph_model_training_records_from_pairs():
    from eval.pairs import train_gine_pairs as g
    pairs = [{"pair_id": "a", "host_cluster": "H1", "leak": ["l1"], "safe": ["s1"]},
             {"pair_id": "b", "host_cluster": "H1", "leak": ["l2"], "safe": ["s2"]},
             {"pair_id": "c", "host_cluster": "H2", "leak": ["l3"], "safe": ["s3"]}]
    lab = g.labelled_records(pairs)
    assert [(r["sequence"], r["label"]) for r in lab] == [
        (["l1"], "LEAK"), (["s1"], "SAFE"), (["l2"], "LEAK"), (["s2"], "SAFE"), (["l3"], "LEAK"), (["s3"], "SAFE")]
    # both sides of a pair, and every pair on one host, share a group: the trainer's validation
    # carve-out keeps a group on one side of the split
    assert [r["group"] for r in lab] == ["inj2::H1"] * 4 + ["inj2::H2"] * 2
    assert all(r["arch"] == "x86_64" for r in lab)
    # pair batches: whole pairs, leaking side first, every pair once per epoch, order set by the seed
    b = g.pair_batches(5, pairs_per_batch=2, seed=0)
    assert [len(x) for x in b] == [4, 4, 2]
    assert all(x[i] % 2 == 0 and x[i + 1] == x[i] + 1 for x in b for i in range(0, len(x), 2))
    assert sorted(i for x in b for i in x) == list(range(10))
    assert g.pair_batches(5, 2, seed=0) == b and g.pair_batches(5, 2, seed=1) != b


def test_graph_model_pair_hinge():
    torch = pytest.importorskip("torch")
    from eval.pairs.train_gine_pairs import pair_hinge
    # logits columns: [LEAK, SAFE]; rows: leak side, safe side, leak side, safe side
    logits = torch.tensor([[3.0, 0.0], [0.0, 1.0],      # gaps 3 and -1: ahead by 4, no loss
                           [0.5, 0.0], [0.5, 0.0]])     # gaps equal: loss = margin
    assert float(pair_hinge(logits, leak_id=0, safe_id=1, margin=1.0)) == pytest.approx(0.5)
    assert float(pair_hinge(logits[:2], 0, 1, margin=1.0)) == 0.0


def test_train_report_rows_seeds_and_bar():
    from eval.pairs import train_report as r
    pairs = [{"pair_id": f"p{i}", "base": f"b{i // 2}", "set": "counterfactual",
              "cls": "SPECTRE_V1" if i < 4 else "MDS", "leak": [], "safe": []} for i in range(8)]
    rows = r.rows_of(pairs)
    assert [(k, len(v)) for k, v in rows.items()] == [("counterfactual, all", 8), ("counterfactual, Spectre V1", 4)]

    def table(right, both):
        # `right` pairs ranked correctly; of those, `both` also on the correct sides of 0.5
        t = {}
        for i, p in enumerate(pairs):
            l, s = (0.9, 0.1) if i < both else (0.9, 0.8) if i < right else (0.2, 0.7)
            t[(p["pair_id"], "leak")], t[(p["pair_id"], "safe")] = l, s
        return t
    m = r.cell(pairs, [table(8, 4), table(6, 2)])              # two seeds
    assert m["rank"] == pytest.approx((1.0 + 0.75) / 2) and m["seeds"] == 2
    assert m["both"] == pytest.approx((0.5 + 0.25) / 2)
    assert m["spread"] == pytest.approx(0.125 * 2 ** 0.5)
    lo, hi = m["interval"]
    assert 0.5 <= lo <= m["rank"] <= hi <= 1.0                 # resampled over the 4 programs
    # a seed that does not score every pair of the row is an error, not a smaller row
    part = {k: v for k, v in table(8, 8).items() if k[0] != "p7"}
    with pytest.raises(ValueError):
        r.cell(pairs, [part])
    # the bar, as the spec fixes it: ranking above the rule, both-sides-right above the untrained model
    assert r.passes({"rank": 0.70, "both": 0.30}, rule=0.671, untrained={"both": 0.10})
    assert not r.passes({"rank": 0.66, "both": 0.30}, rule=0.671, untrained={"both": 0.10})
    assert not r.passes({"rank": 0.70, "both": 0.10}, rule=0.671, untrained={"both": 0.10})


# --- second hardware pool ----------------------------------------------------

from eval.pairs import pool2_report


def test_pool2_pairs_are_split_into_three_sets_and_never_cross_them():
    rows = [hw("entry", "SPECTRE_V1", ["lfence", "a", "b"]),
            hw("twin", "BENIGN", ["a", "lfence", "b"]),
            hw("cf_wrong_path", "SPECTRE_V1", ["a", "b", "lfence", "c"]),
            hw("cf_nonleak", "BENIGN", ["a", "c", "lfence", "b"]),
            hw("cf_nofence_non", "SPECTRE_V1", ["a", "b"]),
            hw("cf_nofence_ess", "BENIGN", ["a"])]
    ps = build.pool2_pairs(rows)
    assert sorted((p["set"], p["kind"]) for p in ps) == [
        ("counterfactual_pool2", "cf_wrong_path|cf_nonleak"),
        ("nofence_pool2", "cf_nofence_non|cf_nofence_ess"),
        ("variants_pool2", "entry|twin")]


def test_pool2_refuses_a_program_that_the_first_pool_already_has():
    first = build.hw_pairs([hw("entry", "SPECTRE_V1", ["lfence", "a"]), hw("twin", "BENIGN", ["a", "lfence"])],
                           "variants")
    rows = [hw("entry", "SPECTRE_V1", ["lfence", "a", "b"]), hw("twin", "BENIGN", ["a", "lfence", "b"])]
    with pytest.raises(ValueError, match="both pools"):
        build.pool2_pairs(rows, first)
    other = [hw(r["variant"], r["label"], r["sequence"], stamp="260811-075301") for r in rows]
    assert len(build.pool2_pairs(other, first)) == 1


def test_pool2_report_counts_programs_seen_in_training_and_scores_rules_only():
    rows = [hw("entry", "SPECTRE_V1", ["lfence", "a", "b"]), hw("twin", "BENIGN", ["a", "lfence", "b"]),
            hw("entry", "SPECTRE_V1", ["lfence", "c"], stamp="260811-000001"),
            hw("twin", "BENIGN", ["c", "lfence"], stamp="260811-000001")]
    ps = build.pool2_pairs(rows)
    train = [{"group": "revizor_x_violation-260925-134248_fenced", "sequence": ["z"]}, {"group": "other"}]
    assert pool2_report.seen_in_training(ps, train) == (1, 2)
    cells = pool2_report.rule_cells(ps)
    assert set(cells) == {"fewer fences", "no interior fence", "mechanism rule"}
    assert cells["fewer fences"]["auc"] == 0.5 and cells["fewer fences"]["n"] == 2
    assert cells["fewer fences"]["programs"] == 2 and len(cells["fewer fences"]["interval"]) == 2
