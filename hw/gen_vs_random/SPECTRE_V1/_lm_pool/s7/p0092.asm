.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc al
cmp rbx, 72
mov bl, cl
lea rsi, qword ptr [rbx + rdx]
and rdi, 0b1111111111111 # instrumentation
or ecx, dword ptr [r14 + rdi]
xor ebx, 53
adc si, 6
xor esi, 106
sbb edx, 105
and rcx, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
