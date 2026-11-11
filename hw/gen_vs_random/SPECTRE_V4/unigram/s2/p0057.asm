.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
sub esi, dword ptr [r14 + rsi]
sub bl, 17
imul cl
add rsi, rdi
cmovnle edx, edi
movzx si, sil
add al, 122 # instrumentation
and rsi, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
bt dword ptr [r14 + rsi], edi
and ax, 35
test bl, al
and rdx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rdx], bx
xor bl, 93
xor dl, bl
and rcx, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
mov word ptr [r14 + rax], 18
xchg bx, ax
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 86
and rbx, 0b1111111111111 # instrumentation
cmovl ax, word ptr [r14 + rbx]
sbb dl, -99
cmovnle rsi, rsi
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000000000000000 # instrumentation
bsf si, word ptr [r14 + rdx]
add si, 4
bts edi, ecx
and rdi, 0b1111111111111 # instrumentation
cmovnz bx, word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rcx], 93
or cx, 0b1000 # instrumentation
and cl, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv cx
cmp cl, al
test esi, 27
dec rbx
xor al, 69
cmovnp si, di
and rbx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rbx], ecx
not bx
not rsi
and rax, 0b1111111111111 # instrumentation
cmovns edi, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rsi], dil
and rcx, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rcx]
add bl, -72
test dil, dl
and rdx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdx], 10
cmovnbe rdi, rax
neg ebx
bswap esi
and rdi, 0b1111111111111 # instrumentation
cmovnb rax, qword ptr [r14 + rdi]
and rax, 24
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], cl
cmp al, bl
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000000000000000 # instrumentation
bsf bx, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmp al, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
