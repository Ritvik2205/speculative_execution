.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
add byte ptr [r14 + rax], 55
test dl, 113
and rax, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rax], sil
sub bl, cl
sub al, cl
jnp .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rbx], al
jns .bb_0.2
jmp .bb_0.3
.bb_0.2:
jns .bb_0.3
jmp .exit_0
.bb_0.3:
test al, -99
and bl, -43
test cl, -120
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
