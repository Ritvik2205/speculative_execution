.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or cl, -104
adc edx, -86
sbb dil, al
test edi, -2098143765
cmp dil, sil
test sil, cl
or rbx, 69
and rsi, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rsi]
sbb cl, 12
and rax, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rax]
sbb dil, 7
xor cl, al
adc dil, -15
cmp dil, al
adc bl, cl
test sil, 68
jmp .bb_0.1
.bb_0.1:
test cl, 78
sbb bl, 121
or dl, dl
add cl, cl
xor dl, -123
and rdi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdi]
and bl, dl
and dl, cl
sbb dil, 67
mov al, dl
cmp rax, -1070057082
or rax, -387680856
add bl, al
mov bl, 106
cmp cl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
