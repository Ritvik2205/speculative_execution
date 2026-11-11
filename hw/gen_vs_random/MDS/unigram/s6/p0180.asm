.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovb cx, cx
and rcx, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rcx]
and cl, -127 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], cl
and rdx, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock bts word ptr [r14 + rdx], dx
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], -60
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 751805012
and rcx, 0b1111111111111 # instrumentation
cmovle si, word ptr [r14 + rcx]
bt edx, esi
and bl, -58 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnl ebx, dword ptr [r14 + rbx]
cmovnb rbx, rcx
or di, 0b1000000000000000 # instrumentation
bsr di, di
test cl, -86
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 77
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], cl
and rsi, 0b1111111111111 # instrumentation
cmovnp rdi, qword ptr [r14 + rsi]
btc eax, 40
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], dil
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
xor ax, -6793
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
