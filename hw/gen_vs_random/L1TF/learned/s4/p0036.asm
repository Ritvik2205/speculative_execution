.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 21 # instrumentation
adc bx, 77
lea bx, qword ptr [rcx]
jmp .bb_0.1
.bb_0.1:
cmp rbx, 87
jmp .bb_0.2
.bb_0.2:
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], 93
and rdi, 0b1111111111111 # instrumentation
cmp al, byte ptr [r14 + rdi]
jmp .bb_0.3
.bb_0.3:
lea ax, qword ptr [rcx]
and edx, 85
and al, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
