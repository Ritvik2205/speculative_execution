.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov al, sil
and rdx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
bt word ptr [r14 + rdi], bx
or cl, cl
and rsi, 0b1111111111111 # instrumentation
add edx, dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovs edx, dword ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rdi], rdx
and rdx, 0b1111111111111 # instrumentation
cmovnl edx, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], 567129166
or al, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv al
sbb rdi, rax
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], di
cmovz eax, esi
or di, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv di
add cl, 122 # instrumentation
cmovz rcx, rdx
and rbx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rbx], 92
cmovnp di, ax
sbb eax, 4
cmp cl, bl
xchg dx, ax
and rbx, 0b1111111111111 # instrumentation
cmovnbe eax, dword ptr [r14 + rbx]
cmp rdx, 74
cmovnp rbx, rsi
test sil, al
test ax, bx
and rsi, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovle si, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rdx]
cmovnz edx, ecx
and rdi, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rdi], rax
adc bl, sil
and rsi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rsi], 84
sbb dil, al
add ecx, 40
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], 3
add al, al
or bl, bl
and rcx, 0b1111111111111 # instrumentation
cmovnl eax, dword ptr [r14 + rcx]
mul rbx
not bx
and rbx, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bts dword ptr [r14 + rbx], esi
and rbx, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rbx]
btr ax, cx
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 0
cmp sil, 88
imul rdi
dec bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
