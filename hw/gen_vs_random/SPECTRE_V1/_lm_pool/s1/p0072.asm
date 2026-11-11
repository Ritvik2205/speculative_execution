.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], cl
xchg eax, edx
and rbx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rbx], rcx
sub dil, dl
and dl, cl
and bl, dil
sub dil, bl
and rbx, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rbx]
mov cl, dl
lea dx, qword ptr [rbx + rdx + 56387]
sbb al, dl
lea si, qword ptr [rbx + rax + 18]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
