.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dil, 40 # instrumentation
btc rdi, rdi
and rax, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rax], 57
lea rdi, qword ptr [rsi]
xor al, cl
jmp .bb_0.1
.bb_0.1:
lea ax, qword ptr [rax]
and rdi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdi], ebx
and rsi, 0b1111111111111 # instrumentation
imul rdi, qword ptr [r14 + rsi], 45
and rsi, 0b1111111111111 # instrumentation
imul rcx, qword ptr [r14 + rsi], 27
movzx eax, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
