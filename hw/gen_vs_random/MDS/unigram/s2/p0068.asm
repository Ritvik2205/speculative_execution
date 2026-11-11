.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bt cx, 22
and rdi, 0b1111111111111 # instrumentation
cmovz dx, word ptr [r14 + rdi]
btr di, si
and rdx, 0b1111111111111 # instrumentation
cmovbe ax, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
bts dword ptr [r14 + rsi], ebx
and rdx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdx], edx
and rsi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rsi], -59
and rdx, 0b1111111111111 # instrumentation
cmovnbe esi, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
and cx, word ptr [r14 + rsi]
or sil, -49
or dil, dil
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], -2
and al, -3 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnl edx, dword ptr [r14 + rcx]
test rsi, rdx
bt rcx, 46
xor al, al
bts bx, dx
cmovno rsi, rcx
and dl, 48 # instrumentation
cmovz rax, rsi
and rcx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rcx], 0
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
