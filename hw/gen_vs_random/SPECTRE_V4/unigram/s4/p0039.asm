.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rsi], 48
and rbx, 0b1111111111111 # instrumentation
cmovz rbx, qword ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock btc qword ptr [r14 + rsi], rdx
and rsi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rsi], ax
and rax, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rax]
or esi, 32
neg cl
xor bl, sil
and rdx, 0b1111111111111 # instrumentation
imul esi, dword ptr [r14 + rdx], 1
and rax, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rax], 0
and rcx, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rcx]
mov dl, dil
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], 1 # instrumentation
and rdi, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
movzx rdx, byte ptr [r14 + rdi]
cmovnle di, ax
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], 110
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], -60
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rbx]
sub al, cl
and rdx, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rdx], 0
and rdx, 0b1111111111111 # instrumentation
cmovno ecx, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rdx], 0
imul rcx, rcx
xor edi, 127
btc rdx, rdi
test al, 18
and rcx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsr ax, word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdi], 13
and rsi, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rdx], edx
add al, -82
sub dil, -28
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], dl
btr bx, bx
and rsi, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rsi]
adc bl, bl
sbb al, cl
sub ax, ax
and rsi, 0b1111111111111 # instrumentation
and rax, 0b1111111111111 # instrumentation
add dword ptr [r14 + rax], 67
and rdi, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
cmovz dx, word ptr [r14 + rdi]
mov cl, dl
and rax, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rax], 93
cmovno ecx, edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
