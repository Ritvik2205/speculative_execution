.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -14 # instrumentation
lea ax, qword ptr [rbx + rdx]
and rdi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdi]
sub al, -75
and rsi, 0b1111111111111 # instrumentation
sbb dil, byte ptr [r14 + rsi]
and dl, 73
jmp .bb_0.1
.bb_0.1:
add sil, cl
jmp .bb_0.2
.bb_0.2:
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], 73
and cx, 127
xor cl, 89
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
