.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov al, bl
jp .bb_0.1
jmp .exit_0
.bb_0.1:
sbb al, -107
and rcx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rcx], bl
lea cx, qword ptr [rax + rdx + 45]
sbb eax, 125
cmp cl, 57
and rbx, 0b1111111111111 # instrumentation
cmovnb di, word ptr [r14 + rbx]
dec dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
