.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], 3
add dl, -1
and rax, 0b1111111111111 # instrumentation
cmovbe rdx, qword ptr [r14 + rax]
add sil, -61
and rdi, 0b1111111111111 # instrumentation
adc sil, byte ptr [r14 + rdi]
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
lea rdi, qword ptr [rbx + rsi]
sub al, -97
and ax, 37
and dl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
