.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub bx, dx
and rsi, rax
cmp cl, cl
xor bx, 106
and rax, 0b1111111111111 # instrumentation
neg word ptr [r14 + rax]
cmovno cx, si
and rdx, 0b1111111111111 # instrumentation
cmovno rdi, qword ptr [r14 + rdx]
cmovnp eax, esi
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], al
sub bx, 24
sbb cl, 45
and rsi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rsi], rbx
add bx, si
xchg eax, eax
xor ax, 45
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
sub al, 63
sbb eax, -141178938
cmovnle eax, ebx
and rax, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rcx], edi
cmovz edi, edx
cmovp si, ax
xor dl, bl
test ax, ax
and rcx, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
bt word ptr [r14 + rcx], dx
or edx, 1 # instrumentation
add al, 49 # instrumentation
adc dl, cl
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], al
adc cl, bl
cmovnle si, di
and rbx, 0b1111111111111 # instrumentation
sub rdx, qword ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rax], 1
imul eax, ebx, -12
and rax, 0b1111111111111 # instrumentation
dec dword ptr [r14 + rax]
and sil, -84
and rcx, 0b1111111111111 # instrumentation
cmovnbe ecx, dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmovnle rcx, qword ptr [r14 + rcx]
sub rax, -1066968986
btr si, 108
and rdi, 0b1111111111111 # instrumentation
imul edi, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rcx], -87
add dl, 1 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnz rcx, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdx]
neg rcx
and rax, 0b1111111111111 # instrumentation
adc si, word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
