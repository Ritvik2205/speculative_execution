# Step 1 — gate-only generation harness: status (2026-11-10)

Branch `step1/gate-only-harness`, commit `1f246c6e`. Plan:
`docs/NEXT_STEPS_2026-11-10.md`. All results below were run locally (Docker
Spectector, `venv`); nothing on the cluster.

## Done and tested

1. **Gate-only victim template** (`gen/synth/spectector_gadgets.py`,
   `render_spec_gate`): supplies only the speculation gate and two reserved
   registers, over a static array base `arr[]`. Injects no load/transmit.
2. **Reserved-register tokens** (`gen/realize.py`): `<secret-ptr>` → `(%r15)`,
   `<probe>` → `(%r14,%idx)`, spec-driven, inert on arm64/riscv64. Existing
   ISAs byte-identical; 332 gen tests pass.
3. **Gate-only splice** (`gen/oracle_splice.py`, `splice_gate_only`): seeds
   `%r15 = arr+i`, `%r14 = probe`, emits the body verbatim.
4. **Truth table** (`tests/gen/test_gate_only_harness.py`, 11 cases, oracle-
   confirmed): empty / NOP / load-only / public-index transmit → SAFE;
   coherent load→scale→transmit → LEAK; fence between load and transmit →
   SAFE; fence after transmit → LEAK; fence at the gate → SAFE.

The harness has the property the old one lacked: **the body carries the leak.**
`secret-ptr` token chosen as the convention, as directed.

## The finding that blocks the generation half

On the gate-only harness the leak verdict tracks **dataflow coherence** —
oracle-confirmed:

| body (same template, Spectector) | verdict |
|---|---|
| `movzbl (%r15),%eax; shlq $6,%rax; movb $1,(%r14,%rax)` — one register threaded | **leak** |
| `movzbl (%r15),%eax; shlq $6,%rbx; movb $1,(%r14,%rcx)` — three different registers | safe |
| transmit a public index | safe |
| coherent + `lfence` between | safe |

The shared tokenizer (`spec/asm_tokenizer.py`) normalises every register to the
identity-free placeholder `<reg>`:

```
movzbl (%rax),%ebx   ->  movzbl <mem> <reg>
movb   $1,(%r14,%rbx) ->  movb <imm> <mem-idx>
```

So which register carries the loaded value is not in the representation. The
realiser then assigns a **fresh** register per instruction — i.e. it produces
exactly the "three different registers" row above. The old splice hid this by
fabricating the load→transmit dataflow itself (seed register in, last-written
register out), independent of the body — which is why a NOP body leaked 1.00.

**Measured at scale (CORRECTED 2026-11-11).** An earlier version of this
doc said "0 leaks / 0 adjudicable / 280 unrunnable". That was a bug in my
measurement script (it sent the bare asm block to the oracle without rendering
the victim template, so nothing compiled). Two real harness defects were then
found and fixed: (a) GCC "impossible constraints" when a body used most of the
pool (inputs now bound to r15/r14 via register variables), (b) unbalanced
`pop`s in windowed epilogues corrupting the frame (stripped at splice time).
Corrected numbers are in the control table below (§ Controls).

Consequence: the generation half of step 1 (does the loop discover leaks over a
benign baseline?) cannot be measured until the generator's representation
carries register identity. This revises **H1**: the loop can only add value once
a dataflow-coherent gadget is expressible at all.

Viability of the fix is proven: with slot-indexed tokens
(`movzbl <secret-ptr> <reg0>; shlq <imm> <reg0>; movb <imm> <probe:0>`) a
prototype realiser threads one register and Spectector confirms the leak, while
the incoherent and benign variants are safe (above).

## Decision needed: the representation change (Route A)

Register identity must enter the token stream. It is shared by the Phase-1 MLM
encoder and the detector's learned node features, so this is a cross-cutting
design choice, not a generator-local tweak. Options:

- **A1 — inline slot tokens.** `<reg0>`,`<reg1>`,… by first-appearance within a
  window (cap ~8, overflow to `<reg>`). Smallest change; vocabulary grows by
  the cap. Encoder/detector see the slots too (may help or hurt — measure).
- **A2 — separate identity channel.** Keep `<reg>` in the opcode stream; add a
  parallel per-token register-slot id as a second embedding. No vocab growth;
  more model plumbing; cleanest separation.
- **A3 — identity-free generator, dataflow reconstructed under a class
  constraint at realisation.** Rejected: that puts the leak back in the
  harness, the exact flaw we removed.

Recommended **A1** (simplest, keeps one representation; identity-free mode
stays available for the detector by dropping slot suffixes). Either A1 or A2
needs: tokenizer change (+ unit tests), corpus rebuild in the new
representation, and a generator **retrain** (GPU, cluster). The encoder/detector
can keep the identity-free view until measured.

Everything up to the retrain is local and testable. The retrain is the one
cluster job and is a real architecture commitment, so it should be confirmed
before spending it.

## If Route A is approved — order

1. `asm_tokenizer`: opt-in `identity=True` emitting slot suffixes; unit test
   that a real gadget round-trips (tokenize → realise → assembles, and a known
   leak stays a leak through the oracle).
2. `realize.py`: consume slot suffixes, thread one concrete register per slot.
3. Rebuild the generator training corpus in the identity representation;
   attack bodies must use `<secret-ptr>`/`<probe>` so a leak is expressible.
4. Retrain (cluster), then run the gate-only loop and emit the control table
   (empty / NOP / benign / random / untrained / fine-tuned), multi-seed,
   whole-run — the H1 test.
5. Only then: minimality (step 2) and the silicon comparison (step 3).
