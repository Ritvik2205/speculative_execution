.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovl rdx, rsi
cmovns edx, esi
xor dl, dil
not al
and rbx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rbx], cx
movzx eax, dl
or cx, 0b1000 # instrumentation
and cl, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv cx
or bx, 1 # instrumentation
and dx, bx # instrumentation
shr dx, 1 # instrumentation
div bx
test eax, -544019457
and rsi, 0b1111111111000 # instrumentation
and rdi, 0b111 # instrumentation
lock bts qword ptr [r14 + rsi], rdi
and rsi, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rsi]
or eax, 0b1000000000000000000000000000000 # instrumentation
bsf ecx, eax
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], 45
or dl, 56
cmovnbe eax, ebx
and rbx, 0b1111111111111 # instrumentation
adc eax, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovnb eax, dword ptr [r14 + rbx]
or cl, cl
mov sil, dl
sbb al, -101
and rsi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rsi], 3
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], dx
and rdi, 0b1111111111111 # instrumentation
sub sil, byte ptr [r14 + rdi]
or esi, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv esi
and rax, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rax], 97
sub rdx, 22
sub al, al
sub bl, bl
add rsi, 92
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 0
cmp dx, ax
and rdx, 0b1111111111111 # instrumentation
movzx ebx, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdi]
imul bx
and rax, 0b1111111111111 # instrumentation
cmovns ax, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], di
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], rdi
and cx, 17
and rax, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rax], rsi
and rdi, 0b1111111111000 # instrumentation
and rsi, 0b111 # instrumentation
lock btc qword ptr [r14 + rdi], rsi
add sil, al
or bx, 1 # instrumentation
and dx, bx # instrumentation
shr dx, 1 # instrumentation
div bx
and rdi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsf rcx, qword ptr [r14 + rsi]
sub al, dil
and rax, 0b1111111111111 # instrumentation
sbb esi, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
