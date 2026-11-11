.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
sbb sil, -78
jno .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdi], 1
xor cl, dil
cdq
and rax, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rax], 78
jns .bb_0.2
jmp .bb_0.3
.bb_0.2:
jmp .bb_0.3
.bb_0.3:
xchg bl, cl
xchg dl, bl
and rax, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
imul esi, dword ptr [r14 + rdx]
xchg dl, bl
and rdi, 0b1111111111111 # instrumentation
sub sil, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
