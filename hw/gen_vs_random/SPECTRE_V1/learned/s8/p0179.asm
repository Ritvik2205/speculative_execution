.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
sub sil, byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 4
xchg cl, cl
or esi, -74
sub cl, al
lea rax, qword ptr [rbx + rbx + 3]
sbb al, cl
cmp rdx, -19
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], dil
lea di, qword ptr [rcx + rax]
lea ax, qword ptr [rdi + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
