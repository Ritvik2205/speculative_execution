.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
btc dword ptr [r14 + rdi], ebx
test eax, -818909344
cmovnp si, di
cmp sil, 88
xor dl, dl
not dx
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], dil
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], -25
and rax, 0b1111111111111 # instrumentation
cmovnl rcx, qword ptr [r14 + rax]
adc eax, -1513455903
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], dx
and rdx, 0b1111111111111 # instrumentation
cmovns edi, dword ptr [r14 + rdx]
test dl, bl
or dl, 1 # instrumentation
add dl, -122 # instrumentation
cmovnle ebx, esi
cmp dl, cl
cmovnle edi, eax
add bl, -10 # instrumentation
cmovnbe ebx, eax
sub bl, al
adc dl, bl
and rsi, 0b1111111111111 # instrumentation
cmovz esi, dword ptr [r14 + rsi]
not bx
and rax, 0b1111111111111 # instrumentation
mul word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
imul rsi, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], dl
adc bl, 89
test ebx, 1263899340
cmp dl, al
imul cl
and rdi, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
btr dword ptr [r14 + rdi], esi
and rbx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rsi
and rcx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rcx], al
cmovs rbx, rdi
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], rbx
or al, 95
and rdi, 0b1111111111111 # instrumentation
cmovnb rbx, qword ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rbx], edx
test bx, -1599
and rax, 0b1111111111111 # instrumentation
sbb ebx, dword ptr [r14 + rax]
add rdi, -94
add al, 5
cmovnp rdx, rbx
and rax, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
btr dword ptr [r14 + rax], edi
add cl, 8 # instrumentation
adc al, dil
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], dl
and rax, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
btc word ptr [r14 + rsi], si
and rdx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdx], 123
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
