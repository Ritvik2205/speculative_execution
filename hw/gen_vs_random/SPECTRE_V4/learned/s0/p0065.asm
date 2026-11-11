.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or sil, al
test edi, -1380439873
test cl, -10
test dil, sil
cmp cl, sil
or bl, cl
mov al, dil
or rax, 980130592
movzx ax, cl
and bl, dl
cmp dil, 101
and rbx, 43
add ax, 6694
sbb cl, 12
or rbx, rdx
and rcx, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rcx], 40
and rax, 0b1111111111111 # instrumentation
cmovnl edi, dword ptr [r14 + rax]
adc sil, -2
sub si, -92
and rax, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rax]
cmp al, -122
xor al, al
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 23
and ax, -14374
add al, bl
adc bl, 97
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], al
adc al, -117
and rsi, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rsi]
and cl, -128
cmp ebx, 80
cmp al, -116
and rdi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdi], 56
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
