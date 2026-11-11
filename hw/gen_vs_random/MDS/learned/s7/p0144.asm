.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, -119
xor dil, -5
xor rax, -270810088
xor bl, dl
xor rax, -404206377
and al, 87
and rax, 0b1111111111111 # instrumentation
cmovp rsi, qword ptr [r14 + rax]
and dil, 125
or dl, dil
xor si, 91
xor dx, 7
test bl, dl
and rax, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rax]
test esi, 425331143
and rcx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
