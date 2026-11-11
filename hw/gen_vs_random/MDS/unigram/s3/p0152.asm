.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 5
btc rax, rbx
test dx, 16353
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], 1324040999
xor dil, 124
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], 93
and rax, 0b1111111111111 # instrumentation
cmovns rcx, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bts dword ptr [r14 + rbx], ecx
and al, 84 # instrumentation
cmovbe ax, si
test rbx, rsi
jmp .bb_0.1
.bb_0.1:
xor sil, cl
and al, -82 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnl bx, word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], al
and rdx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], -2966447
and bl, 33 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rdi]
cmovl rsi, rax
cmovz rsi, rdx
and rax, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bt dword ptr [r14 + rax], esi
or si, 94
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
