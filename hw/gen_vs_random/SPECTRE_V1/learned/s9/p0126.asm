.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], cl
jle .bb_0.1
jmp .exit_0
.bb_0.1:
lea si, qword ptr [rdx + rbx + 92]
sbb ebx, 13
and rdx, 0b1111111111111 # instrumentation
sub bx, word ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
