.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
adc eax, -79
and rax, 0b1111111111111 # instrumentation
mul word ptr [r14 + rax]
cmovnle edi, eax
cmp sil, 88
and rdx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdx], 123
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], rbx
and rdi, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
btc dword ptr [r14 + rdi], ebx
test eax, 1880179600
cmovnp rdx, rbx
cmp dl, cl
cmovs rbx, rdi
or al, 96
and rax, 0b1111111111111 # instrumentation
sbb ebx, dword ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rbx], edx
adc bl, 89
adc dl, bl
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], -25
test dl, bl
and rsi, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
btc word ptr [r14 + rsi], si
and rax, 0b1111111111111 # instrumentation
cmovnl rcx, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rsi
and rax, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
btr dword ptr [r14 + rax], edi
xor dl, dl
not bx
and rdi, 0b1111111111111 # instrumentation
cmovnb rbx, qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
cmovz esi, dword ptr [r14 + rsi]
imul cl
sub bl, al
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], dil
and rdi, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
btr dword ptr [r14 + rdi], esi
add rdi, 105
add cl, 8 # instrumentation
adc al, dil
and rcx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rcx], al
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], dl
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], dx
test bx, -1599
and rdx, 0b1111111111111 # instrumentation
cmovns edi, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rax]
add al, 5
not dx
and rbx, 0b1111111111111 # instrumentation
imul rsi, qword ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], dl
or dl, 1 # instrumentation
add dl, -122 # instrumentation
cmovnle ebx, esi
cmovnp si, di
cmp dl, al
add bl, -10 # instrumentation
cmovnbe ebx, eax
test ebx, 1263899340
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
