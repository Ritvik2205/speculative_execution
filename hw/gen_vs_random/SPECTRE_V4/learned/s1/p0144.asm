.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or sil, cl
add dl, -82
or eax, 1470564945
xor ax, 13332
dec dil
adc al, bl
lea eax, qword ptr [rdx]
inc ebx
sub dl, al
and ax, 16313
xor dl, -66
adc bl, -58
add dl, sil
test al, -26
xor ax, 13329
sub al, dl
cmp bl, dl
and rax, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rax]
xor ax, 15671
or al, al
or bl, al
sub rax, 1914398062
mov al, dl
cmp sil, 113
cmp rdx, -49
and dl, -11
or dl, -26
sbb bl, sil
and ax, -197
or al, -16
adc dil, sil
and rdi, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rdi], -49
add dil, -84
add dil, bl
cmp al, -44
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
