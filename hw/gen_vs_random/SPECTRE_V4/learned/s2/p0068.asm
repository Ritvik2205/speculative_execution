.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rsi], 86
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], dx
and rdi, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rdi]
mul ax
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], cl
imul di, dx
cmp cl, cl
and rdi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdi], al
and rcx, 0b1111111111111 # instrumentation
cmovbe si, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovl bx, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rsi], 5
and rdx, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock btr word ptr [r14 + rdx], si
sbb rax, 183833426
mov al, sil
xor dl, cl
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsf rcx, qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
