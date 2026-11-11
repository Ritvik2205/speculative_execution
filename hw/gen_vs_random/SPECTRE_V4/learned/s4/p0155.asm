.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or di, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv di
and rdi, 0b1111111111111 # instrumentation
add dword ptr [r14 + rdi], ebx
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], bl
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], 8
cmovnp di, bx
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], 84
sub al, bl
sub cl, -74
and rax, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rax], 5
and rdx, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rdx]
test al, cl
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], 23
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], bx
sub al, dl
and rsi, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rdx], 57
test rax, -331426050
and rax, 0b1111111111111 # instrumentation
cmovnp ax, word ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock btr word ptr [r14 + rsi], bx
add dl, -26 # instrumentation
btr edx, 30
inc rsi
and rbx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rbx]
xchg eax, ecx
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], 120
cmovnbe ebx, eax
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000000000000000 # instrumentation
bsf di, word ptr [r14 + rdi]
xchg al, al
cmp al, dl
and rax, 0b1111111111111 # instrumentation
cmovnp ecx, dword ptr [r14 + rax]
add dil, 82
movzx rax, cl
or esi, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv esi
and rbx, 0b1111111111111 # instrumentation
imul rcx, qword ptr [r14 + rbx], 37
and rbx, 0b1111111111111 # instrumentation
add eax, dword ptr [r14 + rbx]
test rcx, -2118888343
and rdi, -2
and rbx, 0b1111111111111 # instrumentation
cmp rbx, qword ptr [r14 + rbx]
movzx ecx, bl
and rsi, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rsi]
xor di, -43
xor eax, 181978569
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], 29
bswap edi
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], bl
and rdi, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdi], cx
imul cl
or al, 109
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
