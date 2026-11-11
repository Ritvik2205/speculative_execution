.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movsx ebx, dx
lea edi, qword ptr [rsi]
jnle .bb_0.1
jmp .bb_0.2
.bb_0.1:
xor al, bl
and rdi, 0b1111111111111 # instrumentation
sub sil, byte ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
adc sil, byte ptr [r14 + rdx]
add cl, cl
and rbx, 0b1111111111111 # instrumentation
imul rdx, qword ptr [r14 + rbx], 13
sbb dl, al
jnbe .bb_0.2
jmp .exit_0
.bb_0.2:
and sil, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
