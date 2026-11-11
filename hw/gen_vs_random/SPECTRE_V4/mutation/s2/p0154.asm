.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp dl, al
cmovnle edi, eax
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], -25
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], dl
adc bl, 89
cmp dl, cl
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], dl
and rax, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rax]
imul cl
cmovnp rdx, rbx
add bl, -10 # instrumentation
cmovnbe ebx, eax
and rax, 0b1111111111111 # instrumentation
sbb ebx, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovnl rcx, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdx], 123
and rdi, 0b1111111111111 # instrumentation
cmovnb rbx, qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmovns edi, dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
btr dword ptr [r14 + rdi], esi
not dx
add rdi, -94
and rdi, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
btc dword ptr [r14 + rdi], ebx
add al, 5
and rcx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rcx], al
cmovnp si, di
and rax, 0b1111111111111 # instrumentation
mul word ptr [r14 + rax]
test bx, -1599
test eax, 1561062795
test dl, bl
and rbx, 0b1111111111111 # instrumentation
imul rsi, qword ptr [r14 + rbx]
or dl, 1 # instrumentation
add dl, -122 # instrumentation
cmovnle ebx, esi
sub bl, al
test ebx, -595096626
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], dx
add cl, 8 # instrumentation
adc al, dil
xor dl, dl
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], rbx
adc eax, -1513455903
and rbx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rbx], edx
and rsi, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
btc word ptr [r14 + rsi], si
adc dl, bl
or al, 109
cmp sil, 88
not bx
cmovs rbx, rdi
and rax, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
btr dword ptr [r14 + rax], edi
and rsi, 0b1111111111111 # instrumentation
cmovz esi, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rsi
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
