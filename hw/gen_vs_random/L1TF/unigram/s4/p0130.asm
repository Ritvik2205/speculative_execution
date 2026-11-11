.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov al, dl
xor ecx, 37
mov ax, 40
or sil, bl
and rax, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rax], 109
and rdi, 0b1111111111111 # instrumentation
imul edi, dword ptr [r14 + rdi], 67
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], 52
and rcx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rcx], -25
and rcx, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmovnb cx, word ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
cmovle ecx, dword ptr [r14 + rsi]
add bl, 108 # instrumentation
setl bl
add cl, 44 # instrumentation
cmovns bx, di
or ecx, 1 # instrumentation
and edx, ecx # instrumentation
shr edx, 1 # instrumentation
div ecx
and rax, 0b1111111111111 # instrumentation
and eax, dword ptr [r14 + rax]
mov edx, edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
