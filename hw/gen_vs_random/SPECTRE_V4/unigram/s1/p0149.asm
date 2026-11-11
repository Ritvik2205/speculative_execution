.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp rbx, 74
and rdx, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rdx], 27
and rsi, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rsi]
cmovb bx, bx
xchg eax, edx
sub dl, 43
and rbx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rbx], 62
and rcx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdx], 31
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], 15
adc ax, ax
cmp sil, 88
and rbx, 0b1111111111111 # instrumentation
cmovnbe rbx, qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
neg word ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdx], rsi
and rax, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
sbb rdx, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovnl cx, word ptr [r14 + rax]
mov ecx, 12
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], 78
and rcx, 0b1111111111111 # instrumentation
cmovnp edx, dword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
bt word ptr [r14 + rax], cx
and rax, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rax], 73
and rdx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rdx]
sbb cl, sil
and rcx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rcx], 85
sbb di, -76
and rdx, 0b1111111111111 # instrumentation
cmovz edx, dword ptr [r14 + rdx]
cmovnbe di, ax
cmovp ecx, edi
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], di
test al, 66
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], dil
and rdx, 0b1111111111111 # instrumentation
cmovo ecx, dword ptr [r14 + rdx]
bts di, 6
not cx
and rdx, 0b1111111111111 # instrumentation
movsx rcx, word ptr [r14 + rdx]
not dx
xchg di, si
bswap ebx
test bl, dil
add al, al
and rbx, 0b1111111111111 # instrumentation
movsx edi, word ptr [r14 + rbx]
sbb dl, dl
add al, 122 # instrumentation
cmovns esi, ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
