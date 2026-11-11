.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rbx]
btr ax, 193
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], dil
and rax, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rax]
and dil, dl
or dl, -89
and rsi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rsi], 2
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], -57
test cl, 54
xor cl, sil
or ax, -14271
btc dx, bx
and rsi, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rsi]
or cl, -77
and al, dil
xor dil, -3
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
