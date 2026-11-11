.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or di, ax
cmp rax, -227205962
and rdi, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rdi]
cmp bx, si
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], dl
cmp rdx, rdx
imul ax, si
mov rdx, 8
sub ebx, 24
cmovnbe rbx, rbx
jnl .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock bts word ptr [r14 + rsi], ax
setnz dil
add rdi, rax
and rsi, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rsi]
add eax, -1796699558
and rcx, 0b1111111111111 # instrumentation
cmovz ax, word ptr [r14 + rcx]
cmovnle cx, cx
and rbx, 0b1111111111111 # instrumentation
cmovo ax, word ptr [r14 + rbx]
sub rsi, 26
and rdi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdi], -126
mov ax, si
sub sil, sil
test bl, dl
mov rdi, rax
or dl, 1 # instrumentation
add dl, -122 # instrumentation
cmovnle ebx, esi
and rax, 0b1111111111111 # instrumentation
sub esi, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rdx], rcx
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], eax
and rdx, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rdx], si
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsf eax, ebx
cmp al, dil
sbb esi, 96
and rbx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rbx], rsi
cmovp rbx, rdi
cmovle cx, ax
and rdi, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
bt word ptr [r14 + rdi], si
and rsi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rsi], 2
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rsi]
adc cl, sil
and rdx, 0b1111111111111 # instrumentation
mov di, word ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], al
add dl, 118 # instrumentation
and rbx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rbx]
bts rsi, rsi
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsf rdx, rsi
and rdi, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
btc word ptr [r14 + rsi], si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
