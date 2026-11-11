.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, dl
inc al
and rbx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rbx]
sbb al, -14
mov dil, al
lea rcx, qword ptr [rdx + rax + 94]
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and al, 33
and sil, 11
and rsi, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
