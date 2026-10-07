.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 8 # instrumentation
lfence
adc al, dil 
lfence
test bx, -1599 
lfence
sub bl, al 
lfence
cmovnp rdx, rbx 
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
cmovz esi, dword ptr [r14 + rsi] 
lfence
adc bl, 89 
lfence
and rax, 0b1111111111111 # instrumentation
lfence
cmp byte ptr [r14 + rax], dl 
lfence
and rbx, 0b1111111111111 # instrumentation
lfence
and rsi, 0b111 # instrumentation
lfence
bt qword ptr [r14 + rbx], rsi 
lfence
and rdi, 0b1111111111111 # instrumentation
lfence
and word ptr [r14 + rdi], dx 
lfence
add al, 118 
lfence
cmovnle edi, eax 
lfence
and rcx, 0b1111111111111 # instrumentation
lfence
test qword ptr [r14 + rcx], rbx 
lfence
and rax, 0b1111111111111 # instrumentation
lfence
cmovnl rcx, qword ptr [r14 + rax] 
lfence
and rax, 0b1111111111111 # instrumentation
lfence
sbb ebx, dword ptr [r14 + rax] 
lfence
and rdi, 0b1111111111111 # instrumentation
lfence
cmovnb rbx, qword ptr [r14 + rdi] 
lfence
and rbx, 0b1111111111000 # instrumentation
lfence
lock xor dword ptr [r14 + rbx], edx 
lfence
add rdi, -94 
lfence
adc eax, -1513455903 
lfence
and rbx, 0b1111111111111 # instrumentation
lfence
and byte ptr [r14 + rbx], -25 
lfence
cmp sil, 88 
lfence
cmovnp si, di 
lfence
test dl, bl 
lfence
or dl, 1 # instrumentation
lfence
add dl, -122 # instrumentation
lfence
cmovnle ebx, esi 
lfence
not dx 
lfence
and rdi, 0b1111111111111 # instrumentation
lfence
and ebx, 0b111 # instrumentation
lfence
btc dword ptr [r14 + rdi], ebx 
lfence
and rax, 0b1111111111111 # instrumentation
lfence
mul word ptr [r14 + rax] 
lfence
add bl, -10 # instrumentation
lfence
cmovnbe ebx, eax 
lfence
adc dl, bl 
lfence
and rcx, 0b1111111111000 # instrumentation
lfence
lock sbb byte ptr [r14 + rcx], al 
lfence
and rax, 0b1111111111111 # instrumentation
lfence
and edi, 0b111 # instrumentation
lfence
btr dword ptr [r14 + rax], edi 
lfence
not bx 
lfence
cmp dl, al 
lfence
and rax, 0b1111111111111 # instrumentation
lfence
or si, word ptr [r14 + rax] 
lfence
test eax, 1561062795 
lfence
and rdx, 0b1111111111111 # instrumentation
lfence
cmovns edi, dword ptr [r14 + rdx] 
lfence
and rsi, 0b1111111111000 # instrumentation
lfence
lock and byte ptr [r14 + rsi], dil 
lfence
and rbx, 0b1111111111111 # instrumentation
lfence
imul rsi, qword ptr [r14 + rbx] 
lfence
and rdi, 0b1111111111111 # instrumentation
lfence
and esi, 0b111 # instrumentation
lfence
btr dword ptr [r14 + rdi], esi 
lfence
cmp dl, cl 
lfence
and rdx, 0b1111111111111 # instrumentation
lfence
sbb byte ptr [r14 + rdx], 123 
lfence
imul cl 
lfence
or al, 96 
lfence
and rcx, 0b1111111111000 # instrumentation
lfence
lock xor byte ptr [r14 + rcx], dl 
lfence
xor dl, dl 
lfence
test ebx, 1263899340 
lfence
cmovs rbx, rdi 
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
and si, 0b111 # instrumentation
lfence
btc word ptr [r14 + rsi], si 
lfence
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
