.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc di, ax
xor sil, -15
and rdi, 0b1111111111111 # instrumentation
cmovnl eax, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
bts word ptr [r14 + rcx], ax
and sil, 89
and rdx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdx], 2
btc ecx, edx
and dl, 8 # instrumentation
cmovz rax, rdx
and rbx, 0b1111111111111 # instrumentation
cmovno eax, dword ptr [r14 + rbx]
and dl, 113 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnl ecx, dword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rsi], 4
or bl, -62
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], ebx
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], 1238525395
cmovnbe eax, edi
bts rsi, rbx
and rsi, 0b1111111111111 # instrumentation
cmovns rdx, qword ptr [r14 + rsi]
xor cl, sil
bt esi, 3
or rdx, -109
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
