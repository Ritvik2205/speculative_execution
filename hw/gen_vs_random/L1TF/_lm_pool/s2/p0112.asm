.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor ax, 34
xor bl, -5
sbb cl, dil
and rdi, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rdi]
and rdi, 63
and eax, -409673666
and rbx, 0b1111111111111 # instrumentation
xor ax, word ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
test dil, -126
not eax
and rdx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdx], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
