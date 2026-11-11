.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -115 # instrumentation
and rdx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdx], 2
cmovz edx, ecx
and rsi, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rsi]
adc dl, al
and rdi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdi], 12
and rdx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rdx], 57
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], edi
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], bl
and rdx, 0b1111111111111 # instrumentation
cmovnb dx, word ptr [r14 + rdx]
cmovnz di, cx
and rbx, 0b1111111111111 # instrumentation
cmovns edx, dword ptr [r14 + rbx]
add sil, sil
sbb rax, 183833426
and rdx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rdx], 91
sub al, 99
and rax, 0b1111111111111 # instrumentation
sub word ptr [r14 + rax], 7
xor cl, cl
cmp al, -23
and sil, -49
inc esi
or eax, 0b1000000000000000000000000000000 # instrumentation
bsr ecx, eax
and rdi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdi], rdx
cmovnz rax, rdi
sub edx, ecx
and rax, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rax], 88
and rsi, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rdx
and rsi, 0b1111111111111 # instrumentation
btr word ptr [r14 + rsi], 4
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rsi]
and bl, al
xor cl, dl
and rax, 0b1111111111111 # instrumentation
cmovnl bx, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
movsx eax, word ptr [r14 + rdx]
bts edi, 167
jnl .bb_0.1
jmp .exit_0
.bb_0.1:
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsr rsi, rdx
and si, 68
and rsi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rsi], -12
test al, 80
and rdi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdi], 29359
cmovs di, di
and rdi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], 26
sbb eax, -1688332460
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
