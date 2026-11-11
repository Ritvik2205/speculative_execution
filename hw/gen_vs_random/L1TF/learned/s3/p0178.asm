.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov cl, dil
and rcx, 0b1111111111111 # instrumentation
sbb bx, word ptr [r14 + rcx]
and ax, 7954
test rax, rbx
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rsi]
inc bl
sbb cl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
