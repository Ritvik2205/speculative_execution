.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
setnp byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rdx], 63
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], ecx
and rax, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rax]
lea rax, qword ptr [rbx]
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 1 # instrumentation
and edx, dword ptr [r14 + rax] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
imul esi, dword ptr [r14 + rdx], 51
cmovnbe rdi, rbx
and rdi, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rdi]
lea edx, qword ptr [rbx + rsi + 65]
and rsi, 0b1111111111111 # instrumentation
cmovo cx, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
setbe byte ptr [r14 + rax]
cbw
lea ebx, qword ptr [rsi + rbx + 65254]
and rsi, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rsi], 0
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
