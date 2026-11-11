.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add rsi, rdi
and rdi, 0b1111111111111 # instrumentation
cmovnp di, word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bts qword ptr [r14 + rcx], rdi
and rbx, 0b1111111111111 # instrumentation
add rdx, qword ptr [r14 + rbx]
sbb al, -101
and rcx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rcx], ax
bts edi, 167
and rdi, 0b1111111111111 # instrumentation
sbb esi, dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
btc dword ptr [r14 + rdx], ecx
cmovnbe rsi, rbx
add al, 72 # instrumentation
cmovle ax, cx
cmovnbe eax, edx
bts ecx, ecx
xor ecx, 93
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
test dx, si
and rbx, 0b1111111111111 # instrumentation
cmovnb di, word ptr [r14 + rbx]
cmovz esi, edx
sub cl, 116
and rcx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmovl rsi, qword ptr [r14 + rcx]
xchg eax, esi
and rcx, 0b1111111111111 # instrumentation
sbb esi, dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmovo ebx, dword ptr [r14 + rcx]
bt cx, 111
neg dil
and rdx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovns bx, word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
cmovnb eax, dword ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rax], 44
cmp bl, al
and rcx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rcx], 98
and rcx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rcx], ebx
cmp bl, al
or di, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv di
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], bl
and rcx, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
movsx edi, word ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rbx], dl
imul edx, eax, 66
and rdx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdx], 123
movzx ecx, sil
bts eax, 209
or bl, dl
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], dil
and rbx, 110
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], esi
sbb rdi, 36
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
