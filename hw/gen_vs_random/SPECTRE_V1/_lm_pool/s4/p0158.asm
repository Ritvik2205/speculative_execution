.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, 59
add al, al
sub cl, bl
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
mov bl, dil
xor sil, bl
xchg cl, al
xchg bl, dil
xor bl, dil
bswap rdx
and rax, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
