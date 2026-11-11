.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, 61
test eax, -251558852
and al, -124
btc rcx, rdi
or ax, -13633
adc cl, -86
adc dil, cl
or dl, dil
adc bl, al
cmp dil, 53
or eax, -1779536330
sbb cl, al
mov al, -71
and rax, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rax]
cmp al, sil
movsx si, bl
and rdi, 0b1111111111111 # instrumentation
cmp dl, byte ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rdi], 56
and al, 59
bts ax, 159
sub bl, -89
cmp al, -53
xor eax, 365940537
xor dl, -66
adc al, dil
and di, -34
sub dl, al
cmp esi, 123
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
