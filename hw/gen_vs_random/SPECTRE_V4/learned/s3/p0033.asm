.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdx], 75
test dl, 19
and rsi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rsi]
bts si, 30
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], ecx
movzx ax, al
and rcx, 0b1111111111111 # instrumentation
cmovbe dx, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], 567129166
and rsi, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovnl rdi, qword ptr [r14 + rax]
add bl, al
xor di, ax
xor dl, bl
or ax, -12775
cmovz ecx, esi
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], ebx
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsf eax, dword ptr [r14 + rax]
mov rsi, 15
and rsi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rsi], 2
adc bl, bl
cmp al, -23
and rcx, 0b1111111111111 # instrumentation
and rax, qword ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdx], bx
movzx ecx, sil
and rax, 0b1111111111111 # instrumentation
inc word ptr [r14 + rax]
imul sil
and rsi, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rsi]
and bx, 95
and rdi, 0b1111111111111 # instrumentation
movsx edi, word ptr [r14 + rdi]
cmp al, bl
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], sil
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], si
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 0
and rsi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rsi], 61
add edi, edx
sub rdi, 52
sbb dl, bl
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], al
mov rcx, 4219775168754920203
xor esi, ebx
and rsi, 0b1111111111111 # instrumentation
cmovo edi, dword ptr [r14 + rsi]
sub dl, dl
or dx, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
and rsi, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
