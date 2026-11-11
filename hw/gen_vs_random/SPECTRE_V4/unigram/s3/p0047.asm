.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp si, cx
and rdx, 0b1111111111111 # instrumentation
cmovnle edx, dword ptr [r14 + rdx]
neg dl
test bx, dx
and rbx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rbx], bx
test edi, -1249897727
and rax, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rax]
xor sil, dl
sub rdx, 22
add al, 122 # instrumentation
cmovns eax, esi
and dil, 96
and rax, 0b1111111111111 # instrumentation
add ebx, dword ptr [r14 + rax]
btc rbx, 7
and rdx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdx], 96
and rcx, 0b1111111111111 # instrumentation
movsx ebx, word ptr [r14 + rcx]
mov rax, rdi
cmovle rdx, rbx
test dl, 19
and rbx, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rbx]
sub al, 50
imul cl
not ebx
xchg rcx, rax
add si, 4
movsx ecx, bx
and rcx, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
btc dword ptr [r14 + rcx], eax
cmovnp ax, cx
sbb dil, al
xor bl, 93
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], -102
and rdx, 0b1111111111111 # instrumentation
cmovo eax, dword ptr [r14 + rdx]
sbb esi, 99
or dl, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
add cl, -10 # instrumentation
mov cx, -26516
cmovnbe dx, si
cmovo edx, esi
xor sil, dl
cmovnl ax, cx
adc dil, 63
sub sil, sil
and rbx, 0b1111111111111 # instrumentation
cmovle di, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovnz di, word ptr [r14 + rdx]
sub dil, -10
and rax, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rax], si
xor sil, 56
sbb dx, 15
and rdx, 0b1111111111111 # instrumentation
movsx rax, word ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rbx], cl
and rdx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rdx], 39
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
