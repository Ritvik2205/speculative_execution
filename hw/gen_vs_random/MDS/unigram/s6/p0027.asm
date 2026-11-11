.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 107 # instrumentation
cmovbe ax, si
and rdi, 0b1111111111111 # instrumentation
cmovz di, word ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rdx]
xor dil, -70
bts cx, 14
test dx, 16353
and cl, 8 # instrumentation
cmovnl rbx, rdx
and dl, 97 # instrumentation
cmovnp cx, ax
and rdx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdx], 94
test rax, rbx
and rbx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rbx]
cmovnbe ebx, ebx
bt bx, cx
or ecx, 82
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], dil
and rdi, 0b1111111111111 # instrumentation
cmovnb dx, word ptr [r14 + rdi]
cmovno rsi, rax
or di, 0b1000000000000000 # instrumentation
bsr di, di
and rax, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rax]
cmovnp dx, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
