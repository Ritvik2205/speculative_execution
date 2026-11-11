.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and si, 14
xor dil, -37
jns .bb_0.1
jmp .exit_0
.bb_0.1:
sub al, dl
and rcx, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rcx]
adc bl, 88
lea si, qword ptr [rcx + rdx]
sub sil, -18
sbb esi, ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
