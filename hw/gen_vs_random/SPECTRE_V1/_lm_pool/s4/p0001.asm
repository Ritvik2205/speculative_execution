.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdx], -31
jns .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
sbb esi, dword ptr [r14 + rax]
jl .bb_0.2
jmp .bb_0.3
.bb_0.2:
cmovz ebx, eax
and rdx, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rdx]
sbb al, cl
sub rax, -1628299544
jns .bb_0.3
jmp .exit_0
.bb_0.3:
add al, cl
sbb cl, 105
and rax, 0b1111111111111 # instrumentation
adc dx, word ptr [r14 + rax]
sbb esi, 17
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
