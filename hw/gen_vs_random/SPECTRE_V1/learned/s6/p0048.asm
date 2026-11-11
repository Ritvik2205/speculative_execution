.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdx], -113
add bl, bl
and rdx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rdx]
btc ax, bx
xchg rax, rcx
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rdi]
cmp bl, dil
xor bl, al
sbb bl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
