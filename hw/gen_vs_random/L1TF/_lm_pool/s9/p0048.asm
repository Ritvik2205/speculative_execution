.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 65 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovl esi, dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
imul ebx, dword ptr [r14 + rcx], -16
and ax, 37
xor al, bl
and rcx, 0b1111111111111 # instrumentation
add rsi, qword ptr [r14 + rcx]
or rax, 1362710293
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
add eax, dword ptr [r14 + rdi]
jp .bb_0.2
jmp .exit_0
.bb_0.2:
test cl, cl
and rsi, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rsi]
xor di, 27
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
