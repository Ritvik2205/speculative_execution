.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rdi]
lea dx, qword ptr [rdx]
cmp di, 15
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], -115
add dl, -98 # instrumentation
and rdx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rdx], di
jbe .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdx], 46
sbb al, cl
sets sil
and ax, -22629
lea bx, qword ptr [rdx + rax + 45]
or cl, -62
and rcx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], dil
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
add dl, 113 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
