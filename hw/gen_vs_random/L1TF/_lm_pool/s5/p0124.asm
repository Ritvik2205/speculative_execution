.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc sil
xor al, 38
and rax, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rax], 112
sub dil, -39
jnz .bb_0.1
jmp .bb_0.2
.bb_0.1:
xor eax, 965442135
test al, -84
sbb dl, cl
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], 56
or di, 21
jmp .bb_0.3
.bb_0.3:
bswap rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
