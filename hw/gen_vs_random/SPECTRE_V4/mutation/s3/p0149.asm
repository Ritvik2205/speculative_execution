.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, -71
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], -25
and rax, 0b1111111111111 # instrumentation
mul word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rax]
cmovnle edi, eax
and rbx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rsi
sub bl, al
and rsi, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
btc word ptr [r14 + rsi], si
add bl, -10 # instrumentation
cmovnbe ebx, eax
adc dl, bl
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], dil
cmp dl, cl
test ebx, 1263899340
not bx
and rbx, 0b1111111111111 # instrumentation
imul rsi, qword ptr [r14 + rbx]
test bx, -1599
and rax, 0b1111111111111 # instrumentation
sbb ebx, dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
btr dword ptr [r14 + rdi], esi
cmovnp rdx, rbx
cmp sil, 88
adc eax, -1513455903
add cl, 8 # instrumentation
adc al, dil
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], rbx
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], dl
adc bl, 89
add al, 118
or dl, 1 # instrumentation
add dl, -122 # instrumentation
cmovnle ebx, esi
add rdi, -94
and rcx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rcx], al
cmovs rbx, rdi
and rdx, 0b1111111111111 # instrumentation
cmovns edi, dword ptr [r14 + rdx]
not dx
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], dl
and rdx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdx], 123
and rax, 0b1111111111111 # instrumentation
cmovnl rcx, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmovz esi, dword ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rbx], edx
cmp dl, al
imul cl
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], dx
cmovnp si, di
test eax, -818909344
and rdi, 0b1111111111111 # instrumentation
cmovnb rbx, qword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
btc dword ptr [r14 + rdi], ebx
test dl, bl
xor dl, dl
and rax, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
btr dword ptr [r14 + rax], edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
