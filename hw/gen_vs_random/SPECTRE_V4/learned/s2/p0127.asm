.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsf rsi, qword ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], dl
xor cl, sil
and cl, -118
or rdx, 1
and dl, 126
xchg ecx, ebx
cmp dl, -82
or dl, sil
adc sil, dl
dec dil
or eax, -1213318393
adc dl, 25
and sil, -84
test sil, cl
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], dl
adc dil, 112
cmp rcx, -121
and dl, 124
dec dl
adc al, cl
and al, 85
mov dl, bl
mov bl, sil
xor cl, dil
cmp rax, 1097504565
add al, -99
adc dil, -48
or sil, dl
sbb dil, dl
or dl, cl
adc esi, 35
and dl, cl
cmp sil, -100
and cl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
