.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -127
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 2
and rsi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rsi]
jnp .bb_0.1
jmp .bb_0.2
.bb_0.1:
test dl, -36
jmp .bb_0.2
.bb_0.2:
add bl, 89 # instrumentation
sbb sil, al
and cl, al
jp .bb_0.3
jmp .exit_0
.bb_0.3:
adc sil, -77
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], sil
test dl, 113
and rdx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
