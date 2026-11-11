.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor bx, -65
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], 69
xor ax, 15671
dec al
sub bx, 24
cmovno cx, si
and di, dx
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], al
cmovnp eax, esi
sbb cl, 127
sub bx, dx
mov sil, sil
btc rax, rdi
xchg eax, eax
and rax, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdi], dl
cmovnle eax, ebx
sbb eax, 1002977021
and rdi, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
adc di, word ptr [r14 + rcx]
and rsi, rax
xor ax, 13329
and rsi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rsi], rbx
dec dx
sub al, 0
and rdx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], rdi
imul ax, di, 101
cmp cl, cl
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
and rsi, 0b1111111111111 # instrumentation
cmovl ecx, dword ptr [r14 + rsi]
sub ax, 6579
mov bl, dl
not rcx
or dl, cl
cmp cl, dl
sub al, 86
and rcx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rcx], edi
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], al
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], rax
and rbx, 0b1111111111111 # instrumentation
cmovnl edx, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
neg word ptr [r14 + rax]
add bx, si
imul rsi, rbx, -126
and rdx, 0b1111111111111 # instrumentation
sbb bl, byte ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], -79
and rdx, 0b1111111111111 # instrumentation
cmovno rdi, qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
