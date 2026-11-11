.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or edx, edi
and rbx, 0b1111111111111 # instrumentation
cmovb esi, dword ptr [r14 + rbx]
add dil, cl
and rcx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rcx], 91
and rax, 0b1111111111111 # instrumentation
cmp sil, byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
mov rdi, qword ptr [r14 + rcx]
js .bb_0.1
jmp .exit_0
.bb_0.1:
lea ax, qword ptr [rdi + rdx + 43]
and cl, 86
mov al, cl
adc bl, -76
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
