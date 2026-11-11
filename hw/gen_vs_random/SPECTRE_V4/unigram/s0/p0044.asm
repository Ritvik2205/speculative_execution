.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor ecx, 66
test dl, sil
bts ax, dx
or edx, -83
and ecx, edx
neg bl
add al, -80 # instrumentation
and rax, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rax], 28
xor dl, sil
cmp dl, bl
mov ebx, 817819255
and rdi, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
and rdi, 0b1111111111111 # instrumentation
add dword ptr [r14 + rdi], 9
and rax, 0b1111111111111 # instrumentation
sbb dx, word ptr [r14 + rax]
xor cl, dil
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rbx]
or rax, 0b1000000000000000000000000000000 # instrumentation
bsr rcx, rax
cmp sil, dil
add dl, -17 # instrumentation
and rcx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rcx], 6
and rbx, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rbx], 7
and dil, dil
and rbx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rbx], 3
adc rbx, 60
test esi, esi
cmovle edx, ebx
and rcx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rcx], dx
and rcx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rcx], rdx
cmovnb cx, bx
cmovo cx, di
and rdx, 0b1111111111111 # instrumentation
cmovnb rdx, qword ptr [r14 + rdx]
inc rax
and rdx, 0b1111111111111 # instrumentation
movsx edi, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovz eax, dword ptr [r14 + rax]
neg rbx
and rdi, 0b1111111111111 # instrumentation
cmovnz ecx, dword ptr [r14 + rdi]
adc rdi, rdx
add cl, 7 # instrumentation
adc dx, 24
btc eax, ebx
sub si, bx
and rdx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdx], edx
cmovnle eax, edx
cmovb rax, rax
and rcx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rcx]
mov bl, al
cmovnp ax, dx
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsr rcx, qword ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock bts dword ptr [r14 + rdi], edx
and rdi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdi], al
inc rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
