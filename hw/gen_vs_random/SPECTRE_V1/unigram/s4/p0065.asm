.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor edi, eax
lea rax, qword ptr [rdi + rax]
and rdi, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rdi], bx
xor sil, -33
or al, 100
mov dl, cl
mov cl, bl
cmp sil, sil
imul rbx, rax, 96
js .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
adc rax, qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 1 # instrumentation
and dx, word ptr [r14 + rsi] # instrumentation
shr dx, 1 # instrumentation
div word ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdx], dl
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], dil
sbb edx, -8
and rdx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdx], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
