.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, -71
cmovs rbx, rdi
and rcx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rcx], al
and rsi, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
btc word ptr [r14 + rsi], si
not bx
xor dl, dl
cmp sil, 88
adc bl, 89
adc dl, bl
test ebx, -595096626
test dl, bl
cmovnle edi, eax
cmovnp si, di
imul cl
sub bl, al
and rdx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdx], 123
add rdi, -94
add cl, 8 # instrumentation
adc al, dil
and rax, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
btr dword ptr [r14 + rax], edi
test eax, -544019457
and rax, 0b1111111111111 # instrumentation
sbb ebx, dword ptr [r14 + rax]
cmovnp rdx, rbx
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], -25
and rdi, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
btr dword ptr [r14 + rdi], esi
add bl, -10 # instrumentation
cmovnbe ebx, eax
and rax, 0b1111111111111 # instrumentation
mul word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovnb rbx, qword ptr [r14 + rdi]
test bx, -1599
and rbx, 0b1111111111111 # instrumentation
imul rsi, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovnl rcx, qword ptr [r14 + rax]
or dl, 1 # instrumentation
add dl, -122 # instrumentation
cmovnle ebx, esi
and rsi, 0b1111111111111 # instrumentation
cmovz esi, dword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
btc dword ptr [r14 + rdi], ebx
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], dl
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], dil
not dx
cmp dl, al
and rdx, 0b1111111111111 # instrumentation
cmovns edi, dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], dx
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], dl
adc eax, -79
add al, 5
and rbx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rsi
cmp dl, cl
and rbx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rbx], edx
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
