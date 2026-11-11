.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdx]
xor cl, dl
jnbe .bb_0.1
jmp .bb_0.2
.bb_0.1:
jnp .bb_0.2
jmp .exit_0
.bb_0.2:
and rdi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdi], rax
adc bl, -73
and rbx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rbx], cl
test rax, -1638758413
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
