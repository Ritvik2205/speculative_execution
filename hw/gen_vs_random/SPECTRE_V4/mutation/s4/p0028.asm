.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test eax, -818909344
sub bl, al
adc eax, -1513455903
and rdx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdx], 123
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], rbx
xor dl, dl
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], dil
cmovnp si, di
and rdi, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
btc dword ptr [r14 + rdi], ebx
test ebx, -595096626
adc dl, bl
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], dl
and rax, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rax]
cmovnp rdx, rbx
adc bl, 89
and rcx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rcx], al
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], dx
and rdx, 0b1111111111111 # instrumentation
cmovns edi, dword ptr [r14 + rdx]
not bx
test bx, -1599
add al, 5
imul cl
and rax, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
btr dword ptr [r14 + rax], edi
or al, -71
cmp sil, 88
test dl, bl
and rdi, 0b1111111111111 # instrumentation
cmovnb rbx, qword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rsi
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], -25
and rsi, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
btc word ptr [r14 + rsi], si
and rbx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rbx], edx
cmovs rbx, rdi
or dl, 1 # instrumentation
add dl, -122 # instrumentation
cmovnle ebx, esi
and rax, 0b1111111111111 # instrumentation
sbb ebx, dword ptr [r14 + rax]
add rdi, -94
add cl, 8 # instrumentation
adc al, dil
and rax, 0b1111111111111 # instrumentation
mul word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], dl
cmp dl, al
cmovnle edi, eax
add bl, -10 # instrumentation
cmovnbe ebx, eax
and rdi, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
btr dword ptr [r14 + rdi], esi
cmp dl, cl
and rsi, 0b1111111111111 # instrumentation
cmovz esi, dword ptr [r14 + rsi]
not dx
and rbx, 0b1111111111111 # instrumentation
imul rsi, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovnl rcx, qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
