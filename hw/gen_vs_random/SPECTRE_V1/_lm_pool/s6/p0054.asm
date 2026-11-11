.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and sil, -103 # instrumentation
cmovbe si, si
jl .bb_0.1
jmp .bb_0.2
.bb_0.1:
js .bb_0.2
jmp .bb_0.3
.bb_0.2:
test dil, -116
and rdx, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rdx]
add cl, -127
js .bb_0.3
jmp .bb_0.4
.bb_0.3:
jnp .bb_0.4
jmp .exit_0
.bb_0.4:
test dl, 113
and dl, dl
sbb cl, 105
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], sil
btc edx, 169
sbb al, -14
and rsi, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rsi]
and di, 29
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
