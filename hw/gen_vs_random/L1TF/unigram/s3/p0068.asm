.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc ecx
and rcx, 0b1111111111111 # instrumentation
movzx esi, word ptr [r14 + rcx]
add bl, 104 # instrumentation
and rcx, 0b1111111111111 # instrumentation
sbb bl, byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rsi], 15
and rbx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rbx], -86
test cx, di
and rax, 0b1111111111111 # instrumentation
imul edi, dword ptr [r14 + rax], 35
and rdi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdi]
inc ax
add al, 36 # instrumentation
lea ebx, qword ptr [rbx + rcx + 44]
cmp edi, 19
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], dl
xor di, bx
and rcx, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rcx]
test rsi, rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
