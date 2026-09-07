import sys; sys.path.insert(0, "v54")
from augment_trigger_masked import augment_trigger_masked

def test_attack_record_with_trigger_gets_masked_copy():
    recs = [{"label":"MDS","arch":"x86_64","group":"g1",
             "sequence":["verw %ax","mov %rax,%rbx","ret"]}]
    out = augment_trigger_masked(recs)
    assert len(out) == 2                       # original + masked copy
    masked = [r for r in out if r.get("augmentation") == "trigger_masked"]
    assert len(masked) == 1
    assert masked[0]["label"] == "MDS" and masked[0]["group"] == "g1"
    assert not any("verw" in l for l in masked[0]["sequence"])

def test_benign_never_duplicated():
    recs = [{"label":"BENIGN","arch":"arm64","group":"b1",
             "sequence":["rdtsc","mov %rax,%rbx"]}]  # even if it had a trigger opcode
    out = augment_trigger_masked(recs)
    assert len(out) == 1

def test_attack_without_trigger_not_duplicated():
    recs = [{"label":"SPECTRE_V1","arch":"x86_64","group":"s1",
             "sequence":["cmp %rax,%rcx","jb .L1","mov (%rdi,%rcx),%rdx"]}]
    out = augment_trigger_masked(recs)
    assert len(out) == 1                       # no trigger opcode -> nothing to mask
