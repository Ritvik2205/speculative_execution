.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rdi]
test dl, 84
or al, dl
and rcx, 0b1111111111111 # instrumentation
adc sil, byte ptr [r14 + rcx]
and al, dl
xor cl, sil
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
inc dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
