.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sbb esi, edx
and rdx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdx], edx
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], dx
test al, bl
imul eax, edx
and rax, 0b1111111111000 # instrumentation
lock dec dword ptr [r14 + rax]
and rbx, 95
cmovno rbx, rdi
and rsi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rsi], rax
add di, 49
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], dl
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000 # instrumentation
and byte ptr [r14 + rax], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], sil
and rdi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdi], 4
cmovp rbx, rbx
or al, 1 # instrumentation
mov ax, 1 # instrumentation
div al
and rcx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rcx], 2
and dx, -107
cmovl rax, rsi
and rax, 0b1111111111111 # instrumentation
xor di, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], 109
sub al, 63
xchg sil, al
and rcx, 0b1111111111111 # instrumentation
xor dx, word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmovnz esi, dword ptr [r14 + rcx]
add bl, 54 # instrumentation
and rbx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rbx]
or ax, 1 # instrumentation
and dx, ax # instrumentation
shr dx, 1 # instrumentation
div ax
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], 98
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -2089960014
mov rax, -8100960678429780222
and rdi, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock bts dword ptr [r14 + rdi], ebx
or rdi, rbx
and rax, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rax], rdx
and rdx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdx], 26
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
sub al, 96
bt edi, esi
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], 80
and rdx, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rdx], 0
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], dl
cmovnle ax, dx
and rdx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rdx], rcx
and rsi, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rsi], 70
and sil, -84
mov si, dx
mul dl
and rax, 0b1111111111111 # instrumentation
cmovnl rsi, qword ptr [r14 + rax]
xor bl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
