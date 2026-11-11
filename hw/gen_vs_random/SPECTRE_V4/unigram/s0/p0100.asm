.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmovnl eax, dword ptr [r14 + rcx]
sbb edx, 70
add al, -27 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovz ax, word ptr [r14 + rbx]
xor di, 36
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], al
and rsi, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rsi], 3
and rdi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdi], 57
and rbx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rbx], rdx
add al, -10 # instrumentation
and rcx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rcx], dx
adc bx, 52
and rdx, 0b1111111111111 # instrumentation
cmovnb ebx, dword ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rcx], ebx
test dl, 24
and rsi, 0b1111111111111 # instrumentation
and rdx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdx], rdx
and rdi, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdi], 93
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], bl
and rax, 0b1111111111111 # instrumentation
add qword ptr [r14 + rax], rcx
btr dx, 209
and rbx, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rbx], -112
xor ax, -29507
sub bl, dil
cmp rbx, -91
and rax, 0b1111111111111 # instrumentation
movzx edx, byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rcx]
and dil, dil
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 1 # instrumentation
and dx, word ptr [r14 + rcx] # instrumentation
shr dx, 1 # instrumentation
div word ptr [r14 + rcx]
dec dx
bts eax, 92
and rdi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdi], rbx
and rbx, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], bl
test cl, -119
and rdi, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rdi], 28
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsr edx, ecx
sub ax, 23
btr ecx, esi
and rdi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdi]
sbb cl, 35
and rsi, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rsi], 84
xor esi, -82
btc rcx, 44
and bx, ax
and rsi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rsi], -63
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], 1 # instrumentation
and rax, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovo rcx, qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rbx], 47
cmovnz cx, di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
