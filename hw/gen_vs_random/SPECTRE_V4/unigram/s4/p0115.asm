.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
movzx di, byte ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdi], esi
cmp dil, sil
and rax, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rax], 7
mov eax, -1056201206
and rdx, 0b1111111111111 # instrumentation
cmovl rsi, qword ptr [r14 + rdx]
bt eax, 103
mov bl, dil
and rdx, 0b1111111111111 # instrumentation
and edx, dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
add rsi, qword ptr [r14 + rdi]
adc cx, 36
add bl, 87 # instrumentation
cmovz ecx, ebx
and rax, 0b1111111111111 # instrumentation
and ecx, dword ptr [r14 + rax]
cmp cx, 0
and cl, dl
and rdx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdx], 1
or eax, edx
xchg ecx, ebx
and rcx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rcx], 80
sub dl, 107
and rax, 0b1111111111111 # instrumentation
and di, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
movzx rax, byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rbx]
movsx dx, dl
adc bl, dil
adc sil, cl
adc rdx, rax
and rcx, 0b1111111111111 # instrumentation
cmovnb rsi, qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rsi]
adc al, dl
and rax, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rax], 44
sbb edx, 93
imul cx
cmp bl, al
add edx, eax
bswap edi
and rdx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], bx
mov dil, 95
and rbx, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rcx]
xor rdx, rcx
and rcx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rcx], edx
imul rcx, rdx, 8
and rbx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rbx], 72
btr rax, 187
add al, -60 # instrumentation
cmovle rax, rdx
test ebx, 88
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
