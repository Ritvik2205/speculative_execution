.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -8 # instrumentation
xchg dil, cl
adc rax, rdx
not al
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], bl
btr ax, 109
test al, 18
and rsi, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rsi], 84
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], cl
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
add byte ptr [r14 + rax], 58
and rdi, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rdi]
and bl, -119
and rdx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdx], 53
and rax, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock btc word ptr [r14 + rax], bx
sub cx, -114
mov esi, 1695134926
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000000000000000 # instrumentation
bsf ax, word ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rax], cx
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], rbx
xchg bx, ax
or bx, 0b1000000000000000 # instrumentation
bsr ax, bx
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], ebx
and rax, 0b1111111111000 # instrumentation
lock inc dword ptr [r14 + rax]
movzx di, al
and rcx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
sbb ecx, dword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
sbb al, byte ptr [r14 + rbx]
cmovle rax, rdx
add dl, -79 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnp edi, dword ptr [r14 + rcx]
xor al, 23
cmovle si, cx
imul di, ax, 96
or dil, 1 # instrumentation
mov ax, 1 # instrumentation
div dil
adc rdi, rsi
movzx ax, dl
and rdx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdx], rsi
cmovl ax, dx
and rdx, 0b1111111111111 # instrumentation
cmovle rsi, qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
neg word ptr [r14 + rdx]
xor dx, -43
and rsi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rsi], 58
and rbx, 0b1111111111111 # instrumentation
neg word ptr [r14 + rbx]
movsx dx, dl
sub si, ax
mul ecx
cmovle edx, edi
and rcx, 0b1111111111111 # instrumentation
cmovl rdi, qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
