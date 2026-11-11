.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
cmovz cx, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], sil
add dl, 1 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnz rcx, qword ptr [r14 + rcx]
neg rax
mov ebx, edx
add bl, 71 # instrumentation
adc ax, di
and rcx, 0b1111111111111 # instrumentation
cmovnp ax, word ptr [r14 + rcx]
adc dil, dl
sub ax, -1393
and rbx, 0b1111111111111 # instrumentation
mov rdx, qword ptr [r14 + rbx]
add al, -35 # instrumentation
mov cl, al
and rdx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdx], 38
or rcx, rdx
and rbx, 0b1111111111111 # instrumentation
cmovl esi, dword ptr [r14 + rbx]
or al, cl
add al, 105 # instrumentation
cmovl esi, ecx
btr edx, ecx
and rdx, 0b1111111111111 # instrumentation
cmovnp eax, dword ptr [r14 + rdx]
test edx, 1479885278
and rbx, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
sub dil, byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovnb esi, dword ptr [r14 + rax]
movsx esi, ax
and rcx, 0b1111111111111 # instrumentation
adc dx, word ptr [r14 + rcx]
mul ax
and rdx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdx], 2
and rcx, 0b1111111111111 # instrumentation
cmovnb ax, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovnp rdi, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovle di, word ptr [r14 + rax]
cmovnb edi, ecx
imul edx
btc rdi, 87
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 6
xor sil, 90
mov eax, -1056201206
or al, -19
mov di, 63
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rsi]
cmovnle bx, ax
and rbx, 0b1111111111111 # instrumentation
add ebx, dword ptr [r14 + rbx]
xor al, -120
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdx], al
add bl, dl
cmovs ax, di
bts edx, esi
and rbx, 0b1111111111111 # instrumentation
cmovs rcx, qword ptr [r14 + rbx]
cmovns bx, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
