.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], cl
and rdi, 0b1111111111111 # instrumentation
add word ptr [r14 + rdi], cx
and rdi, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rdi], 80
mul ecx
inc ax
and rdx, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
btr word ptr [r14 + rcx], ax
or rax, 980130592
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], 10
and rdx, 0b1111111111111 # instrumentation
movzx rcx, word ptr [r14 + rdx]
test ecx, -304234347
and rdi, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rdi]
xchg edi, eax
dec dl
cmovo cx, di
and rbx, 0b1111111111111 # instrumentation
not word ptr [r14 + rbx]
cmp di, -8
and rbx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rbx], -2
sbb edx, eax
and di, -34
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], cl
and rcx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rcx], eax
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], sil
not rcx
cmovp rcx, rdx
adc al, 116
and rdi, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rdi]
add dl, -79 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnp ebx, dword ptr [r14 + rax]
and edx, 20
cmp eax, 1521417271
inc bl
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 64
and rax, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock btc qword ptr [r14 + rax], rcx
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
movsx esi, byte ptr [r14 + rdi]
not sil
cmovnbe edx, esi
and rsi, 0b1111111111111 # instrumentation
cmovnl rdx, qword ptr [r14 + rsi]
neg rcx
and bl, -30
sub sil, al
and rdi, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rdi], 1
and rsi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rsi], bx
and rbx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rbx], sil
or cl, cl
and rdx, 0b1111111111111 # instrumentation
movzx ax, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
