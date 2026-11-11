.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea cx, qword ptr [rcx]
sbb dl, al
and rcx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rcx]
adc sil, -77
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
add al, -47
jnle .bb_0.2
jmp .exit_0
.bb_0.2:
sbb eax, 1830317432
sub dl, -48
sbb cl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
