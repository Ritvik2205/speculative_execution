.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor al, 9
and rax, -1701787862
xor ebx, 65
jmp .bb_0.1
.bb_0.1:
and al, -55
and bl, 68
xor cl, bl
test bl, -9
test dil, -51
or rsi, 19
test rax, -2052112368
jmp .bb_0.2
.bb_0.2:
and rsi, 0b1111111111111 # instrumentation
cmovno rdi, qword ptr [r14 + rsi]
xor bl, sil
or al, 25
and sil, cl
and rax, 1886208862
btc cx, 115
or rdx, -109
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
