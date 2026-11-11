.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rbx], 92
sbb al, dl
add dl, 47
test al, 84
mov bl, al
and rdi, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rsi]
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
add al, 18
add al, cl
or rsi, -119
cmovs dx, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
