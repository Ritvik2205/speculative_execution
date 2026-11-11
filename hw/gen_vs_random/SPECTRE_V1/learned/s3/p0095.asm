.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], sil
and rsi, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
imul ebx, dword ptr [r14 + rdi]
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and cl, al
and rbx, 0b1111111111111 # instrumentation
sub dil, byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rdi]
or cl, dl
or edi, 0b1000000000000000000000000000000 # instrumentation
bsf ebx, edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
