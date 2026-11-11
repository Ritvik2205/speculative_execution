.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmovl ecx, dword ptr [r14 + rsi]
sbb cl, -69
dec al
sub bx, dx
and rdi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdi], dl
btc rax, rdi
cmovnp eax, esi
and rax, 0b1111111111111 # instrumentation
neg word ptr [r14 + rax]
cmovno cx, si
sub ax, 6579
and rbx, 0b1111111111111 # instrumentation
cmovnl edx, dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], al
cmp cl, dl
and rax, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rax]
sbb eax, -141178938
imul ax, di, 101
imul rsi, rbx, -126
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], rdi
xchg eax, eax
xor ax, 30500
and rdx, 0b1111111111111 # instrumentation
cmovno rdi, qword ptr [r14 + rdx]
xor bx, 106
and di, dx
cmovnle eax, ebx
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], -12
add bx, si
xor ax, 45
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
mov bl, dl
dec dx
sub al, 127
cmp cl, cl
or dl, cl
and rdx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rdx]
and rsi, rax
and rcx, 0b1111111111111 # instrumentation
adc di, word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rbx]
not rcx
sub bx, 24
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], -17
sub al, 11
and rcx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rcx], edi
mov sil, sil
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], rax
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], al
and rsi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rsi], rbx
and rdx, 0b1111111111111 # instrumentation
sbb bl, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
