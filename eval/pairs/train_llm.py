#!/usr/bin/env python3
"""Ticket 06, language-model arms: does training on pairs lift held-out pairs?

Arms (spec section 4): `zero` no examples, no training; `fewshot` train pairs shown in the prompt;
`lora` supervised LoRA on leak/safe labels; `pairwise` LoRA with a margin on the leaking-minus-safe
score within a pair. Training data: version-2 injected pairs, tainted pointer renamed
(`train_data`). No hardware pair is used for training or selection.

Readout, the same in every arm: the model is asked for one word with reasoning switched off, and
the score is sigmoid(logit of YES - logit of NO) at the answer position, computed in 32-bit from
the last hidden state (the model's own 16-bit logits tie: gaps came out as multiples of 0.5). It is not the sampled
reasoning protocol of `LLM_OPEN.md`; the `zero` arm is the untrained row under this readout.

    python3 -m eval.pairs.train_llm --arm lora --seeds 0 --model-dir ... --out-dir ...

Writes `<out-dir>/<arm>_seed<k>.jsonl`, rows {pair_id, side, score, part}; `score.py` reads them.
Run only inside a cluster job.
"""
from __future__ import annotations

import argparse
import json
import math
import random
import sys
import time
from pathlib import Path

from eval.pairs import score_llm, score_llm_local as local, train_data
from eval.pairs.lora_smoke import lora_targets

SYSTEM = score_llm.SYSTEM
WORDS = ("NO", "YES")               # index = label; each must be one token (checked before loading)
QUESTION = "Does this sequence leak under transient execution? Answer with one word, YES or NO."


def direct_prompt(seq, shots=()) -> str:
    """User text for the one-word readout. `shots` = [(sequence, "YES" | "NO")] shown first."""
    block = lambda s: f"```\n{score_llm._listing(s)}\n```"
    head = "".join(f"Example {i}:\n{block(s)}\nLeaks: {w}\n\n" for i, (s, w) in enumerate(shots, 1))
    return f"{head}Assembly sequence:\n{block(seq)}\n\n{QUESTION}"


def pick_shots(train, k, seed):
    """Both sides of `k` training pairs, shuffled; fixed by `seed`."""
    rng = random.Random(seed)
    shots = [(p[side], word) for p in rng.sample(train, k) for side, word in (("leak", WORDS[1]), ("safe", WORDS[0]))]
    rng.shuffle(shots)
    return shots


def probability(logit_leak, logit_safe) -> float:
    return 1.0 / (1.0 + math.exp(logit_safe - logit_leak))


def pair_margin(d_leak, d_safe, margin=1.0):
    """Hinge on the within-pair gap; d = logit of LEAK minus logit of SAFE for one side."""
    gap = d_leak - d_safe
    return max(0.0, margin - gap) if isinstance(gap, float) else (margin - gap).clamp(min=0)


def side_examples(pairs, seed):
    """[(sequence, label)] for both sides of every pair, order fixed by `seed`."""
    ex = [(p[side], y) for p in pairs for side, y in (("leak", 1), ("safe", 0))]
    random.Random(seed).shuffle(ex)
    return ex


def eval_sets(limit=0):
    """{part: pairs}: version-2 val and test (renamed) and every non-public released pair."""
    sets = {f"v2_{part}": train_data.load(part)[0] for part in ("val", "test")}
    sets["released"] = local.load_pairs(0, exclude_public=True)
    return {k: (v[:limit] if limit else v) for k, v in sets.items()}


def main(argv=None) -> int:
    ap = argparse.ArgumentParser(description=__doc__.split("\n")[0])
    ap.add_argument("--arm", choices=["zero", "fewshot", "lora", "pairwise"], required=True)
    ap.add_argument("--seeds", default="0")
    ap.add_argument("--model-dir", required=True)
    ap.add_argument("--out-dir", required=True)
    ap.add_argument("--shots", type=int, default=4, help="fewshot: training pairs in the prompt")
    ap.add_argument("--train-limit", type=int, default=0, help="training pairs per seed; 0 = all")
    ap.add_argument("--eval-limit", type=int, default=0, help="pairs per evaluation set; 0 = all")
    ap.add_argument("--epochs", type=float, default=1.0)
    ap.add_argument("--accumulate", type=int, default=8)
    ap.add_argument("--lr", type=float, default=1e-4)
    ap.add_argument("--rank", type=int, default=8)
    ap.add_argument("--margin", type=float, default=1.0)
    ap.add_argument("--eval-batch", type=int, default=8)
    ap.add_argument("--zero-first", action="store_true",
                    help="lora/pairwise: score the untrained model first (the adapter starts as a no-op)")
    a = ap.parse_args(argv)

    import torch
    from transformers import AutoModelForCausalLM, AutoTokenizer

    gib = lambda: torch.cuda.max_memory_allocated() / 2 ** 30
    out_dir = Path(a.out_dir)
    out_dir.mkdir(parents=True, exist_ok=True)
    tok = AutoTokenizer.from_pretrained(a.model_dir)
    tok.padding_side = "left"                       # the answer position is the last one
    if tok.pad_token_id is None:
        tok.pad_token = tok.eos_token
    ids = [tok(w, add_special_tokens=False)["input_ids"] for w in WORDS]
    if any(len(x) != 1 for x in ids) or ids[0] == ids[1]:
        print(f"answer words are not two distinct single tokens: {dict(zip(WORDS, ids))}")
        return 2
    safe_id, leak_id = ids[0][0], ids[1][0]
    t0 = time.time()
    model = AutoModelForCausalLM.from_pretrained(a.model_dir, device_map={"": 0}, dtype=torch.bfloat16)
    print(f"loaded in {time.time() - t0:.0f}s; peak {gib():.1f} GiB", flush=True)
    dev = model.device
    print(f"answer tokens: {WORDS[0]} {safe_id}, {WORDS[1]} {leak_id}", flush=True)
    head, seen = model.get_output_embeddings(), {}
    head.register_forward_pre_hook(lambda m, inp: seen.__setitem__("h", inp[0]))

    def text(seq, shots=()):
        msgs = [{"role": "system", "content": SYSTEM}, {"role": "user", "content": direct_prompt(seq, shots)}]
        return tok.apply_chat_template(msgs, tokenize=False, add_generation_prompt=True, enable_thinking=False)

    def gaps(seqs, shots=()):
        """logit(YES) - logit(NO) at the answer position, one per sequence (keeps the graph).
        Taken from the input of the output layer in 32-bit, not from the 16-bit logits."""
        enc = tok([text(s, shots) for s in seqs], return_tensors="pt", padding=True, add_special_tokens=False).to(dev)
        model(**enc)
        h = seen.pop("h")[:, -1, :].float()
        w = (head.weight[leak_id].float() - head.weight[safe_id].float()).detach()
        b = 0.0 if head.bias is None else float(head.bias[leak_id] - head.bias[safe_id])
        return h @ w + b, enc["input_ids"].shape[1]

    sets = eval_sets(a.eval_limit)
    train, dropped = train_data.load("train")
    print(f"train pairs {len(train)} ({dropped} dropped: no free register); "
          + ", ".join(f"{k} {len(v)}" for k, v in sets.items()), flush=True)
    print("prompt ends: " + repr(text(train[0]["leak"])[-160:]), flush=True)
    with torch.no_grad():                           # fail here, not after an hour, if the readout is broken
        d, n_tok = gaps([train[0]["leak"], train[0]["safe"] + ["nop"] * 5])
    print(f"readout check: gaps {[round(float(x), 3) for x in d]} on a padded batch of {n_tok} tokens", flush=True)

    def evaluate(path, shots=()):
        model.eval()
        t0, n, rows = time.time(), 0, []
        for part, pairs in sets.items():
            items = sorted(((p["pair_id"], s, p[s]) for p in pairs for s in ("leak", "safe")), key=lambda x: len(x[2]))
            for i in range(0, len(items), a.eval_batch):
                chunk = items[i:i + a.eval_batch]
                with torch.no_grad():
                    d, _ = gaps([c[2] for c in chunk], shots)
                rows += [{"pair_id": pid, "side": s, "score": 1 / (1 + math.exp(-float(x))), "part": part}
                         for (pid, s, _), x in zip(chunk, d)]
                n += len(chunk)
            got = {(r["pair_id"], r["side"]): r["score"] for r in rows if r["part"] == part}
            w = [1.0 if got[(p["pair_id"], "leak")] > got[(p["pair_id"], "safe")] else
                 0.5 if got[(p["pair_id"], "leak")] == got[(p["pair_id"], "safe")] else 0.0 for p in pairs]
            both = sum(got[(p["pair_id"], "leak")] > 0.5 >= got[(p["pair_id"], "safe")] for p in pairs)
            print(f"  {part}: {len(pairs)} pairs, leaking side higher {sum(w) / len(w):.3f}, "
                  f"both sides right at 0.5 {both}/{len(pairs)}", flush=True)
        path.write_text("".join(json.dumps(r) + "\n" for r in rows))
        print(f"  scored {n} sequences in {time.time() - t0:.0f}s ({(time.time() - t0) / max(n, 1):.2f} s each); "
              f"peak {gib():.1f} GiB -> {path}", flush=True)

    seeds = [int(s) for s in a.seeds.split(",")]
    if a.arm == "zero":
        evaluate(out_dir / "zero_seed0.jsonl")
        return 0
    if a.arm == "fewshot":
        for seed in seeds:
            print(f"seed {seed}: {a.shots} training pairs in the prompt", flush=True)
            evaluate(out_dir / f"fewshot_seed{seed}.jsonl", pick_shots(train, a.shots, seed))
        return 0

    from peft import LoraConfig, get_peft_model
    targets = lora_targets([n for n, m in model.named_modules() if isinstance(m, torch.nn.Linear)])
    model.gradient_checkpointing_enable()
    model.enable_input_require_grads()
    model.config.use_cache = False
    model = get_peft_model(model, LoraConfig(r=a.rank, lora_alpha=2 * a.rank, lora_dropout=0.0,
                                             target_modules=targets, task_type="CAUSAL_LM"))
    params = [p for p in model.parameters() if p.requires_grad]
    print(f"LoRA on {targets}: {sum(p.numel() for p in params)} trainable parameters", flush=True)

    if a.zero_first:
        print("untrained model, same readout:", flush=True)
        evaluate(out_dir / "zero_seed0.jsonl")
    for seed in seeds:
        torch.manual_seed(seed)
        for name, p in model.named_parameters():        # a fresh adapter per seed, base weights untouched
            if "lora_A" in name:
                torch.nn.init.kaiming_uniform_(p, a=math.sqrt(5))
            elif "lora_B" in name:
                torch.nn.init.zeros_(p)
        pairs = random.Random(seed).sample(train, a.train_limit) if a.train_limit else list(train)
        opt = torch.optim.AdamW(params, lr=a.lr)
        model.train()
        torch.cuda.reset_peak_memory_stats()
        t0, losses, longest = time.time(), [], 0
        if a.arm == "lora":
            work = side_examples(pairs, seed)
        else:
            work = list(pairs)
            random.Random(seed).shuffle(work)
        steps = int(len(work) * a.epochs)
        for i in range(steps):
            item = work[i % len(work)]
            if a.arm == "lora":
                seq, y = item
                d, n_tok = gaps([seq])
                loss = torch.nn.functional.binary_cross_entropy_with_logits(d, torch.tensor([float(y)], device=dev))
                (loss / a.accumulate).backward()
            else:
                # One side at a time keeps memory at the single-sequence level. The hinge is linear
                # where it is active, so its gradient is -grad(d_leak) + grad(d_safe).
                with torch.no_grad():
                    d0, n_tok = gaps([item["leak"], item["safe"]])
                loss = pair_margin(d0[0], d0[1], a.margin)
                if float(loss) > 0:
                    (-gaps([item["leak"]])[0].sum() / a.accumulate).backward()
                    (gaps([item["safe"]])[0].sum() / a.accumulate).backward()
            losses.append(float(loss.detach()) if hasattr(loss, "detach") else float(loss))
            longest = max(longest, n_tok)
            if (i + 1) % a.accumulate == 0 or i + 1 == steps:
                opt.step()
                opt.zero_grad()
            if (i + 1) % 50 == 0 or i + 1 == steps:
                recent = losses[-50:]
                print(f"seed {seed} item {i + 1}/{steps}: mean loss {sum(recent) / len(recent):.4f}; "
                      f"{(time.time() - t0) / (i + 1):.2f} s per item; longest prompt {longest} tokens; "
                      f"peak {gib():.1f} GiB", flush=True)
        evaluate(out_dir / f"{a.arm}_seed{seed}.jsonl")
    return 0


if __name__ == "__main__":
    sys.exit(main())
