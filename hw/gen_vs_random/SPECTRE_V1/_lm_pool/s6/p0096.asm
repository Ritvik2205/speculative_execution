.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, -36
and rdi, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rdi]
adc sil, dil
sub bl, sil
mov al, bl
test al, -99
cmp cl, sil
jmp .bb_0.1
.bb_0.1:
cmp ecx, 30
lea ax, qword ptr [rcx + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
