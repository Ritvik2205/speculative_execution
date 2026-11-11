.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movzx cx, bl
add ax, 28666
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -1481425147
cmp ax, -15031
test ax, 23760
or bx, 0b1000000000000000 # instrumentation
bsf bx, bx
add dl, -10 # instrumentation
and rbx, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rbx]
sbb bl, al
movsx eax, sil
and rdx, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rdx]
sub bl, 17
and rax, 0b1111111111111 # instrumentation
cmovns edx, dword ptr [r14 + rax]
or cx, 0b1000000000000000 # instrumentation
bsr di, cx
or rcx, 1 # instrumentation
and rdx, rcx # instrumentation
shr rdx, 1 # instrumentation
div rcx
lea rdx, qword ptr [rdi + rsi]
and rsi, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovs dx, word ptr [r14 + rax]
add bl, bl
cmovns cx, cx
and rbx, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
btr word ptr [r14 + rbx], dx
and rdi, 0b1111111111111 # instrumentation
cmovnz esi, dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rcx], 35
and rsi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rsi], 2
sub cl, -74
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rax], 5
sub di, 87
cmovnb ax, ax
cmovnbe rcx, rdx
and rax, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
btc qword ptr [r14 + rax], rsi
and rsi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rsi], 28
cmovnbe edi, ecx
bt edx, esi
and rdx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdx], bx
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], cl
and rdx, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rdx], di
and rax, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rax], 90
and rsi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdi], 29359
cmovs di, di
sub rdx, 22
and bl, -63
and rdi, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rdi], 2
add bl, 38 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovb ax, word ptr [r14 + rdx]
cmp rax, 1524061352
movzx edx, sil
and rax, 0b1111111111111 # instrumentation
mov rbx, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
movsx rcx, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
