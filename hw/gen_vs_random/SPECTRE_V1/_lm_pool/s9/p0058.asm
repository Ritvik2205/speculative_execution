.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc rax
xor dil, -37
cmp rax, -72548874
sub rsi, 97
sub dil, -32
and rax, 0b1111111111111 # instrumentation
imul rcx, qword ptr [r14 + rax], 32
or rax, -3
inc dl
sbb cl, 105
and rbx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rbx], sil
test cl, -62
and dil, 98
sbb dil, -93
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
