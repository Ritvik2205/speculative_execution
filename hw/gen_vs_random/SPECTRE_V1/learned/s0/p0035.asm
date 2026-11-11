.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xchg edi, eax
dec dl
and rsi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rsi], cl
jl .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
cmovle rcx, qword ptr [r14 + rax]
add al, -72
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
