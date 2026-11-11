.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub bl, -6
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 9
cmp dil, cl
and dil, 98
jl .bb_0.1
jmp .exit_0
.bb_0.1:
sbb eax, 99727957
lea si, qword ptr [rcx + rbx]
and rsi, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
