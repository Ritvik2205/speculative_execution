.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovz ax, cx
test edx, 38
and rbx, 0b1111111111111 # instrumentation
cmovb edi, dword ptr [r14 + rbx]
cmovnl edx, eax
and rax, 0b1111111111111 # instrumentation
xor ax, word ptr [r14 + rax]
bts ebx, edi
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], al
and bl, -72 # instrumentation
and rcx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rcx], 56
cmovo rcx, rsi
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], al
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], ebx
and dl, 124 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnbe eax, dword ptr [r14 + rdi]
cmovnp cx, si
and rsi, 0b1111111111111 # instrumentation
not dword ptr [r14 + rsi]
and al, -3 # instrumentation
cmovnb ax, bx
and rdi, 0b1111111111111 # instrumentation
cmovnbe rbx, qword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmovz ebx, dword ptr [r14 + rcx]
and al, -64 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovz ax, word ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rax], 88
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
