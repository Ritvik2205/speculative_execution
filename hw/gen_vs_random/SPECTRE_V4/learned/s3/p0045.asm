.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 40
cmp dil, bl
or eax, -1341747033
or al, dil
cmp eax, 64
add bl, al
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
or edx, dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], di
cmovno di, bx
cmp eax, 512128713
and al, 49
and rsi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rsi], edi
adc cl, sil
test sil, -119
cmp dil, al
and al, bl
add dl, al
and al, dl
sub rax, 714283065
cmovno bx, cx
sbb al, -14
neg rdx
and rcx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rcx]
cmp al, -44
adc cl, -86
or ebx, -82
cmp dl, dil
add bl, cl
cmp cl, -105
and rdi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
