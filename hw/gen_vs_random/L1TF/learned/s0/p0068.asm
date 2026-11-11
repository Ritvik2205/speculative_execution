.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea ax, qword ptr [rax]
sbb cl, -11
sub di, cx
test al, -70
and rax, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rax]
and al, -68
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 0
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], -106
cmovno rax, rdx
jmp .bb_0.1
.bb_0.1:
add al, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
