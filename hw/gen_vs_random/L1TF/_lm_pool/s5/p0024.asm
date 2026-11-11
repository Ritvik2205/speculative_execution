.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
lea rsi, qword ptr [rbx + rdx]
and rdx, 0b1111111111111 # instrumentation
cmovle rax, qword ptr [r14 + rdx]
cmovns rsi, rdi
or dil, -113
and rdi, 92
jmp .bb_0.1
.bb_0.1:
not bx
jmp .bb_0.2
.bb_0.2:
cmovnp rax, rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
