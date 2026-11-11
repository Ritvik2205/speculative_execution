.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor al, 89
and rbx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rbx]
bts di, 83
sub al, -97
and rax, 0b1111111111111 # instrumentation
sbb dx, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 5
xor cl, bl
and rax, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock btc word ptr [r14 + rax], bx
and sil, sil
and di, 25
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
