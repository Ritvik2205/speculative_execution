.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -115 # instrumentation
and rdx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdx], 2
cmovz edx, ecx
cmovz rsi, rcx
and rdi, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rdi]
or esi, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv esi
or di, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv di
cmovs dx, si
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], ecx
dec rdi
adc rdi, 43
cmovnz si, ax
xor al, 56
and rdx, 0b1111111111111 # instrumentation
cmp si, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdx], rcx
test eax, -558243208
and rbx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rsi
and rsi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rsi], 84
cmovp si, si
not cl
bts ecx, 26
and rcx, 0b1111111111111 # instrumentation
cmovo ax, word ptr [r14 + rcx]
cmovs ecx, edi
cmovo rsi, rsi
and rcx, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rcx]
sub bl, bl
sbb bl, -94
mov rcx, rdx
and rcx, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rsi]
not bx
and rdi, 0b1111111111111 # instrumentation
movzx rsi, word ptr [r14 + rdi]
sbb eax, 2051746726
and rsi, 0b1111111111111 # instrumentation
adc eax, dword ptr [r14 + rsi]
cmovnbe rsi, rdi
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000000000000000 # instrumentation
bsr di, word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], di
test rcx, -2118888343
movzx cx, sil
sub dl, cl
cmp sil, cl
xchg bl, al
and rax, 0b1111111111111 # instrumentation
cmovnbe dx, word ptr [r14 + rax]
mov dil, -118
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], dl
and rdi, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock bts word ptr [r14 + rdi], ax
cmovl rax, rbx
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], 64
add bx, 110
cmovs rbx, rax
or bx, -111
sbb dl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
