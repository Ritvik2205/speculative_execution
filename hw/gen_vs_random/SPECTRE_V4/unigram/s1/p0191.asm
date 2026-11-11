.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
sbb cx, word ptr [r14 + rsi]
cmp sil, dil
movzx edx, ax
add cl, 54 # instrumentation
and rcx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rcx]
add dl, 76 # instrumentation
sbb edi, edx
movzx edi, dl
mov ebx, 51969593
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 40
btr ecx, esi
sbb cx, 106
not dl
and rbx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rbx], cx
bts bx, 42
xor cl, -15
and rdx, 0b1111111111111 # instrumentation
imul rax, qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rcx], -2
and rcx, 0b1111111111111 # instrumentation
cmovnp ebx, dword ptr [r14 + rcx]
add bl, -2 # instrumentation
cmovs rcx, rdi
and rdx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdx], 7
or cx, -74
bt edx, 73
and rdx, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rdx]
dec dl
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], di
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], al
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
test rax, rdx
and rax, 0b1111111111111 # instrumentation
neg word ptr [r14 + rax]
adc cl, cl
mov sil, cl
btc eax, 62
xor al, 48
adc dl, bl
cmovb rbx, rbx
adc dil, 38
cmp bl, dl
cmovnz rcx, rcx
and rcx, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rcx]
test rax, -1395313845
and rax, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rax]
xor cl, 13
and dil, -61
mov sil, al
cmp sil, -100
mov cl, bl
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000 # instrumentation
and byte ptr [r14 + rax], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmp al, byte ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock btc word ptr [r14 + rsi], bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
