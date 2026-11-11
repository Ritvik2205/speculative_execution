.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
dec cx
sbb bl, cl
sbb dil, 71
xor al, dil
xor al, dil
and rbx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rbx], 89
and rcx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], dl
and rdx, 0b1111111111111 # instrumentation
sbb al, byte ptr [r14 + rdx]
sub di, bx
and rcx, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdi], ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
