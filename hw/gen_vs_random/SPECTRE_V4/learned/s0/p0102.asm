.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or eax, -612395655
add al, -4
or dl, dil
sbb al, 57
or cl, al
test dil, -58
cmp cl, al
and rcx, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rcx]
cmp rdx, -49
sub al, -128
and rdi, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rdi]
add ax, 6414
and dl, -11
xor bl, sil
and ax, -6897
sub dl, bl
adc bl, 35
sub al, 127
mov bl, -69
cmp bl, sil
cmp al, -44
sub al, 69
adc dil, -15
sub eax, -90064733
xor dil, sil
and dl, al
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], sil
jmp .bb_0.1
.bb_0.1:
test bl, dl
xor ax, 30500
cmp al, 109
or esi, 32
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
