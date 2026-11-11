.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or eax, -1213318393
or rdi, 43
or dl, dl
xor dx, -43
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], ecx
movsx edi, sil
adc bl, cl
adc sil, dl
and rdi, 0b1111111111111 # instrumentation
cmovnl cx, word ptr [r14 + rdi]
add al, -82
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], cl
sbb cl, -69
xchg rdx, rax
test dil, -26
mov dil, 80
sub cl, 78
add eax, 84
cmp sil, dil
neg sil
xor al, -31
and rax, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rax]
sbb cl, al
sub cl, 18
movsx dx, al
or dl, -26
adc cl, al
add al, -112
adc sil, al
cmp di, -8
cmp al, -116
and rdx, 0b1111111111111 # instrumentation
sbb bl, byte ptr [r14 + rdx]
xor al, dl
sub bl, dl
and rcx, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rcx]
and dil, -23
sub rax, -1881584175
and rdi, 45
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
