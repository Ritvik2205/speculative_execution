.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 40 # instrumentation
btc rdx, rdx
jmp .bb_0.1
.bb_0.1:
or cl, al
and rsi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rsi]
and si, 79
jnz .bb_0.2
jmp .exit_0
.bb_0.2:
imul bx, cx, 46
sbb al, bl
and rdi, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
