.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ecx, 17
xor si, bx
test al, -24
and ecx, 71
add dl, 109
cmp rsi, 22
and bl, -119
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 1308203108
and rbx, 0b1111111111111 # instrumentation
cmovnp rax, qword ptr [r14 + rbx]
sub dl, bl
sbb bl, dil
adc dil, bl
cmp al, -116
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
