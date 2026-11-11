.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 5
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dil
btc ax, si
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 194454182
and rsi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rsi], 5
and rdi, 0b1111111111111 # instrumentation
cmovz rsi, qword ptr [r14 + rdi]
or dl, sil
cmovnbe ax, si
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], di
and rbx, 0b1111111111111 # instrumentation
cmovnb edi, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], esi
or rcx, 54
and rax, 0b1111111111111 # instrumentation
cmovnp di, word ptr [r14 + rax]
and cl, 79
and rax, 0b1111111111111 # instrumentation
cmovnbe rbx, qword ptr [r14 + rax]
cmovnle rax, rsi
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], 31
bts di, 37
xor edi, ecx
cmovns eax, eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
