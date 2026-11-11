.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 43 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovo eax, dword ptr [r14 + rdx]
setz cl
and sil, 52
and rax, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rax]
jnp .bb_0.1
jmp .bb_0.2
.bb_0.1:
jp .bb_0.2
jmp .exit_0
.bb_0.2:
xchg cl, dil
and cl, dil
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], bl
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], bl
adc bl, 102
cmp al, 62
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
