.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rbx]
test cl, 62
and rax, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock btc word ptr [r14 + rax], dx
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], -78
test rcx, -613256812
or al, 24
or sil, bl
or dx, 125
and bx, 40
or dl, -31
and al, -103
and rbx, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rax]
xor dil, sil
and di, 99
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
