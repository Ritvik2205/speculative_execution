.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdx], 123
add bl, -10 # instrumentation
cmovnbe ebx, eax
cmp dl, cl
adc eax, -1513455903
imul cl
cmovnp si, di
add rdi, 105
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], rbx
or dl, 1 # instrumentation
add dl, -122 # instrumentation
cmovnle ebx, esi
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], dl
add al, 5
and rcx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rcx], al
not dx
cmovnp rdx, rbx
and rbx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rsi
sub bl, al
and rax, 0b1111111111111 # instrumentation
mul word ptr [r14 + rax]
test ebx, 1263899340
cmovs rbx, rdi
test eax, -818909344
and rsi, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
btc word ptr [r14 + rsi], si
not bx
cmp dl, al
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], dl
xor dl, dl
add cl, 8 # instrumentation
adc al, dil
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], dx
test dl, bl
or al, 109
adc dl, bl
and rax, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovns edi, dword ptr [r14 + rdx]
cmp sil, 88
and rdi, 0b1111111111111 # instrumentation
cmovnb rbx, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
sbb ebx, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovnl rcx, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
btc dword ptr [r14 + rdi], ebx
test bx, -1599
and rdi, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
btr dword ptr [r14 + rdi], esi
and rbx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rbx], edx
cmovnle edi, eax
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], dil
adc bl, 89
and rax, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
btr dword ptr [r14 + rax], edi
and rsi, 0b1111111111111 # instrumentation
cmovz esi, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
imul rsi, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], -25
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
