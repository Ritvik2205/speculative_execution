.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnle edi, eax
xor dl, dl
test eax, -558243208
not bx
and rdi, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
btr dword ptr [r14 + rdi], esi
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], dil
and rsi, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
btc word ptr [r14 + rsi], si
add bl, -10 # instrumentation
cmovnbe ebx, eax
cmp dl, al
cmp sil, 88
cmp dl, cl
and rbx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rbx], edx
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], dx
and rbx, 0b1111111111111 # instrumentation
imul rsi, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
btr dword ptr [r14 + rax], edi
test bx, -1599
test dl, bl
add al, 5
adc bl, 89
and rdx, 0b1111111111111 # instrumentation
cmovns edi, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovnl rcx, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], rbx
adc eax, -1513455903
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], -25
and rsi, 0b1111111111111 # instrumentation
cmovz esi, dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], dl
adc dl, bl
and rdx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdx], 123
and rcx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rcx], al
add cl, 8 # instrumentation
adc al, dil
or al, 109
cmovnp si, di
sub bl, al
cmovs rbx, rdi
cmovnp rdx, rbx
and rdi, 0b1111111111111 # instrumentation
cmovnb rbx, qword ptr [r14 + rdi]
or dl, 1 # instrumentation
add dl, -122 # instrumentation
cmovnle ebx, esi
and rdi, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
btc dword ptr [r14 + rdi], ebx
and rax, 0b1111111111111 # instrumentation
mul word ptr [r14 + rax]
imul cl
and rax, 0b1111111111111 # instrumentation
sbb ebx, dword ptr [r14 + rax]
not dx
test ebx, 1263899340
and rbx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rsi
add rdi, -94
and rax, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
