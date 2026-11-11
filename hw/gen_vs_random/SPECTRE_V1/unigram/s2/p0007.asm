.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 3
and rdi, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
adc word ptr [r14 + rsi], cx
and rdi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdi], 2
test dl, -7
sub sil, -18
and rbx, 0b1111111111111 # instrumentation
cmovno ecx, dword ptr [r14 + rbx]
or bx, bx
jb .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], dil
mov bl, dil
or rax, -1571963467
and rdi, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rdi]
add dx, ax
and rax, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rax], -126
and rdi, 0b1111111111111 # instrumentation
cmovnbe edi, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
