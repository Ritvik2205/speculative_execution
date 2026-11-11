.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dil, -116
jle .bb_0.1
jmp .bb_0.2
.bb_0.1:
jns .bb_0.2
jmp .bb_0.3
.bb_0.2:
lea rdi, qword ptr [rbx + rdx + 22]
and rsi, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rdi]
jl .bb_0.3
jmp .exit_0
.bb_0.3:
test dil, -116
sbb bl, cl
lea rax, qword ptr [rcx]
cmovnle rcx, rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
