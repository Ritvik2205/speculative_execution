.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, sil
cmp esi, 123
sub dl, 107
cmp al, dl
test bl, 110
or cl, al
cmovno ecx, eax
or al, sil
or dl, -26
sub dil, cl
and cl, 126
and rbx, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rcx]
cmp al, -78
sbb al, bl
add dl, dil
adc cl, -86
add ecx, 99
xor ax, 13329
mov bl, cl
and rsi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rsi], 7
adc sil, bl
add ax, -9762
and rax, 0b1111111111111 # instrumentation
cmovnp rdi, qword ptr [r14 + rax]
cmp cl, 49
add al, -1
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
