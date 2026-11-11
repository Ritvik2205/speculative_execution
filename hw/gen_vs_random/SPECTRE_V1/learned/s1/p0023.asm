.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xchg esi, ecx
cmp bl, dil
sbb bl, 79
xor dil, -37
jp .bb_0.1
jmp .exit_0
.bb_0.1:
sub dil, al
mov al, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
