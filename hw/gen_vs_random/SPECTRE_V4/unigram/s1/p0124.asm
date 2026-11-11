.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmovns rdx, qword ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rax], 73
cmovnp rax, rsi
and rax, 0b1111111111111 # instrumentation
cmovo ebx, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
sbb al, byte ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rbx], 37
and rax, 0b1111111111111 # instrumentation
mov word ptr [r14 + rax], 48
and rcx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rcx], dx
btc bx, si
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], sil
and rbx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rbx], 37
cmovs cx, ax
and rdx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rdx]
not ax
or esi, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv esi
sub al, 99
add sil, -32 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovno esi, dword ptr [r14 + rsi]
adc eax, -1513455903
adc dil, 35
and rdi, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rdi]
cmovnbe rsi, rsi
movzx rax, dx
cmovle rdi, rax
btc ax, 7
and rcx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rcx]
imul cl
btc rcx, 75
or bx, -111
and rcx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rcx], al
and rsi, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rsi], rax
and rsi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rsi], bl
and rcx, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rcx]
cmp eax, -92285311
test bl, bl
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], al
or rbx, rdx
movzx esi, bl
and rbx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rbx], 88
adc bl, sil
imul cl
add dl, 118 # instrumentation
and rdx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rax], 7
and si, 68
cmovnle ebx, ecx
and rdx, 0b1111111111111 # instrumentation
cmovnb esi, dword ptr [r14 + rdx]
test eax, -558243208
and rax, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rax], cx
and rax, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
