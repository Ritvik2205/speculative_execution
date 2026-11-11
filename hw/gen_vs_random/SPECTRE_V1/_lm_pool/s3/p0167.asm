.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rax]
sbb dl, sil
jp .bb_0.1
jmp .exit_0
.bb_0.1:
bt rdx, 34
lea esi, qword ptr [rdi]
or esi, 0b1000000000000000000000000000000 # instrumentation
bsf eax, esi
sbb cl, dil
sbb esi, 1
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
