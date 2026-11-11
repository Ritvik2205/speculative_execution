.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp rax, 900122030
sub dil, sil
and bl, 124
add dil, bl
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], cl
and rbx, 0b1111111111111 # instrumentation
cmovb dx, word ptr [r14 + rbx]
and cl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
