.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp dl, cl
and rdx, 0b1111111111111 # instrumentation
cmovns edi, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
sbb ebx, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
mul word ptr [r14 + rax]
add rdi, -94
and rdi, 0b1111111111111 # instrumentation
cmovnb rbx, qword ptr [r14 + rdi]
adc eax, -79
test ebx, -595096626
test dl, bl
and rcx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rcx], al
cmovs rbx, rdi
add cl, 8 # instrumentation
adc al, dil
and rsi, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
btc word ptr [r14 + rsi], si
add al, 118
add bl, -10 # instrumentation
cmovnbe ebx, eax
and rbx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rbx], edx
adc bl, 89
xor dl, dl
or dl, 1 # instrumentation
add dl, -122 # instrumentation
cmovnle ebx, esi
cmp sil, 88
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], rbx
and rax, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
btr dword ptr [r14 + rax], edi
cmovnp si, di
sub bl, al
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], -25
test bx, -1599
and rbx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rsi
and rdx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdx], 123
and rdi, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
btr dword ptr [r14 + rdi], esi
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], dl
and rdi, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
btc dword ptr [r14 + rdi], ebx
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], dx
not bx
and rsi, 0b1111111111111 # instrumentation
cmovz esi, dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovnl rcx, qword ptr [r14 + rax]
adc dl, bl
or al, 96
imul cl
cmovnle edi, eax
cmovnp rdx, rbx
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], dl
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], dil
cmp dl, al
test eax, 1561062795
and rbx, 0b1111111111111 # instrumentation
imul rsi, qword ptr [r14 + rbx]
not dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
