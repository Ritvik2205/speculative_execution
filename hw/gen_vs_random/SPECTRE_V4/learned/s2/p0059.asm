.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor di, 19
test edx, -38580719
or dl, -26
or dl, dil
or cx, 23
adc cl, -85
and dl, -104
sub ax, dx
adc sil, al
xor rdi, -72
test sil, 16
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], dl
lea edi, qword ptr [rsi]
sub al, 54
cmp al, -106
xor ax, -17712
sub bl, 66
and ax, 16313
and al, -1
movzx ax, dil
xor al, cl
and al, dl
cmp cl, -80
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
