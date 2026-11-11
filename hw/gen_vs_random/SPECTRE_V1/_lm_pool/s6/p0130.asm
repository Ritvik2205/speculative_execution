.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dil, -116
or eax, 1276549484
add dil, 72
and cl, bl
test cl, -120
and rax, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rax]
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
mov cl, bl
lea cx, qword ptr [rdx + rbx + 8]
and cl, -57
jl .bb_0.2
jmp .exit_0
.bb_0.2:
or cx, 0b1000000000000000 # instrumentation
bsf dx, cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
