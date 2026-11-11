.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -21 # instrumentation
adc rdi, 5
test eax, 1880179600
mov dl, dl
and rdx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rdx]
cmovnbe cx, bx
and rdi, 0b1111111111111 # instrumentation
cmovnle dx, word ptr [r14 + rdi]
neg al
cmovl rdx, rbx
xor rbx, rax
and rcx, 0b1111111111111 # instrumentation
and rax, qword ptr [r14 + rcx]
xor cl, -101
movzx rax, bl
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], si
add dl, -124 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovle ebx, dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rdi]
or edx, 0b1000000000000000000000000000000 # instrumentation
bsr ecx, edx
add rax, 100
cmp al, 19
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], 37
inc edx
or bl, sil
and dl, cl
and rbx, 0b1111111111111 # instrumentation
cmovb eax, dword ptr [r14 + rbx]
and dl, dil
sbb cl, -104
mul edx
and rcx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rcx], 67
and rsi, 0b1111111111111 # instrumentation
not qword ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rsi], 3
and al, dil
adc dl, bl
neg ebx
imul rdi, rsi, 57
dec rax
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], rbx
add ebx, ecx
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], rdi
and rbx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rbx], 61
sbb dl, bl
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 5
mul rbx
and rcx, 0b1111111111111 # instrumentation
movsx esi, word ptr [r14 + rcx]
or edi, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv edi
add rcx, rsi
and rax, 0b1111111111111 # instrumentation
cmovnb ecx, dword ptr [r14 + rax]
or cl, dl
add dl, 118 # instrumentation
and rbx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rbx]
bts rsi, rsi
and rcx, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rcx]
movzx edx, sil
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr rax, qword ptr [r14 + rdx]
xor ax, 25554
add bx, 110
and cx, 17
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
