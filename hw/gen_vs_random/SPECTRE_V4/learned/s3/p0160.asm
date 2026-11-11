.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor al, al
and rdi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdi]
or cl, al
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], sil
cmp rax, -47
xor dil, cl
and cl, al
adc bl, -58
sbb al, -43
mov cl, al
and rsi, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rsi], 4
cmp rdi, 28
test dl, cl
sbb al, 57
imul bx, di
xchg dx, si
and dil, -120
or rax, -387680856
adc cl, -85
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], 82
and rdx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rdx]
cmp dil, 101
sbb di, -105
add rax, 1049076260
sub edi, 63
adc al, sil
and rdx, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rdx]
xchg esi, ecx
movzx bx, cl
or ebx, -82
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
