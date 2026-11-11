.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dil, 21 # instrumentation
adc di, 17
and rdi, 0b1111111111111 # instrumentation
mov rsi, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
sub edi, dword ptr [r14 + rax]
cmp si, -11
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
sbb bl, dl
adc bl, dil
and al, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
