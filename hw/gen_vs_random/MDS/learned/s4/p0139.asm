.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dl, 85
or dl, -89
bts ax, 22
or bx, 52
or sil, dl
or rax, -689609688
and rax, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rax]
xor cl, dl
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rcx], 5
xor al, -19
test cl, 73
test edx, -372470678
and rsi, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
