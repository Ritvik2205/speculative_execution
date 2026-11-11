.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bx, 50
xor al, bl
and si, -121
or rax, 1461812833
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rsi]
bt si, dx
test cl, cl
or cl, sil
or cl, dil
and rax, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], cl
or cl, 119
test dl, 27
and rax, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rax], 1
xor al, cl
and sil, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
