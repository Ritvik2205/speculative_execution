.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 80 # instrumentation
mov cl, bl
cmovz si, di
xchg sil, dil
and rdi, 0b1111111111111 # instrumentation
add edi, dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdi], sil
and rsi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rcx], rcx
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 7
and rcx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rcx], -2
cmovnz ecx, eax
imul ax, di
and ax, 27239
and rbx, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rbx], -112
and rcx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rcx], -59
and rcx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rcx], 85
xchg esi, edx
or cl, cl
xor rax, -224991767
and rdi, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
not word ptr [r14 + rbx]
and cx, di
adc rbx, rdx
and rdi, 0b1111111111111 # instrumentation
cmovnbe bx, word ptr [r14 + rdi]
movzx ecx, cl
and rdx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdx], ax
movzx edx, cl
adc bl, dl
not sil
or cx, 1 # instrumentation
and dx, cx # instrumentation
shr dx, 1 # instrumentation
div cx
add bl, -101 # instrumentation
cmovz ecx, ecx
and rsi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rsi], sil
not cl
and rbx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rbx], edi
and rcx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rcx], 79
btr bx, dx
sub cl, al
and rcx, 0b1111111111111 # instrumentation
imul ecx, dword ptr [r14 + rcx], -48
and ax, -23308
and rax, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rbx], rdx
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], cx
and rdx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rdx]
test dl, dl
and rdi, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rdi], edi
and al, al
sbb rsi, 117
and rbx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rbx], 101
dec rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
