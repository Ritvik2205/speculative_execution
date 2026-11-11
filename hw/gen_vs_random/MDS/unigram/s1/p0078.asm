.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, -114
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 47
and rsi, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
bts dword ptr [r14 + rsi], edi
cmovnb rax, rax
xor al, 9
test dil, -80
cmovb ax, bx
and cl, sil
bts rdx, 200
and rsi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rsi], 57
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], -884248205
and bl, al
and rax, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rax], 21
and rcx, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmovl esi, dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovnp bx, word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovz rbx, qword ptr [r14 + rdx]
and cl, 79
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
