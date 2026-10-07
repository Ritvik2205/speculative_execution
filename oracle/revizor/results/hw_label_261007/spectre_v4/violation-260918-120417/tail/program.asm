.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 8 # instrumentation
adc al, dil 
test bx, -1599 
sub bl, al 
cmovnp rdx, rbx 
and rsi, 0b1111111111111 # instrumentation
cmovz esi, dword ptr [r14 + rsi] 
adc bl, 89 
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], dl 
and rbx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rsi 
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], dx 
add al, 118 
cmovnle edi, eax 
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], rbx 
and rax, 0b1111111111111 # instrumentation
cmovnl rcx, qword ptr [r14 + rax] 
and rax, 0b1111111111111 # instrumentation
sbb ebx, dword ptr [r14 + rax] 
and rdi, 0b1111111111111 # instrumentation
cmovnb rbx, qword ptr [r14 + rdi] 
and rbx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rbx], edx 
add rdi, -94 
adc eax, -1513455903 
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], -25 
cmp sil, 88 
cmovnp si, di 
test dl, bl 
or dl, 1 # instrumentation
add dl, -122 # instrumentation
cmovnle ebx, esi 
not dx 
and rdi, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
btc dword ptr [r14 + rdi], ebx 
and rax, 0b1111111111111 # instrumentation
mul word ptr [r14 + rax] 
add bl, -10 # instrumentation
cmovnbe ebx, eax 
adc dl, bl 
and rcx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rcx], al 
and rax, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
btr dword ptr [r14 + rax], edi 
not bx 
cmp dl, al 
and rax, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rax] 
test eax, 1561062795 
and rdx, 0b1111111111111 # instrumentation
cmovns edi, dword ptr [r14 + rdx] 
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], dil 
and rbx, 0b1111111111111 # instrumentation
imul rsi, qword ptr [r14 + rbx] 
and rdi, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
btr dword ptr [r14 + rdi], esi 
cmp dl, cl 
and rdx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdx], 123 
imul cl 
or al, 96 
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], dl 
xor dl, dl 
test ebx, 1263899340 
cmovs rbx, rdi 
and rsi, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
btc word ptr [r14 + rsi], si 
lfence
lfence
lfence
lfence
lfence
lfence
lfence
lfence
lfence
lfence
lfence
lfence
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
