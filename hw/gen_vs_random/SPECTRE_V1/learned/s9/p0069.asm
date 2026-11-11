.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
and rbx, 0b1111111111111 # instrumentation
cmovnb eax, dword ptr [r14 + rbx]
sbb al, -107
and rdx, 0b1111111111111 # instrumentation
sub bx, word ptr [r14 + rdx]
and dl, -111
lea rdi, qword ptr [rbx]
sub cl, dil
and rcx, 0b1111111111111 # instrumentation
imul rbx, qword ptr [r14 + rcx], 48
lea rax, qword ptr [rbx]
and rcx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
