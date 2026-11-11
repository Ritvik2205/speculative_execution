.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rdi, qword ptr [rdi]
jl .bb_0.1
jmp .exit_0
.bb_0.1:
and dl, -111
and rdx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rdx]
sbb cl, 105
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], 46
or ax, -114
dec al
and rdi, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
