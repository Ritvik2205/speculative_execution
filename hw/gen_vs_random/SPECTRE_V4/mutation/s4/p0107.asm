.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], dx
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], -25
or al, 96
cmovnle edi, eax
cmovnp rdx, rbx
add rdi, -94
cmp dl, al
not dx
add al, 118
and rdi, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
btc dword ptr [r14 + rdi], ebx
adc dl, bl
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], rbx
and rsi, 0b1111111111111 # instrumentation
cmovz esi, dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovns edi, dword ptr [r14 + rdx]
cmovs rbx, rdi
and rax, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], dl
and rax, 0b1111111111111 # instrumentation
cmovnl rcx, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
btr dword ptr [r14 + rdi], esi
add cl, 8 # instrumentation
adc al, dil
cmp dl, cl
test eax, 1561062795
or dl, 1 # instrumentation
add dl, -122 # instrumentation
cmovnle ebx, esi
test dl, bl
xor dl, dl
and rax, 0b1111111111111 # instrumentation
mul word ptr [r14 + rax]
adc bl, 89
and rbx, 0b1111111111111 # instrumentation
imul rsi, qword ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], dil
and rcx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rcx], al
and rax, 0b1111111111111 # instrumentation
sbb ebx, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
btr dword ptr [r14 + rax], edi
and rsi, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
btc word ptr [r14 + rsi], si
cmp sil, 88
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], dl
add bl, -10 # instrumentation
cmovnbe ebx, eax
and rdx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdx], 123
test bx, -1599
and rbx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rbx], edx
imul cl
and rbx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rsi
sub bl, al
and rdi, 0b1111111111111 # instrumentation
cmovnb rbx, qword ptr [r14 + rdi]
cmovnp si, di
test ebx, -595096626
not bx
adc eax, -1513455903
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
