.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -59 # instrumentation
movsx edi, bl
cmovno esi, edi
sbb dl, cl
cmp dil, -29
test dil, -58
and rsi, 0b1111111111111 # instrumentation
and cx, word ptr [r14 + rsi]
cmovbe rsi, rax
mov cl, -38
and ebx, -4
adc rax, 1682231791
sub al, dl
cmovnz cx, di
and rsi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rsi], 76
and rsi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rsi], -63
and rax, 0b1111111111111 # instrumentation
add qword ptr [r14 + rax], rsi
add al, cl
cmovbe eax, esi
cmovnl rdx, rcx
and rcx, 0b1111111111111 # instrumentation
cmovns edi, dword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rbx]
add cl, 87 # instrumentation
cmovz edx, ecx
sub rbx, rcx
and rbx, 0b1111111111111 # instrumentation
cmovb cx, word ptr [r14 + rbx]
sub dl, bl
adc cl, -86
and rsi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rsi], rbx
cmovnb bx, cx
and rbx, 0b1111111111111 # instrumentation
add rax, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
adc rdi, qword ptr [r14 + rax]
or ecx, eax
and rbx, 0b1111111111111 # instrumentation
cmovns dx, word ptr [r14 + rbx]
xchg cx, ax
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], -52
and rdx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdx], al
add ax, 65
test ax, -6584
and rsi, 0b1111111111000 # instrumentation
xchg qword ptr [r14 + rsi], rdx
and rax, 0b1111111111111 # instrumentation
cmovns rsi, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovz rsi, qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdi], rax
and rax, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
add eax, dword ptr [r14 + rdx]
xor al, -31
xor al, 23
btr rcx, rcx
add al, -86 # instrumentation
cmovnp edi, esi
or cl, sil
btc rax, 72
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
