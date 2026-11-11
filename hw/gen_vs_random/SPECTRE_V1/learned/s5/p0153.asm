.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dil, al
and rbx, 0b1111111111111 # instrumentation
mov si, word ptr [r14 + rbx]
jnle .bb_0.1
jmp .bb_0.2
.bb_0.1:
jno .bb_0.2
jmp .bb_0.3
.bb_0.2:
sbb al, 104
sbb cl, 105
sbb al, dl
jmp .bb_0.3
.bb_0.3:
and rax, 0b1111111111111 # instrumentation
movzx rax, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
and rcx, qword ptr [r14 + rbx]
and sil, 11
and cl, 86
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
