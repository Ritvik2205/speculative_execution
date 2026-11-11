.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea si, qword ptr [rsi]
sbb al, dil
sub rax, 1715032616
jl .bb_0.1
jmp .bb_0.2
.bb_0.1:
and cl, cl
and rax, 0b1111111111111 # instrumentation
imul rsi, qword ptr [r14 + rax], 35
jmp .bb_0.2
.bb_0.2:
xor al, 16
jmp .bb_0.3
.bb_0.3:
and rbx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rbx], 55
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
