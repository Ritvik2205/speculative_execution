.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 66
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 4
lea dx, qword ptr [rcx]
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
lea si, qword ptr [rbx + rdx + 34]
jmp .bb_0.3
.bb_0.3:
adc dl, -12
sbb al, -23
and al, -68
add al, 117
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
