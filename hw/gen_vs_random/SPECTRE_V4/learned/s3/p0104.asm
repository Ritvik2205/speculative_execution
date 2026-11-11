.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdx], -81
and rbx, 0b1111111111111 # instrumentation
cmovb rdi, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rcx
and rdi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdi], rsi
and rcx, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rcx], ebx
and rcx, 0b1111111111111 # instrumentation
cmovnle si, word ptr [r14 + rcx]
movzx ax, al
cmovl rax, rbx
jmp .bb_0.1
.bb_0.1:
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsr rax, rdx
xchg rdx, rax
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], 60
and rcx, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
btc word ptr [r14 + rcx], dx
and rdx, 0b1111111111111 # instrumentation
not dword ptr [r14 + rdx]
and cl, 58
and rax, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rax]
lea ecx, qword ptr [rdi + rax + 23]
cmovle eax, ebx
and dl, 84 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovl esi, dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmovnp si, word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
btr word ptr [r14 + rdi], dx
movzx edx, al
and rcx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rcx], -83
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], ebx
and rsi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rsi], 2
btc rdi, rbx
adc bx, -89
and rbx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rbx], 4
and bx, 95
and rdi, 0b1111111111111 # instrumentation
movsx edi, word ptr [r14 + rdi]
movzx rax, dil
sbb al, 32
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000000000000000 # instrumentation
bsr di, word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], si
test cl, dl
movzx cx, dl
cmovnl rbx, rcx
or sil, 96
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsf rdx, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], ebx
sub al, 50
and rax, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rax], rdx
sub rdx, rsi
sub al, 98
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
