.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub dil, -28
and rax, 0b1111111111111 # instrumentation
mov word ptr [r14 + rax], 75
xor rcx, 112
and rax, 0b1111111111111 # instrumentation
add byte ptr [r14 + rax], bl
xchg rbx, rdx
and rax, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rax]
sub sil, -35
add sil, bl
and cl, 32
movzx rax, cx
cmovnl bx, ax
and rbx, 0b1111111111111 # instrumentation
adc sil, byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], 119
and rsi, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
adc word ptr [r14 + rdi], si
or cl, dil
or ecx, 0b1000 # instrumentation
and cl, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv ecx
cmovnp dx, dx
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], -21
cmp dil, 101
and rbx, 0b1111111111111 # instrumentation
cmovno ecx, dword ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], dx
cmovl cx, ax
add esi, 28
cmovb eax, ecx
and rcx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rcx], ecx
adc al, 116
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], 1103421604
and rbx, 0b1111111111111 # instrumentation
adc esi, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], 49
and rcx, 0b1111111111111 # instrumentation
movsx edx, word ptr [r14 + rcx]
add al, 32 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnle rax, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rax]
btr edi, edi
cmp dl, -82
and rsi, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], rax
cmovnle di, ax
mov rax, -4627568876460436527
and rcx, 0b1111111111111 # instrumentation
and eax, dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rsi]
sub cl, 92
btc edi, esi
and rdx, 0b1111111111111 # instrumentation
cmovns esi, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
sbb dl, byte ptr [r14 + rdx]
xchg al, dil
and rdx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdx], 0
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
