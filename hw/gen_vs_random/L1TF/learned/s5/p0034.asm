.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea dx, qword ptr [rdx]
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 0
sub sil, -99
and rdx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdx], 93
and rsi, 0b1111111111111 # instrumentation
imul rax, qword ptr [r14 + rsi], -90
sub al, -97
xor bl, dil
add dil, 88
and rdx, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rdx]
add cl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
