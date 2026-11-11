.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rbx], 5
adc dl, 48
and rcx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rcx], 91
jnp .bb_0.1
jmp .bb_0.2
.bb_0.1:
adc sil, -77
jb .bb_0.2
jmp .bb_0.3
.bb_0.2:
sbb bl, cl
jnz .bb_0.3
jmp .exit_0
.bb_0.3:
sub bl, dil
xor cl, dil
sbb bl, dl
or ecx, 55
and rdi, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
