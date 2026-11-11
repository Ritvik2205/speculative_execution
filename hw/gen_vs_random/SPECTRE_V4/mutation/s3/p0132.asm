.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], dl
or al, 109
cmp sil, 88
cmovnle edi, eax
adc dl, bl
test dl, bl
and rbx, 0b1111111111111 # instrumentation
imul rsi, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rsi
cmovnp rdx, rbx
add bl, -10 # instrumentation
cmovnbe ebx, eax
add al, 5
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], dx
test eax, 1561062795
cmp dl, cl
and rdi, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
btc dword ptr [r14 + rdi], ebx
adc eax, -1513455903
imul cl
and rax, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
btr dword ptr [r14 + rax], edi
and rdx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdx], 123
and rax, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rax]
not bx
adc bl, 89
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], rbx
and rbx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rbx], edx
test ebx, -595096626
and rax, 0b1111111111111 # instrumentation
mul word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmovz esi, dword ptr [r14 + rsi]
xor dl, dl
and rax, 0b1111111111111 # instrumentation
sbb ebx, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovns edi, dword ptr [r14 + rdx]
test bx, -1599
and rdi, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
btr dword ptr [r14 + rdi], esi
and rdi, 0b1111111111111 # instrumentation
cmovnb rbx, qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
btc word ptr [r14 + rsi], si
add cl, 8 # instrumentation
adc al, dil
cmovnp si, di
sub bl, al
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], dil
not dx
cmp dl, al
and rax, 0b1111111111111 # instrumentation
cmovnl rcx, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], -25
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], dl
add rdi, 105
and rcx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rcx], al
cmovs rbx, rdi
or dl, 1 # instrumentation
add dl, -122 # instrumentation
cmovnle ebx, esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
