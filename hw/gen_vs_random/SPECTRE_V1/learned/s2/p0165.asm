.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rcx]
imul al
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
lea rdi, qword ptr [rdx + rsi + 96]
and sil, 52
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dil
xor sil, cl
and rax, 0b1111111111111 # instrumentation
mov di, word ptr [r14 + rax]
sbb eax, -417098439
sbb ebx, 16
and dl, al
sbb dil, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
