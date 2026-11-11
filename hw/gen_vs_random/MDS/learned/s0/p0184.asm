.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, -115 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnb rdx, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
movsx rdi, word ptr [r14 + rdi]
and cl, 89 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovbe rdx, qword ptr [r14 + rsi]
or rax, -285849275
cmovo si, di
and rdi, 0b1111111111111 # instrumentation
cmovnbe esi, dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
and cl, 85 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovbe rbx, qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rsi], cl
and si, di
sub di, 29
and rdx, 0b1111111111111 # instrumentation
and esi, dword ptr [r14 + rdx]
bts rax, 149
cmovns eax, eax
cmovnz edi, eax
btc cx, 104
and rbx, 0b1111111111111 # instrumentation
cmovnz eax, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rsi], cl
cmovnbe ebx, eax
and di, cx
cmovz rdi, rcx
test bl, cl
and rdx, 0b1111111111111 # instrumentation
movsx ebx, byte ptr [r14 + rdx]
and eax, -872608366
and rcx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rcx], 2
test al, bl
cmovo dx, ax
xor edx, eax
cmp ax, 60
and rcx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rcx], 35
or ebx, eax
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], 77
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], dil
and rsi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rsi], 6
add eax, 87
cmp dl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
