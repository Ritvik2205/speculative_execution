.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea ax, qword ptr [rax]
add cl, -127
add al, -13
setz dil
and rdx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rdx]
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
lea rdi, qword ptr [rcx + rdx + 4]
xor cl, bl
and rdi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdi], cx
sbb al, -114
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
