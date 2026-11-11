.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor dl, al
and rbx, 0b1111111111000 # instrumentation
and rdi, 0b111 # instrumentation
lock bts qword ptr [r14 + rbx], rdi
and rcx, 0b1111111111111 # instrumentation
sbb rsi, qword ptr [r14 + rcx]
movzx dx, dil
sbb si, 52
and rcx, 0b1111111111111 # instrumentation
cmovno rsi, qword ptr [r14 + rcx]
cmovnbe ebx, edx
and rdi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdi]
sub rdx, rdi
cmovz edx, edi
cmp esi, 66
add ax, -13169
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], dil
imul eax
add cl, -117 # instrumentation
cmovs rax, rbx
adc ebx, 117
movzx ecx, cx
and rcx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rcx], -105
and rax, 0b1111111111111 # instrumentation
add ebx, dword ptr [r14 + rax]
add dl, -99 # instrumentation
not esi
test cl, bl
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], 120
and rcx, 0b1111111111111 # instrumentation
cmovs edx, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rdx]
and cl, 58
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], sil
sub dl, sil
and rcx, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock bts qword ptr [r14 + rdi], rcx
and rbx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rbx]
adc edx, 54
imul rbx
and rdi, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
btc word ptr [r14 + rdi], di
and rdi, 0b1111111111111 # instrumentation
cmovnl cx, word ptr [r14 + rdi]
add dil, -102 # instrumentation
and rsi, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rsi]
add bl, -18 # instrumentation
mov rdx, rsi
not bx
and rsi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rsi], 1229240443
and rdi, 0b1111111111111 # instrumentation
cmp ax, word ptr [r14 + rdi]
add cl, -10 # instrumentation
cmovnbe ecx, edx
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000000000000000 # instrumentation
bsf bx, word ptr [r14 + rbx]
movzx rdi, si
xor cl, sil
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], rsi
add dl, 118 # instrumentation
and rcx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rcx]
cmovle ax, ax
and rbx, 0b1111111111111 # instrumentation
cmovns edx, dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
