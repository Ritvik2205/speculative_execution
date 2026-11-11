.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdi], dx
sbb cl, bl
lea rsi, qword ptr [rdx + rax]
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
jl .bb_0.2
jmp .bb_0.3
.bb_0.2:
jp .bb_0.3
jmp .bb_0.4
.bb_0.3:
jnle .bb_0.4
jmp .exit_0
.bb_0.4:
test cl, -120
and rdi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdi], 2
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
