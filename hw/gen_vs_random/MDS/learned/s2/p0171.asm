.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], bl
and al, dl
and rsi, 70
or rax, -2043376621
btc rbx, rax
xor al, cl
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsr ebx, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
xor bx, word ptr [r14 + rax]
bt esi, 96
xor al, 78
jmp .bb_0.1
.bb_0.1:
btc cx, 104
bts bx, dx
and al, -37
and rdi, 0b1111111111111 # instrumentation
cmovnl edx, dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
and ecx, dword ptr [r14 + rax]
and rax, -1378371328
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], -84
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], 84
cmovz si, di
add di, 70
and rax, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rax], 19
and rsi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rsi], 100
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
