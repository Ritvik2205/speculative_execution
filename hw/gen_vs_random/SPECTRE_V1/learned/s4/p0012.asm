.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor al, -74
xchg edi, edx
sbb cl, al
and rax, 0b1111111111111 # instrumentation
sub rsi, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovnb cx, word ptr [r14 + rax]
dec al
jp .exit_0
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
