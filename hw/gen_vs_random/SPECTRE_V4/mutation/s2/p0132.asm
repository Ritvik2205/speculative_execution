.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovs rbx, rdi
and rax, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rbx], edx
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], dl
test ebx, -595096626
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], rbx
imul cl
not dx
and rax, 0b1111111111111 # instrumentation
mul word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovnb rbx, qword ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], dil
and rax, 0b1111111111111 # instrumentation
cmovnl rcx, qword ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], dl
and rdx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdx], 123
test eax, -558243208
cmovnp rdx, rbx
cmp sil, 88
and rbx, 0b1111111111111 # instrumentation
imul rsi, qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmovz esi, dword ptr [r14 + rsi]
xor dl, dl
not bx
and rdx, 0b1111111111111 # instrumentation
cmovns edi, dword ptr [r14 + rdx]
test bx, -1599
and rdi, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
btr dword ptr [r14 + rdi], esi
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], dx
or al, -71
test dl, bl
and rdi, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
btc dword ptr [r14 + rdi], ebx
and rcx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rcx], al
add al, 118
add rdi, 105
and rax, 0b1111111111111 # instrumentation
sbb ebx, dword ptr [r14 + rax]
cmovnle edi, eax
and rsi, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
btc word ptr [r14 + rsi], si
adc bl, 89
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], -25
add bl, -10 # instrumentation
cmovnbe ebx, eax
add cl, 8 # instrumentation
adc al, dil
and rax, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
btr dword ptr [r14 + rax], edi
cmovnp si, di
cmp dl, al
sub bl, al
and rbx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rsi
adc dl, bl
adc eax, -79
cmp dl, cl
or dl, 1 # instrumentation
add dl, -122 # instrumentation
cmovnle ebx, esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
