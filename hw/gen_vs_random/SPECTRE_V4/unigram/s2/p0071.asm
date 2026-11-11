.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rbx], ebx
or bl, dl
add al, 121 # instrumentation
movsx ebx, cx
and rcx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rcx], dl
and rdx, 0b1111111111111 # instrumentation
xor si, word ptr [r14 + rdx]
neg dil
cmovnle rbx, rax
or dl, -26
and rax, 0b1111111111111 # instrumentation
sbb cl, byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovnb edx, dword ptr [r14 + rbx]
mov eax, -1056201206
mov dl, al
test rax, rdi
and rbx, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
btc word ptr [r14 + rbx], ax
cmp rax, -47
and rax, 0b1111111111111 # instrumentation
cmovz edx, dword ptr [r14 + rax]
mov bl, bl
add edx, eax
cmovb cx, ax
cmovle rsi, rdx
and rdi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdi], bx
and rbx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rbx], 64
and cl, 32
xor al, al
and rbx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rbx], ebx
and rdx, 0b1111111111111 # instrumentation
movzx edx, word ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rbx]
xor rdx, 106
and rbx, 0b1111111111111 # instrumentation
cmovbe si, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovz eax, dword ptr [r14 + rax]
and cl, 126
and rsi, 0b1111111111111 # instrumentation
sbb sil, byte ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], esi
sub rdx, 65
and rsi, 0b1111111111111 # instrumentation
add word ptr [r14 + rsi], si
and rsi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rsi], al
and rdi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdi], rdi
and rcx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rcx], 79
xor cl, 13
add cl, -58 # instrumentation
cmovnz ecx, ebx
and rbx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rbx], 76
and rsi, 0b1111111111111 # instrumentation
cmovnl edi, dword ptr [r14 + rsi]
or dx, 0b1000000000000000 # instrumentation
bsf ax, dx
movzx eax, dl
and rdi, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmovb rsi, qword ptr [r14 + rdx]
add al, -64 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovp bx, word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
