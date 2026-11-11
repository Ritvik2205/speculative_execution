.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ax, 23118
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
add cl, -127
lea eax, qword ptr [rbx]
and rcx, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rcx], -44
and dil, -93
movsx ax, cl
lea rbx, qword ptr [rdi]
and rax, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rax], -125
and bl, -43
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
