.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor bx, 83
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdi], -119
and rdx, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rdx]
dec ax
jmp .bb_0.2
.bb_0.2:
test cl, 61
and dl, 73
and rsi, 0b1111111111111 # instrumentation
and dx, word ptr [r14 + rsi]
add bl, 68
and rdi, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmovl rsi, qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
