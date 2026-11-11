.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dil, cl
cmp eax, 692647572
and rbx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rbx], 92
sbb al, dl
lea ax, qword ptr [rdx]
jns .bb_0.1
jmp .bb_0.2
.bb_0.1:
setnle cl
jmp .bb_0.2
.bb_0.2:
and rdx, 0b1111111111111 # instrumentation
adc sil, byte ptr [r14 + rdx]
sub al, -82
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
