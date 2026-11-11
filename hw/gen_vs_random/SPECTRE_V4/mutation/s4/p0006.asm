.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdx], 123
add rdi, -94
imul cl
adc dl, bl
cmovs rbx, rdi
add bl, -10 # instrumentation
cmovnbe ebx, eax
and rdi, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
btc dword ptr [r14 + rdi], ebx
not dx
cmovnp si, di
not bx
test dl, bl
cmovnle edi, eax
and rcx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rcx], al
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], dx
sub bl, al
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], rbx
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], -25
cmp dl, cl
add cl, 8 # instrumentation
adc al, dil
test ebx, 1263899340
and rdx, 0b1111111111111 # instrumentation
cmovns edi, dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmovnb rbx, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
btr dword ptr [r14 + rax], edi
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], dl
and rax, 0b1111111111111 # instrumentation
mul word ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rbx], edx
and rax, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rax]
cmp sil, 88
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], dil
test eax, 1561062795
and rax, 0b1111111111111 # instrumentation
sbb ebx, dword ptr [r14 + rax]
xor dl, dl
and rax, 0b1111111111111 # instrumentation
cmovnl rcx, qword ptr [r14 + rax]
or al, 95
and rbx, 0b1111111111111 # instrumentation
imul rsi, qword ptr [r14 + rbx]
cmp dl, al
and rsi, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
btc word ptr [r14 + rsi], si
adc bl, 89
and rsi, 0b1111111111111 # instrumentation
cmovz esi, dword ptr [r14 + rsi]
adc eax, -1513455903
add al, 118
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], dl
or dl, 1 # instrumentation
add dl, -122 # instrumentation
cmovnle ebx, esi
cmovnp rdx, rbx
test bx, -1599
and rdi, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
btr dword ptr [r14 + rdi], esi
and rbx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
