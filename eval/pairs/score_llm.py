#!/usr/bin/env python3
"""LLM baseline on the pair benchmark. Writes scores files for `eval/pairs/score.py --scores`.

Two protocols, each its own scores file:
  single   one sequence at a time: "probability that this leaks", 0..1
  choice   both sides of a pair, order randomised, both orders asked: which one leaks?
           A side's score is the share of orders in which it was picked.

Nothing is sent anywhere unless --run is given; without it the script prints how many calls
the run would make. Sequences leave the machine when it runs: the owner decides that.

    python3 -m eval.pairs.score_llm --protocol single --sample 100            # dry run: call count
    python3 -m eval.pairs.score_llm --protocol single --sample 100 --run --out eval/pairs/data/llm_single.jsonl
"""
from __future__ import annotations

import argparse
import hashlib
import json
import random
import re
import sys
import threading
from collections import defaultdict
from concurrent.futures import ThreadPoolExecutor
from pathlib import Path

ROOT = Path(__file__).resolve().parents[2]
DATA = ROOT / "eval" / "pairs" / "data"
MODEL = "claude-opus-5-5"
PUBLIC_SETS = ("linux", "linux_arm64")        # public kernel commits: a model may have seen them

SYSTEM = (
    "You are assessing short assembly sequences for transient-execution (Spectre-class) leaks. "
    "A sequence leaks if, when the processor mispredicts or otherwise executes transiently, it can "
    "read data it should not and make that data observable, for example through a "
    "data-dependent memory access. Judge only the sequence shown. The sequences come from a "
    "research benchmark of leaking and non-leaking programs used to evaluate detectors.")


def _listing(seq) -> str:
    return "\n".join(x.strip() for x in seq)


def prompt_single(seq) -> str:
    return (f"Assembly sequence:\n```\n{_listing(seq)}\n```\n\n"
            "How likely is it that this sequence leaks under transient execution? Reason briefly, "
            "then end with a final line of exactly the form `PROBABILITY: <number between 0 and 1>`.")


def prompt_choice(a, b) -> str:
    return (f"Two assembly sequences. Exactly one of them leaks under transient execution.\n\n"
            f"Sequence A:\n```\n{_listing(a)}\n```\n\nSequence B:\n```\n{_listing(b)}\n```\n\n"
            "Which one leaks? Reason briefly, then end with a final line of exactly the form "
            "`ANSWER: A` or `ANSWER: B`.")


_PROB = re.compile(r"PROBABILITY:\s*([01](?:\.\d+)?|\.\d+)\s*$", re.M)
_ANS = re.compile(r"ANSWER:\s*([AB])\s*$", re.M)


def parse_probability(text):
    m = _PROB.findall(text or "")
    if not m:
        return None
    v = float(m[-1])
    return v if 0.0 <= v <= 1.0 else None


def parse_choice(text):
    m = _ANS.findall(text or "")
    return m[-1] if m else None


def sample_pairs(pairs, n, seed=0):
    """Up to n pairs per group (set, plus kind for injected), seeded."""
    by = defaultdict(list)
    for p in pairs:
        by[(p["set"], p["kind"] if p["set"] == "injected" else "")].append(p)
    out = []
    for k in sorted(by):
        ps = sorted(by[k], key=lambda p: p["pair_id"])
        random.Random(seed).shuffle(ps)
        out += ps[:n] if n else ps
    return out


def plan(pairs, protocol, repeats) -> int:
    if protocol == "single":
        return len({tuple(p[s]) for p in pairs for s in ("leak", "safe")}) * repeats
    return len(pairs) * 2 * repeats


def run_single(pairs, complete, repeats=1) -> tuple[list[dict], dict]:
    """complete(system, prompt) -> text or None (None = refused / failed)."""
    cache, stats = {}, {"calls": 0, "unparsed": 0}
    for p in pairs:
        for s in ("leak", "safe"):
            k = tuple(p[s])
            if k in cache:
                continue
            vals = []
            for _ in range(repeats):
                stats["calls"] += 1
                v = parse_probability(complete(SYSTEM, prompt_single(p[s])))
                if v is None:
                    stats["unparsed"] += 1
                else:
                    vals.append(v)
            cache[k] = sum(vals) / len(vals) if vals else None
    rows = [{"pair_id": p["pair_id"], "side": s, "score": cache[tuple(p[s])]}
            for p in pairs for s in ("leak", "safe")]
    done = {r["pair_id"] for r in rows if r["score"] is None}       # a pair needs both sides
    return [r for r in rows if r["pair_id"] not in done], stats


def run_choice(pairs, complete, repeats=1) -> tuple[list[dict], dict]:
    rows, stats = [], {"calls": 0, "unparsed": 0}
    for p in pairs:
        picked = {"leak": 0, "safe": 0}
        n = 0
        for _ in range(repeats):
            for first, second in (("leak", "safe"), ("safe", "leak")):
                stats["calls"] += 1
                a = parse_choice(complete(SYSTEM, prompt_choice(p[first], p[second])))
                if a is None:
                    stats["unparsed"] += 1
                    continue
                picked[first if a == "A" else second] += 1
                n += 1
        if n:
            rows += [{"pair_id": p["pair_id"], "side": s, "score": picked[s] / n} for s in ("leak", "safe")]
    return rows, stats


class BudgetExceeded(RuntimeError):
    pass


# USD per million tokens (input, output). Source: platform.claude.com/docs/en/about-claude/pricing,
# read 2026-11-12. Thinking tokens are billed as output. A reply served by a fallback model is
# priced at OTHER, which is at least as high as any model the default chain can fall back to.
RATES = {"claude-opus-5-5": (4.0, 20.0), "claude-sonnet-5-5": (2.0, 10.0),
         "claude-haiku-5-5": (0.10, 0.50), "claude-opus-4-8": (5.0, 25.0)}
OTHER = (10.0, 50.0)


def cost_usd(model, tokens_in, tokens_out) -> float:
    i, o = next((v for k, v in RATES.items() if str(model).startswith(k)), OTHER)
    return (tokens_in * i + tokens_out * o) / 1e6


def job_key(model, effort, system, prompt, rep) -> str:
    return hashlib.sha1(json.dumps([model, effort, system, prompt, rep]).encode()).hexdigest()


class Ledger:
    """Every paid call, one JSON line. The cap counts everything in the file, across runs, so a
    rerun never pays twice for a call and the total never passes the cap by more than the calls
    already in flight (`reserve` dollars each)."""

    def __init__(self, path, cap_usd, reserve=0.15):
        self.path, self.cap, self.reserve = Path(path), cap_usd, reserve
        self.rows, self.inflight, self.lock = {}, 0, threading.Lock()
        if self.path.exists():
            for l in self.path.read_text().splitlines():
                if l.strip():
                    r = json.loads(l)
                    self.rows[r["key"]] = r

    @property
    def spent(self) -> float:
        return sum(r["cost"] for r in self.rows.values())

    def get(self, key):
        return self.rows.get(key)

    def start(self):
        with self.lock:
            if self.spent + (self.inflight + 1) * self.reserve > self.cap:
                raise BudgetExceeded(f"spent ${self.spent:.2f} of ${self.cap:.2f}")
            self.inflight += 1

    def finish(self, key, text, model, tokens_in, tokens_out):
        with self.lock:
            self.inflight -= 1
            if model is None:                       # transport failure: nothing billed, not cached
                return
            r = {"key": key, "text": text, "model": model, "in": tokens_in, "out": tokens_out,
                 "cost": cost_usd(model, tokens_in, tokens_out)}
            self.rows[key] = r
            self.path.parent.mkdir(parents=True, exist_ok=True)
            with self.path.open("a") as f:
                f.write(json.dumps(r) + "\n")


def jobs(pairs, protocol, repeats):
    """Every (prompt, repeat) the protocol will ask, without duplicates."""
    out, seen = [], set()
    for p in pairs:
        prompts = ([prompt_single(p[s]) for s in ("leak", "safe")] if protocol == "single" else
                   [prompt_choice(p["leak"], p["safe"]), prompt_choice(p["safe"], p["leak"])])
        for q in prompts:
            for r in range(repeats):
                if (q, r) not in seen:
                    seen.add((q, r))
                    out.append((q, r))
    return out


def prefetch(job_list, raw, ledger, model, effort, workers=6, seed=0) -> dict:
    """Pay for the calls not yet in the ledger, in parallel, in random order (so that a run cut
    short by the cap is a random sample). raw(system, prompt) -> (text|None, model|None, in, out)."""
    todo = [(q, r) for q, r in job_list if not ledger.get(job_key(model, effort, SYSTEM, q, r))]
    random.Random(seed).shuffle(todo)
    stats = {"paid": 0, "cached": len(job_list) - len(todo), "stopped_by_cap": False}

    def one(job):
        q, r = job
        ledger.start()
        try:
            text, served, ti, to = raw(SYSTEM, q)
        except Exception:
            ledger.finish(None, None, None, 0, 0)
            raise
        ledger.finish(job_key(model, effort, SYSTEM, q, r), text, served, ti, to)

    with ThreadPoolExecutor(workers) as ex:
        futs = []
        for j in todo:
            futs.append(ex.submit(one, j))
        for f in futs:
            try:
                f.result()
                stats["paid"] += 1
            except BudgetExceeded:
                stats["stopped_by_cap"] = True
    return stats


def from_ledger(ledger, model, effort):
    """A `complete` for run_single / run_choice that only reads what was paid for."""
    n = defaultdict(int)

    def complete(system, prompt):
        r = ledger.get(job_key(model, effort, system, prompt, n[prompt]))
        n[prompt] += 1
        return r["text"] if r else None
    return complete


def load_key(env_path=ROOT / ".env", name="CLAUDE-API-KEY") -> str:
    for l in Path(env_path).read_text().splitlines():
        k, _, v = l.partition("=")
        if k.strip() == name:
            return v.strip().strip('"').strip("'")
    raise SystemExit(f"{name} not found in {env_path}")


def anthropic_raw(model: str = MODEL, effort: str = "low"):
    """Claude via the official SDK. Thinking is always on for this model and sampling
    parameters are not accepted, so repeats (not temperature 0) measure run-to-run change.
    A policy refusal falls back server-side; a refusal of the whole chain gives text None."""
    import anthropic
    client = anthropic.Anthropic(api_key=load_key(), max_retries=4)

    def raw(system, prompt):
        try:
            r = client.beta.messages.create(
                model=model, max_tokens=4000, system=system,
                output_config={"effort": effort},
                betas=["server-side-fallback-2026-07-01"], fallbacks="default",
                messages=[{"role": "user", "content": prompt}])
        except anthropic.APIStatusError as e:
            if e.status_code >= 500 or e.status_code == 429:
                raise
            print(f"request rejected ({e.status_code}): {e.message}", file=sys.stderr)
            return None, model, 0, 0
        text = None if r.stop_reason in ("refusal", "max_tokens") else \
            "".join(b.text for b in r.content if b.type == "text")
        return text, r.model, r.usage.input_tokens, r.usage.output_tokens
    return raw


def main(argv=None) -> int:
    ap = argparse.ArgumentParser(description=__doc__.split("\n")[0])
    ap.add_argument("--protocol", choices=["single", "choice"], required=True)
    ap.add_argument("--sample", type=int, default=100, help="pairs per group; 0 = all")
    ap.add_argument("--repeats", type=int, default=1)
    ap.add_argument("--model", default=MODEL)
    ap.add_argument("--effort", default="low")
    ap.add_argument("--run", action="store_true", help="actually call the API (sends sequences out)")
    ap.add_argument("--cap-usd", type=float, default=20.0, help="total across every run in the ledger")
    ap.add_argument("--ledger", default=str(DATA / "llm_ledger.jsonl"))
    ap.add_argument("--workers", type=int, default=6)
    ap.add_argument("--out")
    a = ap.parse_args(argv)
    pairs = [json.loads(l) for f in sorted(DATA.glob("pairs_*.jsonl")) for l in open(f) if l.strip()]
    pairs = sample_pairs(pairs, a.sample)
    job_list = jobs(pairs, a.protocol, a.repeats)
    ledger = Ledger(a.ledger, a.cap_usd)
    pub = sum(p["set"] in PUBLIC_SETS for p in pairs)
    print(f"{len(pairs)} pairs ({pub} from public sources), protocol {a.protocol}, "
          f"{a.repeats} repeat(s): {len(job_list)} calls to {a.model}; "
          f"ledger ${ledger.spent:.2f} of ${a.cap_usd:.2f}")
    if not a.run:
        print("dry run; add --run to send")
        return 0
    if not a.out:
        ap.error("--run needs --out")
    st = prefetch(job_list, anthropic_raw(a.model, a.effort), ledger, a.model, a.effort, a.workers)
    fn = run_single if a.protocol == "single" else run_choice
    rows, stats = fn(pairs, from_ledger(ledger, a.model, a.effort), a.repeats)
    Path(a.out).write_text("".join(json.dumps(r) + "\n" for r in rows))
    print(f"{st} {stats} -> {len(rows) // 2} pairs scored -> {a.out}; ledger ${ledger.spent:.2f}")
    return 0


if __name__ == "__main__":
    sys.exit(main())
