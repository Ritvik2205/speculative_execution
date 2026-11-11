.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rax]
cmp dl, al
adc bl, 89
and rax, 0b1111111111111 # instrumentation
sbb ebx, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
imul rsi, qword ptr [r14 + rbx]
xor dl, dl
not bx
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], -25
and rdx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdx], 123
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], dl
sub bl, al
cmovnle edi, eax
and rdi, 0b1111111111111 # instrumentation
cmovnb rbx, qword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
btc dword ptr [r14 + rdi], ebx
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], dil
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], rbx
adc dl, bl
and rbx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rsi
add al, 5
cmp dl, cl
and rcx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rcx], al
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], dx
and rsi, 0b1111111111111 # instrumentation
cmovz esi, dword ptr [r14 + rsi]
not dx
and rdx, 0b1111111111111 # instrumentation
cmovns edi, dword ptr [r14 + rdx]
test eax, -558243208
test bx, -1599
add cl, 8 # instrumentation
adc al, dil
test dl, bl
or al, 109
cmp sil, 88
cmovnp rdx, rbx
adc eax, -1513455903
test ebx, 1263899340
and rax, 0b1111111111111 # instrumentation
mul word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovnl rcx, qword ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rbx], edx
cmovnp si, di
and rax, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
btr dword ptr [r14 + rax], edi
imul cl
add rdi, -94
cmovs rbx, rdi
add bl, -10 # instrumentation
cmovnbe ebx, eax
and rsi, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
btc word ptr [r14 + rsi], si
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], dl
and rdi, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
btr dword ptr [r14 + rdi], esi
or dl, 1 # instrumentation
add dl, -122 # instrumentation
cmovnle ebx, esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
