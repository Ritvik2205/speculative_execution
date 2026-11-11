.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovp ax, cx
lea bx, qword ptr [rax]
and rax, 0b1111111111111 # instrumentation
add dword ptr [r14 + rax], 1
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
and rbx, 0b1111111111111 # instrumentation
add rbx, qword ptr [r14 + rbx]
inc sil
add dl, -47 # instrumentation
sbb sil, 27
lea rbx, qword ptr [rax + rsi]
not esi
add ebx, -116
jb .bb_0.1
jmp .exit_0
.bb_0.1:
add al, 72 # instrumentation
cmovns bx, ax
and rax, 0b1111111111111 # instrumentation
cmovb edi, dword ptr [r14 + rax]
or dx, 0b1000000000000000 # instrumentation
bsf dx, dx
or al, 19
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], al
and rdi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdi], 90
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
