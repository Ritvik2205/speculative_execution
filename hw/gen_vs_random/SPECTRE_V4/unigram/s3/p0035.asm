.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
btc qword ptr [r14 + rsi], rcx
bt ax, dx
and rdi, 0b1111111111111 # instrumentation
imul edi, dword ptr [r14 + rdi], 71
and rdi, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rax], rdx
xchg di, di
and rsi, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
btc qword ptr [r14 + rsi], rdx
and rdx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdx], 37
bts ax, 159
or sil, sil
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], al
and bl, bl
and rcx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rbx]
imul ax, ax
and rax, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rax], 15
and rbx, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rbx]
xor edi, edi
and rbx, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock btc dword ptr [r14 + rbx], edx
and rdi, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rdi]
add rdx, 70
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], rcx
xchg al, dil
and rdi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdi], 7
cmovbe edx, edi
mov rdx, rbx
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr rax, qword ptr [r14 + rax]
cmovnbe rax, rdx
and ebx, -4
and rbx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rsi], 38
and rbx, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock btc qword ptr [r14 + rbx], rcx
bts si, ax
test bx, 24072
movzx cx, cl
or bl, dil
and rdi, 0b1111111111111 # instrumentation
cmovo di, word ptr [r14 + rdi]
mov rax, -8100960678429780222
sbb rdi, 78
cmovz edi, ebx
and rdi, 0b1111111111111 # instrumentation
inc word ptr [r14 + rdi]
movzx rax, dil
and rdx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdx], eax
dec cx
sub esi, -10
cmp dil, 53
neg bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
