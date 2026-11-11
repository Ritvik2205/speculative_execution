.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rbx]
bts di, 230
sub dl, -12
and rax, 0b1111111111111 # instrumentation
sbb dx, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
sbb cl, byte ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock btc word ptr [r14 + rax], bx
and rcx, 0b1111111111111 # instrumentation
cmp sil, byte ptr [r14 + rcx]
xchg dl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
