.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 4
test dil, -5
cmovnz eax, ebx
add bx, 1
and eax, -1555813586
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], dil
sub bl, dil
cmp ax, -18179
cmovz edi, ebx
and rdi, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rdi]
test al, dil
xor rdx, 106
xchg rcx, rdi
xor dil, bl
and ax, 25163
and rbx, 0b1111111111111 # instrumentation
sbb dl, byte ptr [r14 + rbx]
sub al, dil
and rax, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rax]
and dl, -104
and al, -87
and dil, 8
and rdi, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rdi], 17
mov dl, al
bswap edx
or al, dl
and rdi, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rdi]
mov dil, al
cmp al, -1
movsx di, sil
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], dl
add edx, 89
sbb ax, 7207
and si, -74
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
