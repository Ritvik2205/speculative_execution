.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc bl
cmp rax, -1877933118
test bl, -8
and rdi, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rdi]
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rbx]
add dl, sil
and dil, -93
bts cx, 17
and rbx, 0b1111111111111 # instrumentation
sbb rdi, qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
