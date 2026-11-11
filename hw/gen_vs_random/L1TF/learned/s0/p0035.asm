.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -14 # instrumentation
lea ax, qword ptr [rbx + rsi]
sub bl, dil
and eax, -409673666
lea di, qword ptr [rbx + rsi + 74]
and rax, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rax], 109
sbb al, -14
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
sbb dil, byte ptr [r14 + rsi]
jmp .bb_0.2
.bb_0.2:
imul edi, ecx
and rbx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rbx], 20
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
