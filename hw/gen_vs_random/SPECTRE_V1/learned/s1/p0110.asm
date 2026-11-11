.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 112 # instrumentation
adc dl, al
mov bl, sil
sub dl, dil
and rax, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rax]
lea edx, qword ptr [rdi]
test rbx, rdi
test al, 34
test edx, 16
and eax, 933895314
and rdi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdi], sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
