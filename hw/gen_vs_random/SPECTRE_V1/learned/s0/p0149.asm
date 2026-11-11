.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dil, bl
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
lea dx, qword ptr [rdi]
and dx, 8
jmp .bb_0.2
.bb_0.2:
jnbe .bb_0.3
jmp .exit_0
.bb_0.3:
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], 85
lea ax, qword ptr [rbx + rsi + 85]
dec dl
add al, dil
test eax, 525596342
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
