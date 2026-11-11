.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock btr word ptr [r14 + rdi], bx
btc bx, bx
cmovz ecx, edx
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 3
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], 62
cmovbe eax, ecx
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], edi
and rcx, rdx
or sil, -49
and bl, 16 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdi], 6
cmovnp rdi, rcx
and rsi, 67
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], cx
cmovs bx, si
xor al, sil
and rsi, 0b1111111111111 # instrumentation
cmovl rsi, qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
