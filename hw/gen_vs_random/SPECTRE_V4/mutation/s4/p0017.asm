.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
cmovz di, word ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rax], 1
and rcx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rcx], 98
movsx eax, di
btc edi, esi
and rdi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdi], 6
sbb dl, al
sub bl, bl
mov dx, 11552
and rax, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rax], -103
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], dl
cmovns dx, bx
adc bl, 35
and rax, 0b1111111111111 # instrumentation
cmovnl rdx, qword ptr [r14 + rax]
test bl, al
xchg dl, bl
mov dl, bl
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], al
add eax, 84
and rcx, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
bt dword ptr [r14 + rcx], edi
and rcx, 0b1111111111111 # instrumentation
cmovnbe rdi, qword ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovnp edx, dword ptr [r14 + rdi]
mul rbx
and rbx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rbx], 67
cmp al, -53
adc al, dl
sub al, 96
and rdi, 0b1111111111111 # instrumentation
cmovnl dx, word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmovnz rdi, qword ptr [r14 + rdx]
cmp edi, ebx
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], dx
and rbx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rbx], 3
and rcx, 0b1111111111111 # instrumentation
sbb dl, byte ptr [r14 + rcx]
inc dil
bswap rax
and rdx, 0b1111111111111 # instrumentation
neg word ptr [r14 + rdx]
xor rax, rcx
and rbx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rbx], di
and rdx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rdx], 1
xchg cl, cl
or eax, 185586366
sbb edi, 107
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], ax
and rbx, 0b1111111111111 # instrumentation
cmovz esi, dword ptr [r14 + rbx]
cmovl bx, cx
sbb cl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
