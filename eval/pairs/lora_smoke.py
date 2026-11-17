#!/usr/bin/env python3
"""Ticket 03: does a model load, generate, and complete one LoRA optimiser step on this GPU?

    python3 -m eval.pairs.lora_smoke --model-dir ~/models/GLM-4.7-Flash \
        --manifest eval/pairs/data/glm_47_flash_manifest.json [--verify-weights] [--four-bit]

Cluster only (needs transformers and peft). Prints one line per stage and a final `SMOKE:` line.
Nothing is saved; this answers yes or no, it is not a result.
"""
from __future__ import annotations

import argparse
import json
import sys
import time
from pathlib import Path

from eval.pairs import score_llm, score_llm_local as local

# The last four are GLM-4.7-Flash's names: it splits the query and key/value projections in two.
ATTENTION = ("q_proj", "k_proj", "v_proj", "o_proj", "q_a_proj", "q_b_proj", "kv_a_proj_with_mqa", "kv_b_proj")


def training_example(prompt_ids, answer_ids):
    """Input ids and labels for one supervised step: the loss is taken on the answer only."""
    return list(prompt_ids) + list(answer_ids), [-100] * len(prompt_ids) + list(answer_ids)


def lora_targets(linear_names):
    """Attention projections among the model's linear layers, by the last part of the name.
    Empty if the model names them differently: the caller then stops and prints the names."""
    leaves = {n.rsplit(".", 1)[-1] for n in linear_names}
    return sorted(leaves & set(ATTENTION))


def main(argv=None) -> int:
    ap = argparse.ArgumentParser(description=__doc__.split("\n")[0])
    ap.add_argument("--model-dir", required=True)
    ap.add_argument("--manifest", required=True)
    ap.add_argument("--verify-weights", action="store_true")
    ap.add_argument("--four-bit", action="store_true", help="load 4-bit (bitsandbytes) instead of 16-bit")
    ap.add_argument("--max-new-tokens", type=int, default=768)
    ap.add_argument("--rank", type=int, default=8)
    a = ap.parse_args(argv)
    man = json.loads(Path(a.manifest).read_text())
    done = {"load": "no", "generate": "no", "lora_step": "no"}

    def finish(rc):
        print("SMOKE: " + " ".join(f"{k}={v}" for k, v in done.items()), flush=True)
        return rc

    if a.verify_weights:
        t0 = time.time()
        bad = local.verify_weights(a.model_dir, a.manifest)
        if bad:
            print(f"weights do not match the publisher's listing: {bad}")
            return finish(2)
        print(f"weights match the publisher's sizes and sha256 ({time.time() - t0:.0f}s)", flush=True)

    import torch
    import transformers
    from transformers import AutoModelForCausalLM, AutoTokenizer

    gib = lambda: torch.cuda.max_memory_allocated() / 2 ** 30
    print(f"transformers {transformers.__version__}, torch {torch.__version__}, "
          f"gpu {torch.cuda.get_device_name(0)}, "
          f"{torch.cuda.get_device_properties(0).total_memory / 2 ** 30:.1f} GiB", flush=True)
    tok = AutoTokenizer.from_pretrained(a.model_dir)
    kw = {"device_map": {"": 0}}
    if a.four_bit:
        from transformers import BitsAndBytesConfig
        kw["quantization_config"] = BitsAndBytesConfig(load_in_4bit=True, bnb_4bit_quant_type="nf4",
                                                       bnb_4bit_compute_dtype=torch.bfloat16)
    else:
        kw["torch_dtype"] = torch.bfloat16
    t0 = time.time()
    model = AutoModelForCausalLM.from_pretrained(a.model_dir, **kw)
    n = sum(p.numel() for p in model.parameters())
    want = man.get("parameters_loaded", man["parameters"])      # see `parameters_note` in the manifest
    print(f"loaded {type(model).__name__} in {time.time() - t0:.0f}s; {n} parameters "
          f"(expected {want}; publisher's files hold {man['parameters']}); peak {gib():.1f} GiB", flush=True)
    if not a.four_bit and n != want:
        print("parameter count differs from the expected count")
        return finish(3)
    done["load"] = "yes"

    pair = local.load_pairs(30, exclude_public=True)[0]
    msgs = [{"role": "system", "content": score_llm.SYSTEM},
            {"role": "user", "content": score_llm.prompt_single(pair["leak"])}]
    text = tok.apply_chat_template(msgs, tokenize=False, add_generation_prompt=True)
    print("prompt ends: " + repr(text[-120:]), flush=True)
    enc = tok(text, return_tensors="pt", add_special_tokens=False).to(model.device)
    model.eval()
    t0 = time.time()
    with torch.no_grad():
        out = model.generate(**enc, max_new_tokens=a.max_new_tokens, do_sample=True, temperature=1.0, top_p=0.95)
    new = out[0][enc["input_ids"].shape[1]:]
    ans = tok.decode(new, skip_special_tokens=False)
    print(f"generated {len(new)} tokens in {time.time() - t0:.0f}s "
          f"({len(new) / max(time.time() - t0, 1e-9):.1f} tokens/s); prompt {enc['input_ids'].shape[1]} tokens; "
          f"peak {gib():.1f} GiB", flush=True)
    print("answer starts: " + repr(ans[:300]))
    print("answer ends: " + repr(ans[-300:]))
    print(f"`</think>` in answer: {local.THINK_END in ans}; parsed probability: "
          f"{score_llm.parse_probability(local.visible(ans))}", flush=True)
    done["generate"] = "yes"

    from peft import LoraConfig, get_peft_model
    linear = [name for name, m in model.named_modules() if isinstance(m, torch.nn.Linear)]
    targets = lora_targets(linear)
    leaves = sorted({x.rsplit(".", 1)[-1] for x in linear})
    print(f"{len(linear)} linear layers; names: {leaves[:40]}; LoRA on: {targets}", flush=True)
    if not targets:
        print("no attention projection found under the usual names")
        return finish(4)
    if a.four_bit:
        from peft import prepare_model_for_kbit_training
        model = prepare_model_for_kbit_training(model)
    model.gradient_checkpointing_enable()
    model.enable_input_require_grads()      # with checkpointing, the adapters get no gradient otherwise
    model.config.use_cache = False
    model = get_peft_model(model, LoraConfig(r=a.rank, lora_alpha=2 * a.rank, lora_dropout=0.0,
                                             target_modules=targets, task_type="CAUSAL_LM"))
    train = [p for p in model.parameters() if p.requires_grad]
    print(f"trainable parameters: {sum(p.numel() for p in train)} in {len(train)} tensors", flush=True)
    ids, labels = training_example(enc["input_ids"][0].tolist(),
                                   tok("PROBABILITY: 0.9", add_special_tokens=False)["input_ids"])
    x = torch.tensor([ids], device=enc["input_ids"].device)
    y = torch.tensor([labels], device=x.device)
    opt = torch.optim.AdamW(train, lr=1e-3)
    model.train()
    torch.cuda.reset_peak_memory_stats()
    t0 = time.time()
    loss = model(input_ids=x, labels=y).loss
    loss.backward()
    opt.step()
    opt.zero_grad()
    with torch.no_grad():
        after = model(input_ids=x, labels=y).loss
    moved = sum(float(p.detach().float().abs().sum()) for nm, p in model.named_parameters() if "lora_B" in nm)
    print(f"LoRA step in {time.time() - t0:.0f}s on {len(ids)} tokens: loss {float(loss):.4f} -> {float(after):.4f}; "
          f"sum |lora_B| {moved:.4g} (0 before the step); peak {gib():.1f} GiB", flush=True)
    if torch.isfinite(loss) and torch.isfinite(after) and moved > 0:
        done["lora_step"] = "yes"
    return finish(0 if done["lora_step"] == "yes" else 5)


if __name__ == "__main__":
    sys.exit(main())
