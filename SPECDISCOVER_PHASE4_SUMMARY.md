# SpecDiscover — Phase 4 Summary (Leak Oracles & Attack Validation)

*Plain-language summary of the Phase 4 work. For exact numbers and commands see
`SPECDISCOVER_UPDATE.md` and `SPECDISCOVER_VERIFICATION_GAPS.md`.*

---

## 1. The problem we set out to solve

Before this work, **nothing in the project actually confirmed that an attack
leaks a secret.** Every check was either a hand-written rule, a syntax checker,
or another machine-learning model — none of them run the attack and watch a
secret escape.

Phase 4's job: build a **real leak oracle** — a tool that gives ground truth on
"does this attack actually leak?"

---

## 2. What we built

We ended up with **three** ways to check an attack, plugged into one framework
so their answers can be compared:

```
                        ┌─────────────────────────┐
                        │      An attack gadget     │
                        └─────────────┬────────────┘
                                      │
          ┌───────────────────────────┼───────────────────────────┐
          ▼                           ▼                            ▼
   ┌──────────────┐           ┌───────────────┐           ┌───────────────┐
   │  Spectector   │           │  InvisiSpec    │           │    Revizor     │
   │  (math proof) │           │ (runs it in a  │           │ (runs it on a  │
   │               │           │  CPU simulator)│           │  real CPU)     │
   └──────┬───────┘           └───────┬───────┘           └───────┬───────┘
          │                           │                           │
          └───────────────────────────┼───────────────────────────┘
                                       ▼
                          ┌─────────────────────────┐
                          │    Cross-validation:     │
                          │  do the oracles agree?   │
                          │  (agreement = strongest  │
                          │        evidence)         │
                          └─────────────────────────┘
```

| Oracle | What it is | What it proves | Speed | Status |
|---|---|---|---|---|
| **Spectector** | Formal/symbolic prover | The attack's *structure* can leak | Fast (~30s) | ✅ Working |
| **InvisiSpec** | CPU simulator (gem5 fork) | The *compiled program* actually leaks a secret | Slow (~10 min) | ✅ Working |
| **Revizor** | Real-hardware fuzzer | A *real Intel/AMD CPU* leaks | — | ⚙️ Prepped, needs x86 hardware |

---

## 3. The journey (what worked, what didn't)

We tried the obvious tool first and it failed — worth knowing so no one repeats it.

```
Attempt 1:  Standard gem5 (v24)      →  ❌ REFUTED
            The modern simulator does not leave the cache traces that
            Spectre needs. Proven with evidence, not guessed. Dead end.

Attempt 2:  Spectector                →  ✅ WORKS
            Proves leaks mathematically. No hardware needed. Fast.

Attempt 3:  InvisiSpec (old gem5 fork)→  ✅ WORKS (actually leaks!)
            Ran a real Spectre attack and recovered the full secret
            string "The Magic Words are Squeamish Ossifrage."

Attempt 4:  Revizor (real hardware)   →  ⚙️ PREPPED
            The only way to test the remaining 6 classes — but needs
            a real Intel/AMD machine, which we don't have (we're on
            Apple Silicon / ARM).
```

---

## 4. Results: which attacks are confirmed

There are 8 vulnerability classes. Here's where each stands today:

| Class | Formal proof (Spectector) | Real execution (InvisiSpec) | Overall |
|---|:---:|:---:|---|
| **SPECTRE_V1** | ✅ leak | ✅ leak (secret recovered) | ✅ **Double-confirmed** |
| **SPECTRE_V4** | ✅ leak | ✅ leak (secret recovered) | ✅ **Double-confirmed** |
| SPECTRE_V2 | – | not modelled | ⏳ needs real hardware |
| BHI | – | not modelled | ⏳ needs real hardware |
| RETBLEED | – | not modelled | ⏳ needs real hardware |
| INCEPTION | – | not modelled | ⏳ needs real hardware |
| L1TF | – | not modelled | ⏳ needs real hardware |
| MDS | – | not modelled | ⏳ needs real hardware |

**"Double-confirmed"** = a maths proof *and* a real execution run both agree the
attack leaks, with the secret actually recovered. That is the strongest evidence
we can produce short of real hardware.

```
Progress:  2 of 8 classes fully confirmed
           ██████░░░░░░░░░░░░░░░░░░░  (V1, V4)
           remaining 6 are hardware-locked (see §6)
```

---

## 5. Two honest findings

**Finding A — our existing attacks don't actually leak as written.**
The reference attacks (`spectre_1.c` etc.) and our first generated gadgets are
*pattern examples*, not working exploits. They were under-tuned. Once tuned to a
proven recipe, V1 and V4 leak reliably.
→ *Implication: the classifier was partly trained on "attacks" that don't leak.*

**Finding B — we did NOT build the ML ranker yet, on purpose.**
The plan was a learned model to prioritise which attacks to test. We first ran an
experiment to check there was a real signal to learn. There wasn't — under a
proper measurement, our gadgets leak across the whole tuning range, so every
sample is the same class ("leaks"). A model needs *variety* to learn from.
→ *Implication: building the ranker now would train it on noise. We stopped
before wasting effort. It becomes worthwhile only once leak results genuinely
vary (which needs the real-hardware classes).*

---

## 6. The one hard limitation

The remaining 6 classes are **hardware-specific**. They exploit physical parts of
Intel/AMD chips (branch predictors, return stacks, fill buffers) that:

- **no simulator can fully reproduce**, and
- **do not exist on our Apple Silicon (ARM) machine at all.**

```
   What each class needs to be confirmed:

   SPECTRE_V2  ──►  Intel/AMD chip (branch target buffer)
   BHI         ──►  newer Intel chip
   RETBLEED    ──►  older Intel / AMD Zen 1-2
   INCEPTION   ──►  AMD Zen chip
   L1TF        ──►  older Intel (pre-2019)
   MDS         ──►  older Intel (pre-2019)

   Our machine:  Apple M5 (ARM)  ──►  has NONE of the above
```

This is not a software gap we can close — it needs a real x86 machine. Revizor is
fully prepped to run the moment we have one.

---

## 7. What exists right now, and how good it is

| Thing | Quality | Notes |
|---|---|---|
| Symbolic oracle (Spectector) | 🟢 Good | Fast, containerised, proves V1/V4-family leaks |
| Execution oracle (InvisiSpec) | 🟢 Good | Real ground truth; slow; x86-only; V1/V4 only |
| V1 & V4 validation | 🟢 Strong | Confirmed two independent ways |
| Multi-oracle framework | 🟢 Good | Clean, tested (64 tests pass), easy to add oracles |
| Revizor prep | 🟡 Ready-but-waiting | Plug-and-run once we have x86 hardware |
| Attack corpus quality | 🔴 Weak | Under-tuned; needs the proven recipe to actually leak |
| Learned ranker | ⚪ Not built | Deliberately deferred — no signal to learn yet |

---

## 8. Concrete next steps

```
Priority 1 ──►  Get access to a real Intel/AMD Linux machine
                (bare-metal or cloud *.metal, with root)
                → run Revizor → confirm the remaining 6 classes
                → all 8 classes validated

Priority 2 ──►  Re-tune the attack corpus so gadgets actually leak
                (needs nothing extra — can do now)
                → real exploits + cleaner training labels

Priority 3 ──►  Write up the methodology for the paper
                (formal proof agreeing with real execution is a
                 genuine, novel contribution)

Priority 4 ──►  Revisit the learned ranker
                (only once leak results vary — i.e. after Priority 1)
```

| Step | What I need from you | Blocker? |
|---|---|---|
| Validate 6 remaining classes | **A real x86 Intel/AMD machine** (or approval to rent one) | 🔴 Yes — hard blocker |
| Re-tune corpus | Nothing | 🟢 No |
| Paper write-up | Nothing | 🟢 No |
| Learned ranker | Depends on step 1 | 🟡 Later |

---

## 9. Bottom line

We went from **"nothing confirms our attacks are real"** to **"two attack classes
confirmed leaking, verified two independent ways, with a third real-hardware
oracle prepped and waiting."**

The single thing standing between us and validating all 8 classes is **access to a
real Intel/AMD machine** — everything on the software side is built and tested.
