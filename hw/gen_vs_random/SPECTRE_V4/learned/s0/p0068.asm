.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor dx, 7
add al, -82
and bl, -119
test dil, cl
or cl, bl
add al, -112
or dl, al
add al, -127
cmp eax, -813838876
adc cl, -85
xor ax, 45
add al, 40
xor al, -120
bt bx, cx
cmp cl, 49
sbb al, 70
btc rdi, rax
dec al
sub cl, 18
and dl, 126
add sil, 3
or dl, al
cmovno ecx, edi
sbb dil, cl
adc bl, -58
sub cl, al
and al, 92
and rcx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rcx]
adc dl, cl
test sil, 68
not sil
add dl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
