.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rbx]
inc rax
jmp .bb_0.1
.bb_0.1:
jnz .bb_0.2
jmp .bb_0.3
.bb_0.2:
test cl, -120
lea bx, qword ptr [rdi + rdx + 45]
jmp .bb_0.3
.bb_0.3:
and rax, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rax]
or cl, -62
js .bb_0.4
jmp .exit_0
.bb_0.4:
and rax, 0b1111111111111 # instrumentation
dec word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
