.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rdx], 1
xchg cl, cl
and rbx, 0b1111111111111 # instrumentation
cmovz esi, dword ptr [r14 + rbx]
sbb cl, cl
movsx eax, di
add eax, 953442933
and rax, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rax], -105
and rcx, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
bt dword ptr [r14 + rcx], edi
and rax, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rax]
cmp al, -116
cmp edi, ebx
and rdx, 0b1111111111111 # instrumentation
neg word ptr [r14 + rdx]
mul rbx
adc al, dl
test bl, al
mov dl, bl
cmovns dx, bx
or eax, -612395655
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], ax
xor rax, rcx
adc bl, 127
and rdi, 0b1111111111111 # instrumentation
cmovz di, word ptr [r14 + rdi]
bswap rax
xchg dl, bl
and rbx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rbx], di
and rdx, 0b1111111111111 # instrumentation
cmovnz rdi, qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmovnl dx, word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rbx], 67
inc dil
sbb edi, -94
sub al, 59
mov dx, 24004
cmovl bx, cx
btc edi, esi
and rdi, 0b1111111111111 # instrumentation
cmovnp edx, dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], al
and rax, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rax], 1
and rax, 0b1111111111111 # instrumentation
cmovnl rdx, qword ptr [r14 + rax]
sub bl, bl
and rbx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rbx], 3
and rdi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdi], 6
and rcx, 0b1111111111111 # instrumentation
sbb dl, byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmovnbe rdi, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], dx
and rcx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rcx], 98
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], dl
sbb dl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
