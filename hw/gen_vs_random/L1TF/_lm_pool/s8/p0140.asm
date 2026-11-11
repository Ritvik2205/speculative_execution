.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 40 # instrumentation
btc rbx, rbx
or cl, cl
add dl, -70
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
and rsi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rsi], rdx
test cx, 21
test dil, -126
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], -1923530546
and rbx, 0b1111111111111 # instrumentation
add dil, byte ptr [r14 + rbx]
and ax, 37
sbb al, -50
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
