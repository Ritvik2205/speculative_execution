.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdx], 11
cmp rcx, 35
jmp .bb_0.1
.bb_0.1:
or dl, -92
jmp .bb_0.2
.bb_0.2:
lea ax, qword ptr [rdx]
jmp .bb_0.3
.bb_0.3:
and rcx, 0b1111111111111 # instrumentation
sbb dx, word ptr [r14 + rcx]
and dl, -86
xor di, 49
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
