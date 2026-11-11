.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sbb sil, -78
sub rdi, rbx
add bl, 28 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovo rbx, qword ptr [r14 + rdx]
sbb bl, al
test bl, -8
adc cl, -19
lea dx, qword ptr [rsi + rdi]
sbb edi, 55
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
movsx bx, sil
lea rdi, qword ptr [rax + rcx + 60]
lea rdx, qword ptr [rax + rdi]
lea cx, qword ptr [rsi]
setbe al
and rsi, 0b1111111111111 # instrumentation
cmovle dx, word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
