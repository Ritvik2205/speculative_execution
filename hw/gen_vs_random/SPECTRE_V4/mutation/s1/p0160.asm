.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, bl
and rax, 0b1111111111111 # instrumentation
mul word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovns edi, dword ptr [r14 + rdx]
not dx
add al, 5
cmp dl, cl
and rbx, 0b1111111111111 # instrumentation
imul rsi, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdx], 123
and rsi, 0b1111111111111 # instrumentation
cmovz esi, dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovnl rcx, qword ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rcx], al
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], dl
and rbx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rbx], edx
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], dx
adc bl, 89
and rax, 0b1111111111111 # instrumentation
sbb ebx, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rax]
adc dl, bl
cmp dl, al
and rax, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
btr dword ptr [r14 + rax], edi
add cl, 8 # instrumentation
adc al, dil
not bx
and rsi, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
btc word ptr [r14 + rsi], si
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], dl
add bl, -10 # instrumentation
cmovnbe ebx, eax
cmovnle edi, eax
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], dil
xor dl, dl
and rbx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rsi
cmovnp si, di
and rdi, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
btr dword ptr [r14 + rdi], esi
cmp sil, 88
add rdi, -94
or al, 95
test ebx, -595096626
sub bl, al
and rdi, 0b1111111111111 # instrumentation
cmovnb rbx, qword ptr [r14 + rdi]
cmovs rbx, rdi
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], rbx
test bx, -1599
and rdi, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
btc dword ptr [r14 + rdi], ebx
adc eax, -79
or dl, 1 # instrumentation
add dl, -122 # instrumentation
cmovnle ebx, esi
test eax, -818909344
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], -25
imul cl
cmovnp rdx, rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
