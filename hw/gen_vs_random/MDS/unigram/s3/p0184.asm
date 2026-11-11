.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmovnp edi, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], cl
and dl, dil
and rsi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rsi], -59
xor rbx, 89
test rsi, 39
and rsi, 0b1111111111111 # instrumentation
cmovnp rsi, qword ptr [r14 + rsi]
test cl, cl
or edi, -88
and rdx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
btc rdx, rdx
and rcx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rcx], 0
cmovle rax, rdx
btc bx, ax
cmovnl si, di
xor dil, -3
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], 92
and rax, 0b1111111111111 # instrumentation
and rdi, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovnb rbx, qword ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
