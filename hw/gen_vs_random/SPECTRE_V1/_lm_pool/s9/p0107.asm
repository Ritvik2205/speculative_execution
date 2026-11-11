.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add sil, 86 # instrumentation
and rsi, 0b1111111111111 # instrumentation
sbb cl, byte ptr [r14 + rsi]
adc al, -92
setz bl
and bl, al
cmp al, 23
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], cl
and rdi, 0b1111111111111 # instrumentation
movsx rcx, word ptr [r14 + rdi]
sub al, 63
sbb al, sil
and rdi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdi], rcx
and cl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
