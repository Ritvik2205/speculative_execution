.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
not bx
and rdi, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
btc dword ptr [r14 + rdi], ebx
and rax, 0b1111111111111 # instrumentation
mul word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovnb rbx, qword ptr [r14 + rdi]
test ebx, -595096626
test bx, -1599
and rbx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rsi
and rsi, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
btc word ptr [r14 + rsi], si
cmovnle edi, eax
and rdi, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
btr dword ptr [r14 + rdi], esi
test dl, bl
add cl, 8 # instrumentation
adc al, dil
sub bl, al
not dx
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], -25
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], dil
and rbx, 0b1111111111111 # instrumentation
imul rsi, qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], rbx
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], dl
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], dl
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], dx
adc bl, 89
and rdx, 0b1111111111111 # instrumentation
cmovns edi, dword ptr [r14 + rdx]
cmovs rbx, rdi
cmovnp rdx, rbx
and rbx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rbx], edx
adc dl, bl
cmp dl, cl
and rdx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdx], 123
add al, 118
and rcx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rcx], al
and rax, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rax]
add rdi, 105
cmp sil, 88
and rsi, 0b1111111111111 # instrumentation
cmovz esi, dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
sbb ebx, dword ptr [r14 + rax]
imul cl
and rax, 0b1111111111111 # instrumentation
cmovnl rcx, qword ptr [r14 + rax]
adc eax, -79
or dl, 1 # instrumentation
add dl, -122 # instrumentation
cmovnle ebx, esi
or al, 109
and rax, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
btr dword ptr [r14 + rax], edi
cmp dl, al
cmovnp si, di
test eax, 1561062795
xor dl, dl
add bl, -10 # instrumentation
cmovnbe ebx, eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
