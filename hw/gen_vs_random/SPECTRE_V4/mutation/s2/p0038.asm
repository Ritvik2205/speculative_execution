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
sbb cl, 127
and rsi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rsi], rbx
add bx, si
xchg eax, eax
xor ax, -6064
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
sub al, 11
sbb eax, 1002977021
cmovnle eax, ebx
and rax, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rcx], edi
and rdi, 0b1111111111111 # instrumentation
cmovnle edx, dword ptr [r14 + rdi]
imul ecx, ecx, -3
sub bl, al
cmovp rsi, rcx
add bl, -13 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovb si, word ptr [r14 + rdx]
xor al, 55
and rdx, 0b1111111111111 # instrumentation
movzx edi, byte ptr [r14 + rdx]
bswap rsi
and rcx, 0b1111111111111 # instrumentation
movsx rcx, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
and edx, dword ptr [r14 + rdx]
cmp cl, bl
and rdi, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rdi]
bt dx, 193
mov rdi, rax
imul dl
or esi, edi
and rax, 0b1111111111111 # instrumentation
add qword ptr [r14 + rax], rdi
and rcx, 0b1111111111111 # instrumentation
movsx esi, word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rbx], eax
sub eax, 490935921
dec dl
and rcx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rcx], 0
and rbx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rbx], 6
movsx rdx, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
