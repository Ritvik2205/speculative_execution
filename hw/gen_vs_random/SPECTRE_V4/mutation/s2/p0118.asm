.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor dl, dl
and rbx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rbx], edx
cmp dl, al
and rsi, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
btc word ptr [r14 + rsi], si
cmovnp rdx, rbx
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], dl
adc bl, 89
imul cl
add bl, -10 # instrumentation
cmovnbe ebx, eax
and rax, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
btr dword ptr [r14 + rax], edi
cmp sil, 88
and rdx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdx], 123
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], dx
and rdi, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
btr dword ptr [r14 + rdi], esi
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], rbx
and rbx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rsi
add cl, 8 # instrumentation
adc al, dil
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], dil
and rsi, 0b1111111111111 # instrumentation
cmovz esi, dword ptr [r14 + rsi]
cmovnle edi, eax
and rbx, 0b1111111111111 # instrumentation
imul rsi, qword ptr [r14 + rbx]
sub bl, al
cmp dl, cl
and rcx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rcx], al
and rdi, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
btc dword ptr [r14 + rdi], ebx
test ebx, -595096626
and rdi, 0b1111111111111 # instrumentation
cmovnb rbx, qword ptr [r14 + rdi]
not dx
test dl, bl
and rax, 0b1111111111111 # instrumentation
mul word ptr [r14 + rax]
test eax, -818909344
test bx, -1599
and rax, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rax]
adc dl, bl
add al, 5
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], -25
not bx
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], dl
cmovnp si, di
and rax, 0b1111111111111 # instrumentation
sbb ebx, dword ptr [r14 + rax]
or dl, 1 # instrumentation
add dl, -122 # instrumentation
cmovnle ebx, esi
and rax, 0b1111111111111 # instrumentation
cmovnl rcx, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovns edi, dword ptr [r14 + rdx]
adc eax, -1513455903
add rdi, -94
or al, -71
cmovs rbx, rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
