.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp rdx, -19
and rdi, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rbx], dil
or ax, 19104
lea ax, qword ptr [rdi + rdx + 89]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
