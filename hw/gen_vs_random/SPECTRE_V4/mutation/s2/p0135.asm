.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rsi
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], dl
and rbx, 0b1111111111111 # instrumentation
imul rsi, qword ptr [r14 + rbx]
xor dl, dl
and rcx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rcx], al
and rdi, 0b1111111111111 # instrumentation
cmovnb rbx, qword ptr [r14 + rdi]
cmp sil, 88
sub bl, al
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], -25
test ebx, 1263899340
and rax, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rax]
adc bl, 89
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], dl
test eax, 1561062795
cmp dl, al
or al, 96
and rsi, 0b1111111111111 # instrumentation
cmovz esi, dword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
btc dword ptr [r14 + rdi], ebx
adc eax, -79
cmovs rbx, rdi
and rbx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rbx], edx
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], rbx
add al, 5
cmp dl, cl
imul cl
test dl, bl
not bx
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], dx
adc dl, bl
test bx, -1599
and rdx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdx], 123
add cl, 8 # instrumentation
adc al, dil
and rsi, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
btc word ptr [r14 + rsi], si
and rax, 0b1111111111111 # instrumentation
sbb ebx, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
btr dword ptr [r14 + rax], edi
cmovnp rdx, rbx
add rdi, 105
cmovnp si, di
and rdi, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
btr dword ptr [r14 + rdi], esi
and rdx, 0b1111111111111 # instrumentation
cmovns edi, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovnl rcx, qword ptr [r14 + rax]
cmovnle edi, eax
or dl, 1 # instrumentation
add dl, -122 # instrumentation
cmovnle ebx, esi
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], dil
not dx
add bl, -10 # instrumentation
cmovnbe ebx, eax
and rax, 0b1111111111111 # instrumentation
mul word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
