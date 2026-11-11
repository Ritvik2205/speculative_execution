.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and edi, 23
test dil, bl
cmovnbe di, ax
and cl, bl
and cl, -85 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnb rcx, qword ptr [r14 + rcx]
not al
cmovnb ebx, edx
and rsi, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rsi], 5
bt rdi, rbx
jmp .bb_0.1
.bb_0.1:
or bx, 0b1000000000000000 # instrumentation
bsf bx, bx
btc rsi, rax
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], cl
btc bx, 58
and rcx, 0b1111111111111 # instrumentation
cmovnl edi, dword ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdi], 89
and rsi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rsi], 57
and sil, -9
bt eax, 37
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], -20
and rsi, 0b1111111111111 # instrumentation
cmovp edx, dword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
