.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
mul word ptr [r14 + rax]
add al, 118
and rax, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
btr dword ptr [r14 + rax], edi
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], dx
sub bl, al
and rbx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rbx], edx
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], rbx
imul cl
and rax, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rax]
test eax, 1561062795
and rdi, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
btc dword ptr [r14 + rdi], ebx
and rdi, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
btr dword ptr [r14 + rdi], esi
and rdx, 0b1111111111111 # instrumentation
cmovns edi, dword ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], dil
add rdi, -94
and rax, 0b1111111111111 # instrumentation
cmovnl rcx, qword ptr [r14 + rax]
or al, 109
and rcx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rcx], al
test bx, -1599
or dl, 1 # instrumentation
add dl, -122 # instrumentation
cmovnle ebx, esi
adc bl, 89
add cl, 8 # instrumentation
adc al, dil
cmovnp rdx, rbx
and rax, 0b1111111111111 # instrumentation
sbb ebx, dword ptr [r14 + rax]
xor dl, dl
not bx
not dx
and rsi, 0b1111111111111 # instrumentation
cmovz esi, dword ptr [r14 + rsi]
add bl, -10 # instrumentation
cmovnbe ebx, eax
and rdx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdx], 123
and rbx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rsi
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], dl
cmp sil, 88
test ebx, -595096626
adc eax, -79
cmovnp si, di
cmovnle edi, eax
and rdi, 0b1111111111111 # instrumentation
cmovnb rbx, qword ptr [r14 + rdi]
test dl, bl
adc dl, bl
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], dl
and rsi, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
btc word ptr [r14 + rsi], si
cmovs rbx, rdi
and rbx, 0b1111111111111 # instrumentation
imul rsi, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], -25
cmp dl, al
cmp dl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
