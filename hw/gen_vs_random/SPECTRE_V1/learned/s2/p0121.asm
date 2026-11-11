.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea ax, qword ptr [rax]
and rcx, 0b1111111111111 # instrumentation
movsx esi, word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rcx]
sbb al, -14
xchg ecx, eax
js .bb_0.1
jmp .exit_0
.bb_0.1:
add cl, dil
sub cl, bl
test dil, -116
and rdx, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rdx]
lea dx, qword ptr [rax + rcx]
sbb al, -112
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
