.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], dil
add al, 5
test bx, -1599
or dl, 1 # instrumentation
add dl, -122 # instrumentation
cmovnle ebx, esi
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], dx
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], dl
and rbx, 0b1111111111111 # instrumentation
imul rsi, qword ptr [r14 + rbx]
not dx
and rax, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
btr dword ptr [r14 + rax], edi
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], dl
not bx
and rdi, 0b1111111111111 # instrumentation
cmovnb rbx, qword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], -25
and rsi, 0b1111111111111 # instrumentation
cmovz esi, dword ptr [r14 + rsi]
test dl, bl
add rdi, 105
cmp dl, al
test ebx, -595096626
cmp sil, 88
test eax, -818909344
and rdi, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
btc dword ptr [r14 + rdi], ebx
and rbx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rbx], edx
adc eax, -79
and rdx, 0b1111111111111 # instrumentation
cmovns edi, dword ptr [r14 + rdx]
adc dl, bl
cmovnp rdx, rbx
or al, 109
and rbx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rsi
cmovs rbx, rdi
and rax, 0b1111111111111 # instrumentation
mul word ptr [r14 + rax]
xor dl, dl
adc bl, 89
cmp dl, cl
and rcx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rcx], al
cmovnp si, di
cmovnle edi, eax
imul cl
add bl, -10 # instrumentation
cmovnbe ebx, eax
and rdi, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
btr dword ptr [r14 + rdi], esi
and rdx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdx], 123
add cl, 8 # instrumentation
adc al, dil
and rsi, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
btc word ptr [r14 + rsi], si
and rax, 0b1111111111111 # instrumentation
sbb ebx, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], rbx
and rax, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovnl rcx, qword ptr [r14 + rax]
sub bl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
