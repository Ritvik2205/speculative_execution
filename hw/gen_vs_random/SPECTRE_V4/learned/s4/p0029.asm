.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cx, -117
sub bl, -98
adc al, sil
test ax, -18054
or dil, -16
cmp bl, dl
test dil, -5
or dl, al
or al, -47
bt eax, edi
xor cl, bl
cmp al, 105
or al, dl
sub bl, dil
xor cl, al
sbb bl, dl
and rcx, 0b1111111111111 # instrumentation
mov rsi, qword ptr [r14 + rcx]
sbb bl, cl
cmp al, cl
sbb dl, sil
and dl, sil
sub dl, -16
sbb dil, cl
cmp dl, al
bswap esi
cmp dl, cl
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
