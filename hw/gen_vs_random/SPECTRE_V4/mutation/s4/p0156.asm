.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
imul rsi, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovns edi, dword ptr [r14 + rdx]
or dl, 1 # instrumentation
add dl, -122 # instrumentation
cmovnle ebx, esi
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], dl
and rax, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rax]
imul cl
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], rbx
and rax, 0b1111111111111 # instrumentation
mul word ptr [r14 + rax]
not dx
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], dl
cmovnle edi, eax
adc eax, -1513455903
adc bl, 89
add bl, -10 # instrumentation
cmovnbe ebx, eax
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], -25
cmovnp rdx, rbx
and rdi, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
btc dword ptr [r14 + rdi], ebx
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], dx
and rdx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdx], 123
or al, 109
cmp dl, cl
cmp sil, 88
test eax, -818909344
not bx
cmp dl, al
cmovs rbx, rdi
add cl, 8 # instrumentation
adc al, dil
sub bl, al
and rax, 0b1111111111111 # instrumentation
sbb ebx, dword ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], dil
and rdi, 0b1111111111111 # instrumentation
cmovnb rbx, qword ptr [r14 + rdi]
xor dl, dl
and rax, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
btr dword ptr [r14 + rax], edi
adc dl, bl
test dl, bl
test ebx, -595096626
cmovnp si, di
and rcx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rcx], al
test bx, -1599
and rsi, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
btc word ptr [r14 + rsi], si
and rsi, 0b1111111111111 # instrumentation
cmovz esi, dword ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rbx], edx
and rbx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rsi
and rdi, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
btr dword ptr [r14 + rdi], esi
and rax, 0b1111111111111 # instrumentation
cmovnl rcx, qword ptr [r14 + rax]
add rdi, -94
add al, 118
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
