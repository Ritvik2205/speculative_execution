.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xchg esi, edx
xchg edi, edx
sbb rax, 342397759
jl .bb_0.1
jmp .bb_0.2
.bb_0.1:
xchg al, dl
jp .bb_0.2
jmp .bb_0.3
.bb_0.2:
and rbx, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rbx]
xchg rax, rdx
jmp .bb_0.3
.bb_0.3:
test dil, -116
sbb bl, dl
or di, -85
test ax, -32457
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
