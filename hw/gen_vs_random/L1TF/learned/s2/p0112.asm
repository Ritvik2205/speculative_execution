.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, bl
and rcx, 0b1111111111111 # instrumentation
cmovs rax, qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmovbe di, word ptr [r14 + rsi]
and ax, 37
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rdx], -119
cmp dil, bl
jmp .bb_0.2
.bb_0.2:
lea rbx, qword ptr [rdx]
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], -1923530546
xor al, 38
jmp .bb_0.3
.bb_0.3:
test bl, 12
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
