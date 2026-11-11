.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmovo edx, dword ptr [r14 + rcx]
or si, 0b1000000000000000 # instrumentation
bsf si, si
add cl, cl
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], eax
and rsi, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 52
imul bx, di
and rcx, 0b1111111111111 # instrumentation
cmovnbe rcx, qword ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rax]
add cl, -42 # instrumentation
adc sil, al
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 1
sub dl, dl
and rcx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rcx], dx
and rax, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rax], 73
and rdi, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rdi], 26
dec edx
and rcx, 0b1111111111111 # instrumentation
cmovp esi, dword ptr [r14 + rcx]
adc bl, 89
xchg ecx, edx
imul di, bx, 19
and rax, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
btc dword ptr [r14 + rax], esi
and rsi, 0b1111111111111 # instrumentation
cmovnbe cx, word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
btr word ptr [r14 + rdi], ax
test bl, dl
and rsi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rsi], -42
sub dl, dil
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rbx], -29
and rsi, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], -93
and rsi, 0b1111111111111 # instrumentation
movzx rdx, word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000000000000000 # instrumentation
bsf dx, word ptr [r14 + rdx]
or esi, eax
btc ax, 10
mov sil, sil
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 0
mov edx, 16
and rbx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rbx], 94
and rax, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
btc word ptr [r14 + rax], ax
sub al, 50
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], 100
and rbx, 0b1111111111111 # instrumentation
cmovbe dx, word ptr [r14 + rbx]
xor al, dil
sub cx, 16
and rdi, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
btc qword ptr [r14 + rdi], rsi
sbb al, sil
xor sil, 56
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
