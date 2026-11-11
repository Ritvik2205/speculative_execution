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
sbb cl, 12
and rsi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rsi], rbx
add bx, si
xchg eax, eax
xor ax, 13332
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
sub al, 69
sbb eax, 1675303701
cmovnle eax, ebx
and rax, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rcx], edi
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], dl
cmovno rsi, rax
and rax, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
mul cx
and rax, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rax]
sub eax, 490935921
and rdi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdi], 3
and rbx, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rbx]
cmovp edi, edx
and rdx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rdx], edx
and rsi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rsi], rax
and rdi, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rdi]
cmp bl, cl
add rbx, rcx
adc bl, -58
movzx eax, al
and rbx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
btc qword ptr [r14 + rbx], rcx
and rsi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rsi], -104
add ax, ax
mul ax
not dl
xchg dl, dl
and rcx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
