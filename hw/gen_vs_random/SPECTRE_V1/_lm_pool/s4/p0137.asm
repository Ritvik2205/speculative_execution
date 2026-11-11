.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov al, sil
adc sil, -77
lea rax, qword ptr [rbx]
and sil, cl
cmp al, dil
and dil, dl
sub al, dl
and rdi, 0b1111111111111 # instrumentation
cmp sil, byte ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rax]
sbb cl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
