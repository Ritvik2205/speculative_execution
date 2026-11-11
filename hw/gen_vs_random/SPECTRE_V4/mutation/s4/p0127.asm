.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], dl
sbb cl, cl
bswap rax
cmovns dx, bx
mov dx, 11552
xor rax, rcx
inc dil
sbb edi, 107
xchg cl, cl
and rbx, 0b1111111111111 # instrumentation
cmovz esi, dword ptr [r14 + rbx]
mul rbx
and rdx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rdx], 1
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], ax
sub bl, bl
and rcx, 0b1111111111111 # instrumentation
cmovnbe rdi, qword ptr [r14 + rcx]
cmp edi, ebx
sub al, 86
and rax, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rax]
add eax, 84
and rdi, 0b1111111111111 # instrumentation
cmovnl dx, word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
sbb dl, byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovnl rdx, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rcx], 98
and rax, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rax], -105
and rdx, 0b1111111111111 # instrumentation
neg word ptr [r14 + rdx]
cmovl bx, cx
and rbx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rbx], 3
movsx eax, di
and rbx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rbx], 67
cmp al, 105
and rdi, 0b1111111111111 # instrumentation
cmovz di, word ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
cmovnp edx, dword ptr [r14 + rdi]
test bl, al
xchg dl, bl
and rax, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rax], 1
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], al
mov dl, bl
and rbx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rbx], di
btc edi, esi
and rcx, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
bt dword ptr [r14 + rcx], edi
sbb dl, al
adc bl, -20
or eax, 143573881
and rdx, 0b1111111111111 # instrumentation
cmovnz rdi, qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdi], 6
adc al, dl
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
