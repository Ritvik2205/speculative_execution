.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bx, -1599
test ebx, 1263899340
xor dl, dl
add bl, -10 # instrumentation
cmovnbe ebx, eax
cmovnle edi, eax
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], dx
or dl, 1 # instrumentation
add dl, -122 # instrumentation
cmovnle ebx, esi
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], -25
and rcx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rcx], al
and rbx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rsi
add al, 5
cmp sil, 88
not bx
and rax, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
btr dword ptr [r14 + rax], edi
and rdi, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
btr dword ptr [r14 + rdi], esi
cmovs rbx, rdi
imul cl
and rdx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdx], 123
cmovnp rdx, rbx
and rsi, 0b1111111111111 # instrumentation
cmovz esi, dword ptr [r14 + rsi]
test eax, -558243208
cmp dl, al
sub bl, al
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], dl
cmp dl, cl
and rax, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rbx], edx
add cl, 8 # instrumentation
adc al, dil
and rax, 0b1111111111111 # instrumentation
sbb ebx, dword ptr [r14 + rax]
add rdi, 105
adc bl, 89
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], dil
and rax, 0b1111111111111 # instrumentation
mul word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovnl rcx, qword ptr [r14 + rax]
adc eax, -1513455903
not dx
and rdx, 0b1111111111111 # instrumentation
cmovns edi, dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmovnb rbx, qword ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], dl
adc dl, bl
and rdi, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
btc dword ptr [r14 + rdi], ebx
test dl, bl
and rbx, 0b1111111111111 # instrumentation
imul rsi, qword ptr [r14 + rbx]
or al, 95
cmovnp si, di
and rsi, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
btc word ptr [r14 + rsi], si
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
