.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rcx]
test dil, -80
and rbx, 0b1111111111111 # instrumentation
and rdi, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
not byte ptr [r14 + rax]
or si, 94
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -232610484
and rdx, 0b1111111111111 # instrumentation
cmovz edx, dword ptr [r14 + rdx]
cmovnp bx, di
or cl, -36
test edi, -1252846009
xor ax, -5889
and sil, -83 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovns dx, word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], sil
and cx, cx
and bl, -58 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnl ebx, dword ptr [r14 + rbx]
or cx, 0b1000000000000000 # instrumentation
bsr dx, cx
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], ecx
cmovz eax, esi
and rdx, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
bts dword ptr [r14 + rdx], edx
xor sil, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
