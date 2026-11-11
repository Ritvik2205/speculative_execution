.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or rax, -3
and rdi, 0b1111111111111 # instrumentation
inc word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], 15
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 3
and cl, sil
and rdi, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rdi]
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
adc dx, ax
lea dx, qword ptr [rsi + rax]
add al, -62 # instrumentation
setnb al
or ax, bx
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rsi]
sbb edx, 105
and rdi, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rdi], rax
lea ebx, qword ptr [rbx]
or al, 100
imul rcx, rdx, 2
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
