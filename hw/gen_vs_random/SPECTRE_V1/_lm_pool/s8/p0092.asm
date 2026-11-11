.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea dx, qword ptr [rdx]
add dil, -75
not eax
jp .bb_0.1
jmp .exit_0
.bb_0.1:
add dil, -75
sbb bl, cl
and rdx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rdx]
inc eax
sbb al, 118
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 4
and cl, -57
and rcx, 0b1111111111111 # instrumentation
sbb bx, word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
