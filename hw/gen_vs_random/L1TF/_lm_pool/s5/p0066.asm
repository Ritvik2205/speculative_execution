.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
and rax, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
xor ax, word ptr [r14 + rcx]
or al, -5
jmp .bb_0.1
.bb_0.1:
adc bx, bx
and rax, 1994547909
jmp .bb_0.2
.bb_0.2:
test dl, 84
sbb bl, bl
sbb bl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
