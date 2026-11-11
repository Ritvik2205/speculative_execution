.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 21 # instrumentation
adc dx, 8
adc al, al
cmp rdi, 90
and rdi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdi]
jnp .bb_0.1
jmp .bb_0.2
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
test al, -82
jmp .bb_0.3
.bb_0.3:
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
