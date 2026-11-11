.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rdx]
dec bl
add cl, cl
and rdi, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rdi]
adc al, dil
lea rax, qword ptr [rbx]
jp .bb_0.1
jmp .exit_0
.bb_0.1:
sub al, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
