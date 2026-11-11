.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea si, qword ptr [rsi]
add cl, -127
sub al, bl
btr si, cx
and rax, 2134929425
sbb al, -107
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
or rdi, 68
jmp .bb_0.2
.bb_0.2:
and rbx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rbx]
and bl, 124
cmp al, 13
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 38
lea rdi, qword ptr [rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
