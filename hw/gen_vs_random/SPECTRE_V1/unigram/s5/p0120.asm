.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
imul eax
xchg bx, di
lea ecx, qword ptr [rdi]
cmp dl, dil
and rdx, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rdx]
bts ax, ax
xor cl, bl
and bx, -118
js .bb_0.1
jmp .exit_0
.bb_0.1:
sbb al, sil
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], -89
dec dl
cmp al, 13
and rax, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rax], rdx
and rcx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rcx], 51
sub al, al
cmovnle cx, di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
