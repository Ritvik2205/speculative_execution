.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dil, 86 # instrumentation
and rdi, 0b1111111111111 # instrumentation
sbb sil, byte ptr [r14 + rdi]
sbb bl, -41
mov al, dl
sub dil, cl
and rcx, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rcx]
lea dx, qword ptr [rdi + rbx + 60]
jnle .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rsi], 33
jp .bb_0.2
jmp .exit_0
.bb_0.2:
add cl, dil
sbb bl, al
or bl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
