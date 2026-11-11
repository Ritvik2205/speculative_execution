.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rax], -126
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], -82
setz dl
test sil, 97
sub dl, 71
sub sil, -18
loopne .bb_0.1
jmp .exit_0
.bb_0.1:
sub rdx, 5
add al, -47
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], bl
sub bx, 54
or eax, 1276549484
sbb al, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
