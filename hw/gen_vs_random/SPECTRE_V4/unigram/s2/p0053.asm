.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdi], bl
test dl, 19
or bx, -111
adc eax, -1513455903
and rax, 0b1111111111111 # instrumentation
cmovl dx, word ptr [r14 + rax]
btc ax, 28
add al, -32 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovno eax, dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdi], rbx
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], bl
and rdi, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rdi]
or ecx, 70
and rdi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdi]
add dl, 41
cmovnz eax, esi
add dl, -99 # instrumentation
not edi
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], 73
cmovnl rbx, rdi
sub cl, -74
adc bl, sil
and rsi, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rsi]
imul dx
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], 37
and rbx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rsi
movzx rcx, dx
or di, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv di
and rsi, 0b1111111111111 # instrumentation
adc edx, dword ptr [r14 + rsi]
or sil, sil
sbb al, -62
and rbx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rbx], dl
and rbx, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rbx]
bswap eax
and rbx, 0b1111111111111 # instrumentation
cmovns bx, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rdx]
mov bl, 48
dec dil
and rdi, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rdi]
add bx, 110
btc si, 37
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], rdx
cmp edx, 35
mov rcx, 4219775168754920203
bts rdi, 31
cmovz bx, bx
mul dl
xchg rbx, rax
adc sil, sil
and rsi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
