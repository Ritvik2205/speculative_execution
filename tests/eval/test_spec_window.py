"""Tests for eval/mechanism/spec_window.py — the non-learned mechanism rule:
BENIGN iff an lfence on the executed path cuts every speculative window
(speculation trigger -> transmitting memory read). Fixtures are cut-down
Revizor programs (AT&T objdump, %r14 sandbox base, `andq` masks) in the shape
of eval/data/revizor_hwlabel_variants.jsonl."""
import json
import re
from pathlib import Path

from eval.mechanism.spec_window import (
    FROZEN_MODE,
    mechanism_pred,
    window_cut,
    windows,
)

ROOT = Path(__file__).resolve().parents[2]
DEV = ROOT / "eval/data/revizor_hwlabel_variants.jsonl"

V1 = ["andq $0x1fff, %rsi", "movw (%r14,%rsi), %ax", "cmpb %al, %sil",
      "jnp 0x54 <.bb_0.1>", "jmp 0x98 <.exit_0>",
      "andq $0x1fff, %rax", "movb (%r14,%rax), %bl"]
V4 = ["andq $0x1fff, %rdx", "movl %eax, (%r14,%rdx)",
      "andq $0x1fff, %rcx", "movq (%r14,%rcx), %rbx",
      "andq $0x1fff, %rbx", "movb (%r14,%rbx), %al"]
L1TF = ["andq $0x1fff, %rcx", "movw (%r14,%rcx), %cx",
        "andq $0x1fff, %rcx", "andb (%r14,%rcx), %bl"]


def rec(seq, cls="SPECTRE_V1"):
    return {"label": cls, "vuln_class": cls, "sequence": seq}


def ins(seq, i, x="lfence"):
    return seq[:i] + [x] + seq[i:]


# --- SPECTRE_V1 -------------------------------------------------------------

def test_v1_unfenced_is_vulnerable():
    assert mechanism_pred(rec(V1)) == "SPECTRE_V1"


def test_v1_fence_in_taken_block_mitigates():          # 'twin'
    assert mechanism_pred(rec(ins(V1, 5))) == "BENIGN"


def test_v1_fence_before_jcc_after_cmp_mitigates():    # 'shifted'
    assert mechanism_pred(rec(ins(V1, 3))) == "BENIGN"


def test_v1_entry_fence_does_not_mitigate():
    assert mechanism_pred(rec(ins(V1, 0))) == "SPECTRE_V1"


def test_v1_tail_fence_does_not_mitigate():           # 'tail' / 'v1_fallthrough'
    assert mechanism_pred(rec(V1 + ["lfence"])) == "SPECTRE_V1"


def test_v1_fence_before_condition_load_does_not_mitigate():
    # fence before the slow condition load: the branch still waits on it
    assert mechanism_pred(rec(ins(V1, 1))) == "SPECTRE_V1"


def test_v1_window_shape():
    (w,) = windows(V1, "SPECTRE_V1")
    assert w.trigger == 3 and w.end == 6
    assert 2 in w.path and 5 in w.path and 4 not in w.path and 1 not in w.path
    assert not window_cut(V1, w)


# --- SPECTRE_V4 -------------------------------------------------------------

def test_v4_unfenced_is_vulnerable():
    assert mechanism_pred(rec(V4, "SPECTRE_V4")) == "SPECTRE_V4"


def test_v4_fence_after_store_mitigates():             # 'twin'
    assert mechanism_pred(rec(ins(V4, 2), "SPECTRE_V4")) == "BENIGN"


def test_v4_fence_before_store_after_address_mitigates():  # 'shifted'
    assert mechanism_pred(rec(ins(V4, 1), "SPECTRE_V4")) == "BENIGN"


def test_v4_entry_and_tail_do_not_mitigate():
    assert mechanism_pred(rec(ins(V4, 0), "SPECTRE_V4")) == "SPECTRE_V4"
    assert mechanism_pred(rec(V4 + ["lfence"], "SPECTRE_V4")) == "SPECTRE_V4"


def test_v4_needs_a_transmitter():
    # bypassing load whose value never reaches an address: nothing to leak
    seq = ["andq $0x1fff, %rdx", "movl %eax, (%r14,%rdx)", "movq (%r14,%rcx), %rbx"]
    assert mechanism_pred(rec(seq, "SPECTRE_V4")) is None


# --- MDS / L1TF -------------------------------------------------------------

def test_l1tf_unfenced_is_vulnerable():
    assert mechanism_pred(rec(L1TF, "L1TF")) == "L1TF"


def test_mds_after_load_mitigates():                   # 'after_load'
    assert mechanism_pred(rec(ins(L1TF, 2), "MDS")) == "BENIGN"


def test_l1tf_fence_before_transmit_mitigates():       # 'twin' (before reads)
    assert mechanism_pred(rec(ins(L1TF, 3), "L1TF")) == "BENIGN"


def test_pure_store_is_not_a_transmitter():
    seq = ["movw (%r14,%rcx), %cx", "andq $0x1fff, %rcx", "movb %al, (%r14,%rcx)"]
    assert mechanism_pred(rec(seq, "L1TF")) is None


# --- Review Focus -----------------------------------------------------------

def test_no_trigger_abstains():
    assert mechanism_pred(rec(["addq $1, %rax"])) is None
    assert windows(["addq $1, %rax"], "SPECTRE_V1") == []


def test_lock_prefix_is_one_op():
    # `lock` on its own line belongs to the RMW after it: that RMW is the V4
    # store, and a fence before the `lock` line sits before the store.
    seq = ["andq $0x1ff8, %rax", "lfence", "lock", "decb (%r14,%rax)",
           "andq $0x1fff, %rcx", "movq (%r14,%rcx), %rbx",
           "andq $0x1fff, %rbx", "movb (%r14,%rbx), %al"]
    (w,) = windows(seq, "SPECTRE_V4")
    assert w.trigger == 3
    assert mechanism_pred(rec(seq, "SPECTRE_V4")) == "BENIGN"


def test_subregister_alias():
    # write %ax (16-bit) -> later (%r14,%rax) depends on it
    seq = ["movw (%r14,%rcx), %ax", "andq $0x1fff, %rax", "movb (%r14,%rax), %bl"]
    (w,) = windows(seq, "MDS")
    assert w.end == 2


def test_pure_def_breaks_dependence():
    seq = ["movw (%r14,%rcx), %ax", "movl $0x10, %eax", "movb (%r14,%rax), %bl"]
    assert windows(seq, "MDS") == []


def test_displacement_invariance():
    other = [re.sub(r"0x[0-9a-f]+ <", "0x7e <", x) if x.startswith("j") else x for x in V1]
    assert other != V1
    for s in (V1, ins(V1, 5), ins(V1, 3), ins(V1, 0)):
        t = [re.sub(r"0x[0-9a-f]+ <", "0x7e <", x) if x.startswith("j") else x for x in s]
        assert mechanism_pred(rec(s)) == mechanism_pred(rec(t))


def test_all_vs_any_modes():
    # two V1 windows, only the first cut
    two = V1[:5] + ["lfence"] + V1[5:] + ["cmpb %al, %bl", "jnp 0x10 <.bb_0.2>",
                                           "jmp 0x20 <.exit_0>", "movb (%r14,%rbx), %cl"]
    assert len(windows(two, "SPECTRE_V1")) == 2
    assert mechanism_pred(rec(two), mode="all") == "SPECTRE_V1"
    assert mechanism_pred(rec(two), mode="any") == "BENIGN"


# --- dev calibration (Step 5) -----------------------------------------------

def test_dev_accuracy():
    recs = [json.loads(l) for l in open(DEV) if l.strip()]
    preds = [mechanism_pred(r) for r in recs]
    acc = sum(p == r["label"] for p, r in zip(preds, recs)) / len(recs)
    print(f"\nmode={FROZEN_MODE} dev acc={acc:.4f} abstain={preds.count(None)}")
    assert acc >= 0.95


# --- calibration fixes (dev-806 abstains; see spec_window.py calibration log) ---

def test_jmp_to_next_block_is_followed():
    # Revizor lays .bb_0.1 out right after `jmp <.bb_0.1>`: dependence continues
    seq = ["movw (%r14,%rcx), %dx", "jmp 0x7c <.bb_0.1>",
           "andq $0x1fff, %rdx", "cmpl $-0xc, (%r14,%rdx)"]
    (w,) = windows(seq, "L1TF")
    assert w.end == 3


def test_jmp_to_measurement_end_stops():
    seq = ["movw (%r14,%rcx), %dx", "jmp 0x7c <.macro.measurement_end>",
           "andq $0x1fff, %rdx", "cmpl $-0xc, (%r14,%rdx)"]
    assert windows(seq, "L1TF") == []


def test_tab_separated_lock_prefix():
    seq = ["andq $0x1ff8, %rax", "lock btsw\t$0x0, (%r14,%rax)",
           "andq $0x1fff, %rcx", "movq (%r14,%rcx), %rbx",
           "andq $0x1fff, %rbx", "movb (%r14,%rbx), %al"]
    (w,) = windows(seq, "SPECTRE_V4")
    assert w.trigger == 1


def test_loop_is_a_conditional_branch():
    seq = ["andq $0x1fff, %rax", "andl (%r14,%rax), %edx", "orb %bl, %dl",
           "loopne 0x82 <.bb_0.1>", "jmp 0x111 <.macro.measurement_end>",
           "andq $0x1fff, %rdi", "negl (%r14,%rdi)"]
    (w,) = windows(seq, "SPECTRE_V1")
    assert w.trigger == 3 and w.end == 6


def test_cf_wrong_path_fence_does_not_mitigate():
    # cf_wrong_path (hw_label_variants.py): `jcc; .bb_new: lfence; jmp` — the
    # fence sits on the fall-through, not the mispredicted taken block. The
    # interior-fence bar calls this BENIGN; the mechanism rule must not.
    from eval.mechanism.bars import interior_fence_pred
    seq = V1[:4] + ["lfence"] + V1[4:]
    (w,) = windows(seq, "SPECTRE_V1")
    assert w.trigger == 3 and 4 not in w.path
    assert mechanism_pred(rec(seq)) == "SPECTRE_V1"
    assert interior_fence_pred(rec(seq)) == "BENIGN"


def test_div_in_condition_chain_is_long_latency():
    # review I3: load; lfence; div; cmp; jcc — the div keeps the branch
    # unresolved after the fence, so the fence does not cut the window
    seq = ["movq (%r14,%rsi), %rax", "lfence", "divq %rcx", "cmpq %rax, %rbx",
           "jne 0x54 <.bb_0.1>", "jmp 0x98 <.exit_0>", "movb (%r14,%rax), %bl"]
    (w,) = windows(seq, "SPECTRE_V1")
    assert w.start == 2
    assert mechanism_pred(rec(seq)) == "SPECTRE_V1"
