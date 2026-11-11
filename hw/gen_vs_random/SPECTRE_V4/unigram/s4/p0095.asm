.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rbx], cx
movzx di, dil
movsx eax, dil
test sil, -119
and rdi, 0b1111111111111 # instrumentation
adc si, word ptr [r14 + rdi]
cmp dl, dl
add cl, -74 # instrumentation
cmovnp rcx, rax
and rbx, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
btr word ptr [r14 + rbx], cx
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], -21
and rdi, 45
cmovp edx, edi
and rax, 0b1111111111111 # instrumentation
cmovnl esi, dword ptr [r14 + rax]
and ecx, 71
and rax, 0b1111111111111 # instrumentation
inc word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rbx], 101
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], -124
and rbx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], 55
imul edx, eax
and rbx, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
btc word ptr [r14 + rbx], si
and rax, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovbe rax, qword ptr [r14 + rdx]
movsx ecx, di
and rbx, 0b1111111111111 # instrumentation
cmovl rbx, qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 7
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], cx
and rcx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovz ax, word ptr [r14 + rdx]
cmovle rcx, rax
and rdx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdx], dil
btc esi, 63
cmp bl, 12
movsx ecx, dl
imul rcx, rdi, 49
and rcx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rsi], 84
sub rdx, 63
or ax, -30990
inc dl
sub rdi, -34
add cl, -106 # instrumentation
cmovno rbx, rsi
xor dl, -123
and rsi, 0b1111111111111 # instrumentation
cmovnb rsi, qword ptr [r14 + rsi]
cmovnle rdi, rbx
and rdx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdx], ax
and rax, 0b1111111111111 # instrumentation
cmovz bx, word ptr [r14 + rax]
or rcx, rdi
imul si, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
