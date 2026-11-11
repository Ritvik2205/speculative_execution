.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
mov rbx, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rax]
sub dl, bl
sbb sil, dl
and rdi, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rdi]
adc dil, 84
and rcx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rcx], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
