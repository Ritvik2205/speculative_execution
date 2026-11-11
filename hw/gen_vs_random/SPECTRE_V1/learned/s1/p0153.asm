.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dil, cl
and rcx, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rcx]
adc dil, 45
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
mov cl, dl
xor al, 54
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
