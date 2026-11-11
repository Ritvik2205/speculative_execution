.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or cx, 10
xor dil, bl
test edx, 77
and di, 33
and rdx, 0b1111111111111 # instrumentation
cmovnz rdi, qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], 287872877
and rdi, 0b1111111111111 # instrumentation
cmovnz rbx, qword ptr [r14 + rdi]
test dl, 25
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
cmovnp dx, word ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rdi], 51
test bl, 106
and rsi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovnl rcx, qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmovb cx, word ptr [r14 + rcx]
cmovz rsi, rax
and rsi, 0b1111111111111 # instrumentation
cmovns esi, dword ptr [r14 + rsi]
or bl, 84
and rsi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rsi], si
and sil, cl
and rdx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdx], 2
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
