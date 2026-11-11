.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test edi, -1252846009
and rsi, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovnz rsi, qword ptr [r14 + rcx]
cmovnl bx, dx
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], -60
and dx, dx
xor cl, 98
and rdi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdi], 86
and rax, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rax], 0
and rax, 0b1111111111111 # instrumentation
or rdi, qword ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock btc word ptr [r14 + rdx], di
jmp .bb_0.1
.bb_0.1:
or rbx, 0b1000000000000000000000000000000 # instrumentation
bsr rsi, rbx
or rax, -1523798580
and rdi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdi], 10
and rdx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdx], 17
cmovno rax, rdx
and rsi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rsi], rbx
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], cl
and bl, 16 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rdx]
or al, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
