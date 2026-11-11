.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
cmovnl dx, word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
neg word ptr [r14 + rdx]
sub al, 96
and rdi, 0b1111111111111 # instrumentation
cmovnp edx, dword ptr [r14 + rdi]
xchg dl, bl
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], dx
cmp al, 115
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], ax
and rdx, 0b1111111111111 # instrumentation
cmovnz rdi, qword ptr [r14 + rdx]
mov dx, 22195
and rbx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rbx], di
adc bl, 127
btc edi, esi
and rcx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rcx], 98
and rax, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rax], 1
test bl, al
movsx eax, di
adc al, dl
sbb edi, 107
cmovns dx, bx
or eax, 143573881
and rbx, 0b1111111111111 # instrumentation
cmovz esi, dword ptr [r14 + rbx]
xor rax, rcx
and rax, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rax], -103
mov dl, bl
and rcx, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
bt dword ptr [r14 + rcx], edi
add eax, 1017938146
and rbx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rbx], 3
and rdi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdi], 6
mul rbx
and rcx, 0b1111111111111 # instrumentation
sbb dl, byte ptr [r14 + rcx]
bswap rax
and rbx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rbx], 67
cmp edi, ebx
xchg cl, cl
and rcx, 0b1111111111111 # instrumentation
cmovnbe rdi, qword ptr [r14 + rcx]
sbb cl, cl
and rax, 0b1111111111111 # instrumentation
cmovnl rdx, qword ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rax]
sbb dl, al
and rdx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rdx], 1
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], al
sub bl, bl
and rdi, 0b1111111111111 # instrumentation
cmovz di, word ptr [r14 + rdi]
inc dil
cmovl bx, cx
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
