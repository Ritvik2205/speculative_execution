.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rsi], 84
cmovb rdx, rcx
and rbx, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rbx]
and sil, -49
and rbx, 0b1111111111111 # instrumentation
movsx ebx, word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rcx], dx
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsf rsi, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rbx], si
sub rsi, 26
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], esi
cmovnp rcx, rcx
or dl, 88
and rcx, 0b1111111111111 # instrumentation
cmovl dx, word ptr [r14 + rcx]
cmp bx, 70
or di, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv di
and rax, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rsi], cx
add al, 123 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rdi]
add cl, -82 # instrumentation
sbb cx, di
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 33
add al, 122 # instrumentation
and rdx, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bt dword ptr [r14 + rdx], ecx
and ecx, 92
bt ecx, edi
add cl, 119 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovl rsi, qword ptr [r14 + rcx]
inc ax
add rsi, rdi
cmovnp rdx, rax
cmovz ax, ax
mov sil, sil
cmovnl rcx, rax
and rax, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rax], si
and dl, al
and rcx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rcx]
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsr esi, ecx
xchg rsi, rax
and rsi, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rsi]
add bl, -109 # instrumentation
sbb edx, 53
and rdi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdi], 74
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], bx
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], 41
and rsi, 0b1111111111111 # instrumentation
movzx rdx, word ptr [r14 + rsi]
sbb di, -76
cmovnz edx, ebx
and rax, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdx], 43
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], 47
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
