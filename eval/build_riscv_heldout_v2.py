#!/usr/bin/env python3
"""build_riscv_heldout_v2.py — corrected labels for the held-out riscv64 set.

spec/data/riscv_loio_corpus.jsonl labels every function by its SOURCE FILE
(gen/harvest_riscv_from_cvulns.FILE_CLASS: retbleed.c -> RETBLEED, ...), and
eval scripts then drop every record <= 10 instructions as a "stub". Reading
the C and the compiled riscv64 asm (2026-09-24) shows two label problems:

RETBLEED — removed (10 records). None of retbleed.c's functions contains the
  mechanism; the file's own comments place the attack in main()'s sequence
  (drain the RSB, poison the BTB, trigger a ret) on Intel/AMD cores:
    leak_gadget_retbleed        generic transmit `probe[v*64]=1` (any class)
    deep_call_retbleed          recursive RSB drain (an SPECTRE_RSB primitive)
    victim_function_with_...    a counter loop + ret (benign code)
  Retbleed is also an x86 microarchitectural attack with no known riscv64
  analogue, so the class cannot be scored on this ISA. The x86/arm TRAINING
  RETBLEED records are different (multi-function asm PoCs with call chains,
  ret mismatch and fences) and are unaffected.

SPECTRE_V4 — 3 records restored. ssb_read at -O1/-O2/-Os compiles to exactly
  10 instructions — `sd a1,0(a0); ld a4,0(a0); lbu a4,0(a4); slliw ..,6; sb`
  — the complete store / reload-through-pointer / dependent-load / transmit
  gadget. The length-only stub rule dropped them. They get keep_short=true,
  which gine_riscv_holdout_eval.py honours; everything else keeps the rule
  (the other <=10 records are genuine tiny BENIGN wrappers).

Flagged, unchanged: 4 SPECTRE_V1 records are spectre_github.c:readMemoryByte
  (the attacker's flush+reload harness, not the gadget; training data labels
  harness code the same way) and all 4 BHI records are the attacker's
  branch-history conditioner (an Intel-specific effect). Both get label_note.

Run: python3 eval/build_riscv_heldout_v2.py  -> spec/data/riscv_loio_corpus_v2.jsonl
"""
import json
from collections import Counter
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
SRC = ROOT / "spec" / "data" / "riscv_loio_corpus.jsonl"
OUT = ROOT / "spec" / "data" / "riscv_loio_corpus_v2.jsonl"


def main():
    recs = [json.loads(l) for l in open(SRC) if l.strip()]
    out, dropped = [], Counter()
    for r in recs:
        fn = (r.get("gadget_function") or "").split(".")[0]
        if r["label"] == "RETBLEED":
            dropped["RETBLEED (no riscv64 mechanism; functions don't encode it)"] += 1
            continue
        r = dict(r)
        if r["label"] == "SPECTRE_V4" and fn == "ssb_read":
            r["keep_short"] = True
            r["label_note"] = "complete store-bypass gadget; exempt from the <=10-instr stub rule"
        elif r["label"] == "SPECTRE_V1" and fn == "readMemoryByte":
            r["label_note"] = "attacker flush+reload harness, not the V1 gadget (kept; flagged)"
        elif r["label"] == "BRANCH_HISTORY_INJECTION":
            r["label_note"] = "attacker branch-history conditioner; BHI effect is Intel-specific (kept; flagged)"
        out.append(r)
    with open(OUT, "w") as f:
        for r in out:
            f.write(json.dumps(r) + "\n")
    print(f"{len(recs)} -> {len(out)} records; dropped {dict(dropped)}")
    print("labels:", dict(Counter(r["label"] for r in out)))
    print("keep_short:", sum(1 for r in out if r.get("keep_short")))
    print(f"-> {OUT.relative_to(ROOT)}")


if __name__ == "__main__":
    main()
