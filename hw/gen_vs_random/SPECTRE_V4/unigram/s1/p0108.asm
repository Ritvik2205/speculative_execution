.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 116 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnl rbx, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], -92
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], 89
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], 71
imul cl
and rbx, 0b1111111111111 # instrumentation
inc word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 81
and rbx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rbx], 7
xor sil, dl
and rdx, 0b1111111111111 # instrumentation
sub rdx, qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rcx], -71
add cl, 122 # instrumentation
cmovz rcx, rdi
add cx, 2
test sil, 24
test cl, dl
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], 120
and rdx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rdx]
cmovnl rbx, rax
xor sil, 56
imul edx, esi, 90
cmovns bx, bx
add edi, eax
add sil, bl
add al, sil
and rax, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rax]
movzx rdx, ax
add rax, rbx
or bx, 0b1000000000000000 # instrumentation
bsf bx, bx
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rcx]
dec rdi
cmovb ax, ax
and rcx, 0b1111111111111 # instrumentation
sbb rax, qword ptr [r14 + rcx]
cmovs cx, cx
movzx ebx, sil
imul bx
not dl
add cl, -21 # instrumentation
adc rdi, 5
mov ebx, 66
adc esi, 90
imul cl
add al, al
and rdx, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rdx], 36
imul dx
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000000000000000 # instrumentation
bsf dx, word ptr [r14 + rdx]
adc al, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
