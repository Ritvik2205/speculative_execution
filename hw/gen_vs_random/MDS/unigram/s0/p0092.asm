.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cl, dl
and rax, 0b1111111111111 # instrumentation
cmovnl rcx, qword ptr [r14 + rax]
cmovnp dx, di
and rax, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bt dword ptr [r14 + rax], ecx
cmovp rax, rbx
and rax, 0b1111111111111 # instrumentation
cmovb eax, dword ptr [r14 + rax]
btc rcx, rbx
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], esi
xor cl, 122
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], edi
and al, -105 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnp rcx, qword ptr [r14 + rdi]
and dl, -107 # instrumentation
cmovz rdx, rcx
or rcx, 31
and rbx, 0b1111111111111 # instrumentation
and esi, dword ptr [r14 + rbx]
bts bx, si
cmovo esi, eax
and rbx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
xor cx, word ptr [r14 + rax]
btc rsi, 81
btc ax, 37
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
