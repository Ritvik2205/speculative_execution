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
cmovs dx, cx
movzx ax, al
and rcx, 0b1111111111111 # instrumentation
cmovbe dx, word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmovz esi, dword ptr [r14 + rcx]
cmovnz dx, di
sub sil, -50
and rcx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rcx], 96
dec bl
and rsi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rsi], dil
btr rdi, rbx
and rsi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rsi], 97
sbb al, 123
and rcx, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
bt dword ptr [r14 + rcx], edi
and rdx, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rdx]
cmovns cx, cx
or esi, 0b1000000000000000000000000000000 # instrumentation
bsr ecx, esi
cmovo rdx, rdx
or ax, -15282
and bl, -63
or bx, -111
and rdx, 0b1111111111111 # instrumentation
cmp eax, dword ptr [r14 + rdx]
sbb cl, -104
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], 439393806
imul sil
cmovb edx, ebx
movzx ecx, al
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 4
and ax, 35
mul cl
and rbx, 0b1111111111111 # instrumentation
cmovz esi, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 0
test bl, 0
and rbx, 0b1111111111111 # instrumentation
add rdx, qword ptr [r14 + rbx]
and si, 68
and rdx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdx], 96
and rcx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rcx], 3
and rdx, 0b1111111111111 # instrumentation
mov si, word ptr [r14 + rdx]
adc dl, al
mul rbx
and rcx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rdx], 12
test dil, 97
and rcx, 0b1111111111111 # instrumentation
cmovnz si, word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
