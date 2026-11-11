.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub bx, dx
and rsi, rax
cmp cl, cl
xor bx, 59
and rax, 0b1111111111111 # instrumentation
neg word ptr [r14 + rax]
cmovno cx, si
and rdx, 0b1111111111111 # instrumentation
cmovno rdi, qword ptr [r14 + rdx]
cmovnp eax, esi
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], al
sub bx, 24
sbb cl, -69
and rsi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rsi], rbx
add bx, si
xchg eax, eax
xor ax, -29507
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rbx]
imul rsi, rbx, -126
and rdi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdi], dl
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], rax
sub al, 59
sbb eax, -747044528
cmovnle eax, ebx
and rax, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rcx], edi
mov bl, dl
cmp cl, dl
and rsi, 0b1111111111111 # instrumentation
cmovl ecx, dword ptr [r14 + rsi]
sub al, 29
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
xor ax, 13329
and rdx, 0b1111111111111 # instrumentation
sbb bl, byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rdx]
dec dx
or dl, cl
and di, dx
dec al
mov sil, sil
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], -12
and rcx, 0b1111111111111 # instrumentation
adc di, word ptr [r14 + rcx]
imul ax, di, 101
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], rdi
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], al
not rcx
and rdi, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rdi]
sub ax, -1908
btc rax, rdi
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], 69
and rbx, 0b1111111111111 # instrumentation
cmovnl edx, dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
