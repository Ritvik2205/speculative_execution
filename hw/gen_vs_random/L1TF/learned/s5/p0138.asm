.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, -103 # instrumentation
cmovbe bx, bx
xor ax, 22976
and rdx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rdx]
sub bl, -96
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], 94
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rax]
and dil, dl
cmp al, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
