.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cl, -24
cmp edx, 44
and rcx, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rcx]
sbb cl, 105
and rbx, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rbx]
jnle .bb_0.1
jmp .bb_0.2
.bb_0.1:
jp .bb_0.2
jmp .exit_0
.bb_0.2:
lea cx, qword ptr [rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
