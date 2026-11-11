.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
dec si
add ebx, 2
sub sil, -99
add si, -5
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rdi]
xor al, al
add dl, 120 # instrumentation
adc dl, 37
bts eax, 232
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000000000000000 # instrumentation
bsf bx, word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
sbb rcx, qword ptr [r14 + rcx]
add cl, sil
or dil, al
mov cl, cl
adc bl, sil
cmp cl, al
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 46
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
