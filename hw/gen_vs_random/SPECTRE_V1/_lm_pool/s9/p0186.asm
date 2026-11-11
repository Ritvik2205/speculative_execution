.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ax, 2806
imul al
lea ax, qword ptr [rdi + rcx + 61]
and rdi, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rdi]
sub cl, dil
jp .bb_0.1
jmp .exit_0
.bb_0.1:
cmp dil, -58
and rdi, 0b1111111111111 # instrumentation
or ecx, dword ptr [r14 + rdi]
sbb bl, al
adc edi, 69
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
