.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], -25
cmovnle edi, eax
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], dil
and rdi, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
btr dword ptr [r14 + rdi], esi
test dl, bl
and rax, 0b1111111111111 # instrumentation
cmovnl rcx, qword ptr [r14 + rax]
cmovs rbx, rdi
cmovnp si, di
and rsi, 0b1111111111111 # instrumentation
cmovz esi, dword ptr [r14 + rsi]
not dx
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], dl
add bl, -10 # instrumentation
cmovnbe ebx, eax
adc bl, 89
and rax, 0b1111111111111 # instrumentation
mul word ptr [r14 + rax]
not bx
or al, 109
adc eax, -1513455903
adc dl, bl
and rdx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdx], 123
add al, 5
and rax, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
btr dword ptr [r14 + rax], edi
sub bl, al
cmp sil, 88
cmovnp rdx, rbx
cmp dl, cl
test eax, -558243208
test bx, -1599
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], dx
and rdx, 0b1111111111111 # instrumentation
cmovns edi, dword ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rbx], edx
cmp dl, al
or dl, 1 # instrumentation
add dl, -122 # instrumentation
cmovnle ebx, esi
test ebx, -595096626
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], rbx
and rcx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rcx], al
and rbx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rsi
and rax, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
btc dword ptr [r14 + rdi], ebx
add cl, 8 # instrumentation
adc al, dil
and rsi, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
btc word ptr [r14 + rsi], si
add rdi, -94
and rbx, 0b1111111111111 # instrumentation
imul rsi, qword ptr [r14 + rbx]
xor dl, dl
imul cl
and rax, 0b1111111111111 # instrumentation
sbb ebx, dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovnb rbx, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
