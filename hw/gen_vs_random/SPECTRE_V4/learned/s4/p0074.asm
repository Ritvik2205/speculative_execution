.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -115 # instrumentation
and rdx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdx], 2
cmovz edx, ecx
and rdi, 0b1111111111111 # instrumentation
add dword ptr [r14 + rdi], 119
bts esi, 241
or esi, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv esi
add cl, 106 # instrumentation
cmovnp rdi, rsi
dec rbx
btc dx, 16
and rcx, 0b1111111111111 # instrumentation
cmovnbe esi, dword ptr [r14 + rcx]
not si
sbb al, 123
cmovnbe rcx, rcx
and rsi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rsi], 5
sbb al, -62
cmovs rax, rdx
cmovp ax, di
and sil, -49
add dl, 12 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovle di, word ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rdi]
sub esi, ecx
or dl, dl
neg di
and rsi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdi], al
and rbx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rdx]
or dl, 1 # instrumentation
add dl, -122 # instrumentation
cmovnle ebx, esi
and eax, -24
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000000000000000 # instrumentation
bsf di, word ptr [r14 + rdi]
add dl, 48 # instrumentation
and rdi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdi], al
btc di, bx
xor dl, 15
cmovz esi, edi
and rcx, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rsi], 104
and rsi, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rbx]
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsr rsi, rdx
and rsi, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rsi]
or edi, 0b1000000000000000000000000000000 # instrumentation
bsr edx, edi
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], al
test al, 66
imul esi, eax
xor ax, 25554
cmovle rdi, rsi
and rsi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rsi]
movzx rcx, ax
or dx, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
and rsi, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
