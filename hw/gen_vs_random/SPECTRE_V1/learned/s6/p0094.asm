.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 21 # instrumentation
adc cx, 64
and rax, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rax]
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 1371410782
and rsi, 0b1111111111111 # instrumentation
sub dil, byte ptr [r14 + rsi]
or di, 0b1000000000000000 # instrumentation
bsf bx, di
and rax, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rax]
mov bl, dil
add cl, -127
lea ax, qword ptr [rcx]
and rbx, 0b1111111111111 # instrumentation
sub sil, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
