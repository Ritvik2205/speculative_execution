#!/usr/bin/env python3
"""Open-weight language model on the pair benchmark, run on our own GPU (no API, no cost).

Same system text, prompts, answer format and parser as `score_llm.py`, so the rows are comparable
with the closed-model rows. Differences that cannot be avoided, all recorded per answer:
  - the model samples (temperature / top-p / top-k from its model card), so each repeat has a seed;
  - the model writes its reasoning before `</think>`; only the text after it is read as the answer;
  - a prompt longer than `--max-prompt-tokens` is recorded as skipped, not sent.

One array task = one shard. A shard is resumable: answers already in its ledger are not redone.

    # dry run on the laptop: how many generations, no model loaded
    python3 -m eval.pairs.score_llm_local --protocol single --repeats 3
    # on a GPU node
    python3 -m eval.pairs.score_llm_local --protocol single --repeats 3 --shard 0 --of 8 \
        --model-dir ~/models/GLM-Z1-9B-0414 --ledger $OUT/single_0of8.jsonl --run
    # laptop, after the shard ledgers are copied back: scores files for score.py / llm_report.py
    python3 -m eval.pairs.score_llm_local --protocol single --repeats 3 \
        --collect 'eval/cluster_out/llm_glmz1_9b/single_*.jsonl' --out eval/pairs/data/llm_single_glmz1_9b.jsonl
"""
from __future__ import annotations

import argparse
import glob
import hashlib
import json
import sys
import time
from pathlib import Path

from eval.pairs import score_llm

ROOT = Path(__file__).resolve().parents[2]
DATA = ROOT / "eval" / "pairs" / "data"
MANIFEST = DATA / "glm_z1_9b_manifest.json"
# Sampling settings from the model card (huggingface.co/zai-org/GLM-Z1-9B-0414, read 2026-11-13).
SAMPLING = {"do_sample": True, "temperature": 0.6, "top_p": 0.95, "top_k": 40}
EFFORT = "card-sampling"                      # goes into the job key in place of the API's effort
# A different backend samples differently, so its answers get their own keys and never mix
# with the transformers answers in one ledger.
EFFORTS = {"hf": EFFORT, "vllm": "card-sampling-vllm"}
FIRST_CAP = 4096          # the cap of the first runs; the card's settings table asks for 30,000


def effort_for(backend, max_new_tokens):
    """Job-key effort. Runs at another answer cap get their own keys, so answers cut off at one cap
    are never read as answers of a run at another."""
    e = EFFORTS[backend]
    return e if max_new_tokens == FIRST_CAP else f"{e}-max{max_new_tokens}"


def answer_cap(max_new_tokens, max_model_len, prompt_len):
    """Per prompt: the asked cap, or what the context leaves after the prompt if that is less."""
    return min(max_new_tokens, max_model_len - prompt_len)
THINK_END = "</think>"


def visible(raw):
    """The answer: what follows the last `</think>`. No closing tag = the model never answered."""
    if raw is None or THINK_END not in raw:
        return None
    return raw.rsplit(THINK_END, 1)[1].strip()


def shard_of(job_list, i, n, model, effort):
    """Jobs of shard i of n. Assignment is by the job's key, so it does not depend on order."""
    return [(q, r) for q, r in job_list
            if int(score_llm.job_key(model, effort, score_llm.SYSTEM, q, r), 16) % n == i]


def batches(items, max_batch, token_budget):
    """items: (key, prompt, prompt_tokens). Longest first; a batch pads to its longest prompt, so
    its cost is size x longest and that product stays within the budget."""
    out, cur = [], []
    for it in sorted(items, key=lambda x: (-x[2], x[0])):
        longest = cur[0][2] if cur else it[2]
        if cur and (len(cur) >= max_batch or (len(cur) + 1) * longest > token_budget):
            out.append(cur)
            cur = []
        cur.append(it)
    if cur:
        out.append(cur)
    return out


def _seed(key):
    return int(key[:8], 16)


def run(job_list, generate, count_tokens, ledger_path, model, effort, max_prompt_tokens,
        max_batch=16, token_budget=24_000, on_batch=None):
    """generate(list of (system, prompt), seed) -> list of (raw text, tokens in, tokens out, finished).
    Appends one row per job to the ledger; a job already there is skipped."""
    ledger_path = Path(ledger_path)
    done = set()
    if ledger_path.exists():
        done = {json.loads(l)["key"] for l in ledger_path.read_text().splitlines() if l.strip()}
    stats = {"jobs": len(job_list), "cached": 0, "generated": 0, "too_long": 0, "no_answer": 0}
    todo, rows = [], []
    for q, r in job_list:
        k = score_llm.job_key(model, effort, score_llm.SYSTEM, q, r)
        if k in done:
            stats["cached"] += 1
            continue
        n = count_tokens(score_llm.SYSTEM, q)
        if n > max_prompt_tokens:
            stats["too_long"] += 1
            rows.append({"key": k, "text": None, "raw": None, "model": model, "in": n, "out": 0,
                         "cost": 0.0, "skipped": "too_long"})
        else:
            todo.append((k, q, n))
    ledger_path.parent.mkdir(parents=True, exist_ok=True)

    def flush(rs):
        with ledger_path.open("a") as f:
            for row in rs:
                f.write(json.dumps(row) + "\n")

    flush(rows)
    per_row = getattr(generate, "per_row_seeds", False)
    for b in batches(todo, max_batch, token_budget):
        seeds = [_seed(k) for k, _, _ in b] if per_row else [_seed(b[0][0])] * len(b)
        t0 = time.time()
        outs = generate([(score_llm.SYSTEM, q) for _, q, _ in b], seeds if per_row else seeds[0])
        rs = []
        for (k, _, _), seed, out in zip(b, seeds, outs):
            raw, ti, to, finished = out[:4]
            text = visible(raw) if finished else None
            stats["generated"] += 1
            stats["no_answer"] += text is None
            rs.append({"key": k, "text": text, "raw": raw, "model": model, "in": ti, "out": to,
                       "cost": 0.0, "seed": seed, "batch": b[0][0][:12], "finished": bool(finished),
                       **(out[4] if len(out) > 4 else {})})
        flush(rs)
        if on_batch:
            on_batch(len(b), sum(r["out"] for r in rs), time.time() - t0)
    return stats


def verify_weights(model_dir, manifest=MANIFEST):
    """sha256 and size of every large file against the publisher's listing. Returns the mismatches."""
    m = json.loads(Path(manifest).read_text())
    bad = []
    for name, want in m["files"].items():
        if not want.get("sha256"):
            continue
        p = Path(model_dir) / name
        if not p.exists():
            bad.append((name, "missing"))
            continue
        h = hashlib.sha256()
        with p.open("rb") as f:
            for chunk in iter(lambda: f.read(1 << 24), b""):
                h.update(chunk)
        if p.stat().st_size != want["size"] or h.hexdigest() != want["sha256"]:
            bad.append((name, f"size {p.stat().st_size} sha256 {h.hexdigest()}"))
    return bad


def hf_model(model_dir, max_new_tokens):
    """Returns (generate, count_tokens, info). Stops the job if the chat template, tokenised as
    text, does not give the same ids as the tokenizer's own templated encoding."""
    import torch
    import transformers
    from transformers import AutoModelForCausalLM, AutoTokenizer

    tok = AutoTokenizer.from_pretrained(model_dir)
    tok.padding_side = "left"
    model = AutoModelForCausalLM.from_pretrained(model_dir, torch_dtype=torch.bfloat16, device_map={"": 0})
    model.eval()
    eos = model.generation_config.eos_token_id
    eos = set(eos if isinstance(eos, (list, tuple)) else [eos])
    pad = tok.pad_token_id if tok.pad_token_id is not None else model.generation_config.pad_token_id

    def render(system, prompt):
        return tok.apply_chat_template([{"role": "system", "content": system},
                                        {"role": "user", "content": prompt}],
                                       tokenize=False, add_generation_prompt=True)

    probe = render(score_llm.SYSTEM, "probe")
    direct = tok.apply_chat_template([{"role": "system", "content": score_llm.SYSTEM},
                                      {"role": "user", "content": "probe"}],
                                     tokenize=True, add_generation_prompt=True)
    direct = direct["input_ids"] if isinstance(direct, dict) or hasattr(direct, "input_ids") else direct
    as_text = tok(probe, add_special_tokens=False)["input_ids"]
    if list(direct) != list(as_text):
        raise SystemExit(f"chat template tokenises differently as text: {len(direct)} ids against {len(as_text)}")
    info = {"transformers": transformers.__version__, "torch": torch.__version__,
            "model_class": type(model).__name__, "dtype": str(model.dtype),
            "parameters": sum(p.numel() for p in model.parameters()),
            "gpu": torch.cuda.get_device_name(0), "eos": sorted(eos), "pad": pad,
            "sampling": SAMPLING, "max_new_tokens": max_new_tokens,
            "rendered_probe": probe, "think_end_ids": tok(THINK_END, add_special_tokens=False)["input_ids"]}

    def count_tokens(system, prompt):
        return len(tok(render(system, prompt), add_special_tokens=False)["input_ids"])

    info["attention"] = str(getattr(model.config, "_attn_implementation", "not recorded"))
    info["layers"] = model.config.num_hidden_layers

    @torch.no_grad()
    def generate(batch, seed, **override):
        enc = tok([render(s, q) for s, q in batch], return_tensors="pt", padding=True,
                  add_special_tokens=False).to(model.device)
        torch.manual_seed(seed)
        torch.cuda.manual_seed_all(seed)
        kw = {"max_new_tokens": max_new_tokens, "pad_token_id": pad, **SAMPLING, **override}
        out = model.generate(**enc, **kw)
        res = []
        for i in range(len(batch)):
            ids = out[i][enc["input_ids"].shape[1]:].tolist()
            stop = next((j for j, t in enumerate(ids) if t in eos), None)
            finished = stop is not None
            ids = ids[:stop] if finished else ids
            # special tokens are kept in the text: `</think>` must survive decoding
            res.append((tok.decode(ids, skip_special_tokens=False), int(enc["attention_mask"][i].sum()),
                        len(ids), finished))
        return res

    return generate, count_tokens, info


def vllm_model(model_dir, max_new_tokens, max_model_len, gpu_memory_utilization=0.90):
    """Same prompts as hf_model, token for token: the chat template is rendered and tokenised by
    the transformers tokenizer and the ids are handed to vLLM, so vLLM's own templating and
    special-token handling play no part. Continuous batching: an answer that finishes frees its
    slot for the next prompt at once. One seed per prompt."""
    import torch
    import transformers
    from transformers import AutoTokenizer
    import vllm
    from vllm import LLM, SamplingParams
    from vllm.inputs import TokensPrompt

    tok = AutoTokenizer.from_pretrained(model_dir)
    gen_cfg = json.loads((Path(model_dir) / "generation_config.json").read_text())
    eos = gen_cfg["eos_token_id"]
    eos = sorted(set(eos if isinstance(eos, list) else [eos]))

    def render(system, prompt):
        return tok.apply_chat_template([{"role": "system", "content": system},
                                        {"role": "user", "content": prompt}],
                                       tokenize=False, add_generation_prompt=True)

    def ids_of(system, prompt):
        return tok(render(system, prompt), add_special_tokens=False)["input_ids"]

    llm = LLM(model=str(model_dir), dtype="bfloat16", seed=0, max_model_len=max_model_len,
              gpu_memory_utilization=gpu_memory_utilization, generation_config="vllm")
    info = {"backend": "vllm", "vllm": vllm.__version__, "transformers": transformers.__version__,
            "torch": torch.__version__, "torch_cuda": torch.version.cuda,
            "gpu": torch.cuda.get_device_name(0), "eos": eos, "sampling": SAMPLING,
            "max_new_tokens": max_new_tokens, "max_model_len": max_model_len,
            "rendered_probe": render(score_llm.SYSTEM, "probe")}

    def count_tokens(system, prompt):
        return len(ids_of(system, prompt))

    def generate(batch, seeds):
        prompts = [TokensPrompt(prompt_token_ids=ids_of(s, q)) for s, q in batch]
        caps = [answer_cap(max_new_tokens, max_model_len, len(p["prompt_token_ids"])) for p in prompts]
        params = [SamplingParams(temperature=SAMPLING["temperature"], top_p=SAMPLING["top_p"],
                                 top_k=SAMPLING["top_k"], max_tokens=cap, seed=sd,
                                 stop_token_ids=eos, skip_special_tokens=False)
                  for sd, cap in zip(seeds, caps)]
        res = []
        for p, cap, r in zip(prompts, caps, llm.generate(prompts, params, use_tqdm=False)):
            if list(r.prompt_token_ids) != p["prompt_token_ids"]:
                raise SystemExit("vLLM changed the prompt ids")
            o = r.outputs[0]
            res.append((o.text, len(p["prompt_token_ids"]), len(o.token_ids), o.finish_reason == "stop",
                        {"finish_reason": o.finish_reason, "stop_reason": o.stop_reason, "max_tokens": cap}))
        return res
    generate.per_row_seeds = True
    return generate, count_tokens, info


def bench(job_list, generate, count_tokens, sizes, max_prompt_tokens, steps=200):
    """Steps per second and peak GPU memory at each batch size, every row forced to `steps` new
    tokens. Uses the longest prompts the run would actually send (at most max_prompt_tokens), so
    the memory figure is the worst case of the real run."""
    import torch
    items = sorted(((n, q) for q, _ in job_list
                    for n in [count_tokens(score_llm.SYSTEM, q)] if n <= max_prompt_tokens), reverse=True)
    for bs in sizes:
        batch = [(score_llm.SYSTEM, q) for _, q in items[:bs]]
        if len(batch) < bs:
            print(f"batch {bs}: only {len(batch)} prompts in this shard, skipped")
            continue
        torch.cuda.reset_peak_memory_stats()
        t0 = time.time()
        try:
            generate(batch, 0, max_new_tokens=steps, min_new_tokens=steps)
        except torch.cuda.OutOfMemoryError:
            print(f"batch {bs}: out of GPU memory", flush=True)
            torch.cuda.empty_cache()
            continue
        dt = time.time() - t0
        print(f"batch {bs}: longest prompt {items[0][0]} tokens, {steps} steps in {dt:.1f}s = "
              f"{steps / dt:.1f} steps/s, {bs * steps / dt:.0f} tokens/s, "
              f"peak GPU memory {torch.cuda.max_memory_allocated() / 2 ** 30:.1f} GiB", flush=True)
    return 0


def load_pairs(sample, exclude_public=False):
    pairs = [json.loads(l) for f in sorted(DATA.glob("pairs_*.jsonl")) for l in open(f) if l.strip()]
    if exclude_public:
        pairs = [p for p in pairs if p["set"] not in score_llm.PUBLIC_SETS]
    return score_llm.sample_pairs(pairs, sample)


def main(argv=None) -> int:
    ap = argparse.ArgumentParser(description=__doc__.split("\n")[0])
    ap.add_argument("--protocol", choices=["single", "choice"], required=True)
    ap.add_argument("--sample", type=int, default=0, help="pairs per group; 0 = all (default)")
    ap.add_argument("--repeats", type=int, default=3)
    ap.add_argument("--exclude-public", action="store_true",
                    help="leave out the Linux sets (public kernel commits)")
    ap.add_argument("--shard", type=int, default=0)
    ap.add_argument("--of", type=int, default=1)
    ap.add_argument("--limit", type=int, default=0, help="smoke test: at most this many jobs of the shard")
    ap.add_argument("--model-dir")
    ap.add_argument("--model-name", help="name written to the ledger; default: repo@revision from the manifest")
    ap.add_argument("--max-new-tokens", type=int, default=4096)
    ap.add_argument("--max-prompt-tokens", type=int, default=7000,
                    help="the model card asks for a changed position setting above 8,192 input tokens")
    ap.add_argument("--max-batch", type=int, default=16)
    ap.add_argument("--token-budget", type=int, default=24_000)
    ap.add_argument("--backend", choices=["hf", "vllm"], default="hf")
    ap.add_argument("--max-model-len", type=int, default=12288, help="vllm: prompt plus answer")
    ap.add_argument("--verify-weights", action="store_true")
    ap.add_argument("--bench", type=int, nargs="+", metavar="BATCH",
                    help="time fixed-length generation at these batch sizes and stop; nothing is saved")
    ap.add_argument("--ledger")
    ap.add_argument("--run", action="store_true", help="load the model and generate")
    ap.add_argument("--collect", help="glob of shard ledgers: write a scores file instead of generating")
    ap.add_argument("--out")
    a = ap.parse_args(argv)
    man = json.loads(MANIFEST.read_text())
    name = a.model_name or f"{man['repo']}@{man['revision'][:12]}"
    pairs = load_pairs(a.sample, a.exclude_public)
    job_list = score_llm.jobs(pairs, a.protocol, a.repeats)
    effort = effort_for(a.backend, a.max_new_tokens)

    if a.collect:
        if not a.out:
            ap.error("--collect needs --out")
        merged = Path(a.out).with_suffix(".ledger.jsonl")
        files = sorted(glob.glob(a.collect))
        merged.write_text("".join(Path(f).read_text() for f in files))
        ledger = score_llm.Ledger(merged, 0)
        fn = score_llm.run_single if a.protocol == "single" else score_llm.run_choice
        rows, stats = fn(pairs, score_llm.from_ledger(ledger, name, effort), a.repeats)
        Path(a.out).write_text("".join(json.dumps(r) + "\n" for r in rows))
        keys = {score_llm.job_key(name, effort, score_llm.SYSTEM, q, r) for q, r in job_list}
        have = keys & set(ledger.rows)
        skipped = sum(1 for k in have if ledger.rows[k].get("skipped"))
        print(f"{len(files)} ledger file(s); {len(have)} of {len(keys)} jobs present, {skipped} skipped as "
              f"too long; {stats}; {len(rows) // 2} of {len(pairs)} pairs scored -> {a.out}")
        return 0

    mine = shard_of(job_list, a.shard, a.of, name, effort)
    if a.limit:
        mine = sorted(mine)[:a.limit]
    print(f"{len(pairs)} pairs, protocol {a.protocol}, {a.repeats} repeat(s): {len(job_list)} generations; "
          f"shard {a.shard} of {a.of}: {len(mine)}; model {name}; backend {a.backend}")
    if not a.run:
        print("dry run; add --run (on a GPU node) to generate")
        return 0
    if not (a.model_dir and a.ledger):
        ap.error("--run needs --model-dir and --ledger")
    if a.verify_weights:
        bad = verify_weights(a.model_dir)
        if bad:
            raise SystemExit(f"weights do not match the publisher's listing: {bad}")
        print("weights match the publisher's sizes and sha256")
    if a.backend == "vllm":
        if a.bench:
            ap.error("--bench is for the transformers backend")
        generate, count_tokens, info = vllm_model(a.model_dir, a.max_new_tokens, a.max_model_len)
        max_batch, budget = max(a.max_batch, 256), 10 ** 12   # vLLM schedules memory itself
    else:
        generate, count_tokens, info = hf_model(a.model_dir, a.max_new_tokens)
        max_batch, budget = a.max_batch, a.token_budget
    print("model info: " + json.dumps(info, ensure_ascii=False))
    if "parameters" in info and info["parameters"] != man["parameters"]:
        raise SystemExit(f"loaded {info['parameters']} parameters, publisher lists {man['parameters']}")
    if a.bench:
        return bench(mine, generate, count_tokens, a.bench, a.max_prompt_tokens)
    t0, tot = time.time(), [0, 0]

    def on_batch(n, toks, secs):
        tot[0] += n
        tot[1] += toks
        print(f"batch of {n}: {toks} tokens in {secs:.0f}s; total {tot[0]} answers, "
              f"{tot[1] / max(time.time() - t0, 1):.0f} tokens/s", flush=True)

    stats = run(mine, generate, count_tokens, a.ledger, name, effort, a.max_prompt_tokens,
                max_batch, budget, on_batch)
    print(f"done {stats} in {time.time() - t0:.0f}s -> {a.ledger}")
    return 0


if __name__ == "__main__":
    sys.exit(main())
