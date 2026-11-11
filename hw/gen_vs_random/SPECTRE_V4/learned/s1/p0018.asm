.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rax]
add eax, esi
and rax, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rax]
cmovnbe rbx, rax
adc rax, 1542637830
neg al
and rax, 0b1111111111111 # instrumentation
cmovnl rdi, qword ptr [r14 + rax]
cmovnb edi, edi
mul rdi
xchg si, cx
and rdx, 0b1111111111111 # instrumentation
imul rsi, qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rbx], al
and rax, 0b1111111111111 # instrumentation
cmovz di, word ptr [r14 + rax]
cmp rax, 2115020203
and rax, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rax]
cmovnl ecx, esi
and rax, 0b1111111111111 # instrumentation
cmovns esi, dword ptr [r14 + rax]
cmovz esi, edx
and rax, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rdx]
add cx, cx
xor dl, dil
sbb cl, 19
test cl, -89
and rsi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rsi], 2
xor bl, 93
and rdi, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rdi]
adc al, al
cmovb di, di
and rdi, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
bts word ptr [r14 + rax], 35
and rdi, 0b1111111111111 # instrumentation
movsx esi, byte ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rbx], rcx
cmp bl, dl
test rcx, -2118888343
bt eax, ecx
test eax, 1561062795
and rsi, 22
and rdx, 0b1111111111111 # instrumentation
movzx edx, word ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], dil
sbb cl, cl
add al, 118
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
cmovs di, di
sub rdx, 22
and bl, 26
cmovb di, di
and rdi, -2
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], 87
or rax, 0b1000000000000000000000000000000 # instrumentation
bsf rdx, rax
add eax, -1796699558
and rsi, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
btc word ptr [r14 + rsi], si
and rax, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
bt word ptr [r14 + rax], dx
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], 87
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
