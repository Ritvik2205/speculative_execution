.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmovz si, word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rbx], 18
and sil, -9
and rcx, 0b1111111111111 # instrumentation
cmovnl ebx, dword ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], -106
bt dx, 228
cmovp esi, ecx
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], eax
or bl, -54
bts ax, 22
and rbx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rbx], 7
bt cx, ax
and rdx, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rdx]
btc eax, 40
bt di, 52
test dil, bl
btc rsi, 80
and rax, 0b1111111111111 # instrumentation
and ebx, dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 55
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
