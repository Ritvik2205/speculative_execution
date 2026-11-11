.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rsi], dx
and rdx, 0b1111111111111 # instrumentation
adc eax, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
movzx rdi, word ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdi], dx
btr esi, 227
xor bl, 27
and rbx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rbx]
bswap ebx
mov dl, -124
and rsi, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
neg word ptr [r14 + rax]
test dl, -125
mov sil, dil
imul bl
and rcx, 0b1111111111111 # instrumentation
sbb dx, word ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], sil
and rcx, 0b1111111111111 # instrumentation
adc sil, byte ptr [r14 + rcx]
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
cmp dil, al
and cx, -117
adc sil, al
cmovno ecx, esi
sbb rdx, 6
and rsi, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rsi], ecx
cmp cl, -105
add ecx, edx
sub rax, rcx
imul bl
adc ecx, 55
and rsi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rsi], 2
and rax, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rdx], 1
or si, 85
add cl, -33 # instrumentation
not dl
and rax, 0b1111111111111 # instrumentation
cmovnle rax, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], 111
and rcx, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rcx]
xor cx, -80
and rbx, 0b1111111111111 # instrumentation
cmovle ax, word ptr [r14 + rbx]
mov cl, cl
and rax, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rax]
xor rbx, rax
test ebx, 85
and rdx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rdx]
adc bl, dl
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], 38
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
