.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
and rcx, 0b1111111111111 # instrumentation
xor dx, word ptr [r14 + rcx]
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
sbb dil, 56
and rdx, 0b1111111111111 # instrumentation
cmovno esi, dword ptr [r14 + rdx]
sub sil, -99
xor cl, al
and ax, 26813
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
