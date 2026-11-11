.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
sub word ptr [r14 + rax], 27
or rcx, 54
and rax, 0b1111111111111 # instrumentation
cmovp bx, word ptr [r14 + rax]
xor rsi, -117
xor sil, -126
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], -337720409
or al, -58
jmp .bb_0.1
.bb_0.1:
or rax, 1020005579
and ax, 13090
jmp .bb_0.2
.bb_0.2:
and rcx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rcx]
xor sil, -46
and rdx, 51
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
