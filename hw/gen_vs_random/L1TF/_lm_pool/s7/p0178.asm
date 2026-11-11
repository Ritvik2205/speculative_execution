.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dx, 1
sbb cl, dil
sbb al, -23
jmp .bb_0.1
.bb_0.1:
lea rdx, qword ptr [rdi + rax + 46]
and dil, dil
and rdi, 0b1111111111111 # instrumentation
cmp sil, byte ptr [r14 + rdi]
or al, -57
and dil, -82
and rcx, 0b1111111111111 # instrumentation
cmovo di, word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
