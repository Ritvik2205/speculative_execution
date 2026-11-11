.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
adc rcx, 57
and rbx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
btc dword ptr [r14 + rdi], esi
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], rbx
and rcx, 0b1111111111111 # instrumentation
cmovl eax, dword ptr [r14 + rcx]
dec dil
xor ax, 20236
sbb bl, -98
and rcx, 0b1111111111111 # instrumentation
imul rdi, qword ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rdx], 44
and rsi, 0b1111111111111 # instrumentation
cmovnl bx, word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], -14386
adc rbx, rax
and rax, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rax], 0
sub ax, -13057
and rbx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rbx], 35
and rbx, 0b1111111111111 # instrumentation
sbb bx, word ptr [r14 + rbx]
add dl, 122 # instrumentation
cmovz ax, dx
mov dil, 69
and rax, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmovno rsi, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovz si, word ptr [r14 + rcx]
xchg edi, eax
and rbx, 0b1111111111111 # instrumentation
sbb esi, dword ptr [r14 + rbx]
sub bl, bl
and rbx, 0b1111111111111 # instrumentation
xor dx, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], 11
and rcx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rcx], 2
adc ebx, -55
and rdx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmp di, word ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rdx], ebx
and rbx, 0b1111111111111 # instrumentation
cmovnbe dx, word ptr [r14 + rbx]
and dil, al
and rdx, 0b1111111111111 # instrumentation
cmovnz bx, word ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock btc word ptr [r14 + rcx], cx
and rax, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rax], -73
imul ax, bx, 15
dec rcx
and cl, -101
cmp bl, sil
test rbx, 1219566903
and rsi, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rdi]
add bl, 47 # instrumentation
cmovnle ax, bx
and rdx, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock btc dword ptr [r14 + rdx], ecx
and rdi, 0b1111111111111 # instrumentation
sub rax, qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
