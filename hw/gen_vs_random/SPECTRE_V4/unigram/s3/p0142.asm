.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], al
and rdx, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rax], rax
test sil, 68
cmovnbe eax, ecx
and rdi, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rdi], 67
add rsi, 68
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dl
add dil, 87 # instrumentation
cmovz eax, edi
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], edi
add bl, -101 # instrumentation
cmovz ecx, ecx
or rbx, rsi
and rax, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdx], 37
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 17
and rax, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
imul rcx, qword ptr [r14 + rbx], 45
test al, bl
bt si, 114
bts di, 72
neg eax
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], 109
xchg ebx, esi
dec dl
and rdx, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
movzx rdx, word ptr [r14 + rax]
cmp cl, bl
add cl, -9
add ax, 6694
cmp bl, 12
bts ebx, ebx
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], cl
test cl, cl
test sil, 16
add dl, dl
and ax, cx
or sil, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv sil
and rcx, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rcx], -31
and rax, 0b1111111111111 # instrumentation
cmovnle rsi, qword ptr [r14 + rax]
bts bx, 102
xor rax, rbx
and rax, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rdi]
dec ebx
cmp rdx, rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
