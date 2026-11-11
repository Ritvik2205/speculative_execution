.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dil, -103 # instrumentation
cmovbe di, di
jmp .bb_0.1
.bb_0.1:
lea ax, qword ptr [rax]
and rcx, 0b1111111111111 # instrumentation
xor di, word ptr [r14 + rcx]
jmp .bb_0.2
.bb_0.2:
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], edx
and rdx, 0b1111111111111 # instrumentation
cmovno rax, qword ptr [r14 + rdx]
and cx, 127
lea ax, qword ptr [rcx + rdx + 87]
btc di, bx
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
