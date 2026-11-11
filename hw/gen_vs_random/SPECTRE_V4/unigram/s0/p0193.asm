.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -42 # instrumentation
adc bl, dl
cmovnbe rbx, rdi
and rdi, 0b1111111111111 # instrumentation
cmovbe bx, word ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
cmovnle rsi, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rax], 63
cmovp bx, ax
and dil, 96
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsf cx, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovno esi, dword ptr [r14 + rdx]
sbb sil, 108
and rbx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rbx], rsi
adc sil, bl
add bl, 38 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovb ax, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
sub eax, dword ptr [r14 + rax]
add cl, -37 # instrumentation
adc edi, 76
mov rbx, 9101099553822202722
bts ecx, 95
xor sil, sil
btr bx, si
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], cx
cmovnb eax, esi
test edx, 573099753
and dl, al
and rbx, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rbx]
add al, 110 # instrumentation
movsx si, al
dec rbx
and dl, al
and bl, dil
adc al, 36
and rbx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rbx], al
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
and cl, 58
bts rcx, rbx
sbb cl, cl
cmovnb si, si
or rax, 0b1000000000000000000000000000000 # instrumentation
bsr rbx, rax
and cl, 58
btc bx, 82
xor al, 102
and rdx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdx], 77
cmovnp rdx, rbx
cmp si, cx
mov rdx, 29
and rbx, 0b1111111111111 # instrumentation
cmovns si, word ptr [r14 + rbx]
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsr rsi, rcx
and rsi, 0b1111111111111 # instrumentation
cmovl bx, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
