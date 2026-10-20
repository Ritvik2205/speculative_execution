import sys, json
from pathlib import Path
ROOT = Path(".")
sys.path.insert(0, str(ROOT/"eval"))
from locked_classifier import LockedClassifier

# full gadget: PHT branch -> OOB pointer chase (secret) -> cache transmit
full = [
 "movq\t(%rdi), %rcx",
 "xorl\t%eax, %eax",
 "cmpq\t%rdi, %rcx",
 "je\t.LBB0_3",
 "movq\t16(%rcx), %rdx",     # load pos->user
 "movq\t(%rcx), %rcx",       # pos = next
 "movl\t(%rdx), %edx",       # OOB secret load pos->user->uid
 "shlq\t$6, %rdx",           # scale by cache line
 "movzbl\t(%rsi,%rdx), %edx",# secret-dependent transmit
 "addq\t%rdx, %rax",
 "cmpq\t%rdi, %rcx",
 "jne\t.LBB0_1",
 "retq",
]
# kernel-side only: control (PHT branch) + OOB secret load, NO in-gadget transmit
kernel_only = [
 "movq\t(%rdi), %rcx",
 "xorl\t%eax, %eax",
 "cmpq\t%rdi, %rcx",
 "je\t.LBB0_3",
 "movq\t16(%rcx), %rdx",
 "movq\t(%rcx), %rcx",
 "movl\t(%rdx), %edx",
 "addq\t%rdx, %rax",
 "cmpq\t%rdi, %rcx",
 "jne\t.LBB0_1",
 "retq",
]
recs = [
 {"sequence": full,        "arch":"x86_64"},
 {"sequence": kernel_only, "arch":"x86_64"},
]
clf = LockedClassifier()
out = clf.predict(recs)
names = ["full (control+OOB-load+transmit)", "kernel-only (control+OOB-load)"]
for i,nm in enumerate(names):
    probs = out["probs"][i]
    cls = out["classes"]
    order = sorted(range(len(cls)), key=lambda j: -probs[j])
    top = ", ".join(f"{cls[j]}={probs[j]:.3f}" for j in order[:4])
    print(f"\n[{nm}]")
    print(f"  predicted label : {out['label'][i]}")
    print(f"  attack_prob     : {out['attack_prob'][i]:.3f}")
    print(f"  top classes     : {top}")
