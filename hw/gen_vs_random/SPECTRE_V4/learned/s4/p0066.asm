.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, -80
or dl, sil
adc eax, -983562873
dec sil
sub al, dl
or rdx, 1
jmp .bb_0.1
.bb_0.1:
sub bl, sil
and rdi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdi], cl
test al, -26
dec dil
sub al, 55
sub cl, sil
cmp cl, -105
cmp al, -78
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
