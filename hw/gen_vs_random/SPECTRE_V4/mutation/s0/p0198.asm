.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
not bx
or dl, 1 # instrumentation
add dl, -122 # instrumentation
cmovnle ebx, esi
add bl, -10 # instrumentation
cmovnbe ebx, eax
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], dl
and rdi, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
btc dword ptr [r14 + rdi], ebx
add rdi, 105
and rdx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdx], 123
and rdi, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
btr dword ptr [r14 + rdi], esi
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], rbx
and rdx, 0b1111111111111 # instrumentation
cmovns edi, dword ptr [r14 + rdx]
adc dl, bl
imul cl
sub bl, al
xor dl, dl
cmovs rbx, rdi
test dl, bl
and rax, 0b1111111111111 # instrumentation
sbb ebx, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovnl rcx, qword ptr [r14 + rax]
or al, 96
and rax, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rsi
adc bl, 89
and rsi, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
btc word ptr [r14 + rsi], si
test ebx, 1263899340
add al, 118
and rax, 0b1111111111111 # instrumentation
mul word ptr [r14 + rax]
test bx, -1599
and rsi, 0b1111111111111 # instrumentation
cmovz esi, dword ptr [r14 + rsi]
cmp dl, cl
cmovnle edi, eax
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], dx
and rdi, 0b1111111111111 # instrumentation
cmovnb rbx, qword ptr [r14 + rdi]
not dx
and rcx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rcx], al
cmp sil, 88
test eax, 1561062795
adc eax, -1513455903
cmovnp rdx, rbx
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], dl
and rbx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rbx], edx
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], dil
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], -25
and rbx, 0b1111111111111 # instrumentation
imul rsi, qword ptr [r14 + rbx]
cmp dl, al
and rax, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
btr dword ptr [r14 + rax], edi
add cl, 8 # instrumentation
adc al, dil
cmovnp si, di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
