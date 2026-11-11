.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
btc word ptr [r14 + rsi], si
or al, -71
and rbx, 0b1111111111111 # instrumentation
imul rsi, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
mul word ptr [r14 + rax]
adc eax, -79
sub bl, al
and rax, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
btr dword ptr [r14 + rax], edi
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], rbx
adc bl, 89
and rbx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rsi
cmovnle edi, eax
or dl, 1 # instrumentation
add dl, -122 # instrumentation
cmovnle ebx, esi
cmp dl, al
and rdi, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
btc dword ptr [r14 + rdi], ebx
adc dl, bl
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], dl
and rdx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdx], 123
cmovs rbx, rdi
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], dx
and rdi, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
btr dword ptr [r14 + rdi], esi
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], dl
and rax, 0b1111111111111 # instrumentation
cmovnl rcx, qword ptr [r14 + rax]
test eax, -558243208
cmovnp si, di
add bl, -10 # instrumentation
cmovnbe ebx, eax
test dl, bl
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], dil
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], -25
and rcx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rcx], al
add cl, 8 # instrumentation
adc al, dil
and rdi, 0b1111111111111 # instrumentation
cmovnb rbx, qword ptr [r14 + rdi]
test bx, -1599
and rsi, 0b1111111111111 # instrumentation
cmovz esi, dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
sbb ebx, dword ptr [r14 + rax]
not dx
and rdx, 0b1111111111111 # instrumentation
cmovns edi, dword ptr [r14 + rdx]
add rdi, 105
xor dl, dl
cmp sil, 88
not bx
add al, 118
and rbx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rbx], edx
cmovnp rdx, rbx
and rax, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rax]
test ebx, 1263899340
cmp dl, cl
imul cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
