.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, 59
lea rax, qword ptr [rbx + rdx + 34714]
and rcx, 0b1111111111111 # instrumentation
cmovnp rdi, qword ptr [r14 + rcx]
test dil, -116
jnp .bb_0.1
jmp .bb_0.2
.bb_0.1:
jns .bb_0.2
jmp .bb_0.3
.bb_0.2:
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], al
jno .bb_0.3
jmp .exit_0
.bb_0.3:
lea rdi, qword ptr [rcx]
cmovnp bx, cx
sub al, -89
and rdx, 0b1111111111111 # instrumentation
imul rsi, qword ptr [r14 + rdx], 85
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
