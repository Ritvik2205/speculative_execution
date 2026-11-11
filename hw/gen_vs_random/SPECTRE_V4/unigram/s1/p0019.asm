.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
sub cx, word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmovz dx, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovnbe ax, word ptr [r14 + rax]
cmp dil, bl
add dil, -61
and rbx, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rcx]
mov cx, ax
sub bl, 56
sub dl, -16
add dl, 1 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnl di, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], al
and rdi, 0b1111111111111 # instrumentation
cmovnle rdx, qword ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rdx], -25
test bl, -29
cmovle rax, rbx
adc al, -59
and rcx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rcx], 85
sub cl, 92
sub sil, dl
and rax, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rax], di
movsx dx, bl
and rdi, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rdi]
btc rdi, rsi
cmovle rcx, rbx
sub dil, dil
adc al, 41
and al, -28
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsf eax, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
imul rax, qword ptr [r14 + rsi]
or di, 29
and rdx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdx], rdi
and rdx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rdx]
btc rax, rbx
sbb rbx, 20
sbb sil, -124
sub dl, bl
movsx di, sil
add bx, 16
and rsi, 0b1111111111111 # instrumentation
cmovns cx, word ptr [r14 + rsi]
add al, -3
add bl, -39 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovle bx, word ptr [r14 + rdi]
and esi, 61
and rax, 0b1111111111111 # instrumentation
movsx di, byte ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdi], rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
