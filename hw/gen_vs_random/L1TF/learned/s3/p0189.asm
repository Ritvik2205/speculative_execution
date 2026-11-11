.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea ebx, qword ptr [rdx + rdi + 94]
adc cl, -34
sub al, bl
xor cl, dil
sub cl, 86
add sil, -61
and rbx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rbx], cl
or rcx, 93
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
