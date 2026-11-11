.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -31 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rsi]
sbb esi, 40
and rdx, 0b1111111111111 # instrumentation
movsx rax, byte ptr [r14 + rdx]
adc dl, sil
cwde
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
lea si, qword ptr [rdx + rsi + 21492]
jnp .bb_0.3
jmp .exit_0
.bb_0.3:
and rbx, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rdi]
sub dil, 87
sub dl, -34
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
