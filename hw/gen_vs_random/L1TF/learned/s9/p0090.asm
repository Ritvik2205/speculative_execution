.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -122 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovle dx, word ptr [r14 + rax]
sub dil, bl
sub al, -97
and rsi, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rsi]
xor dil, -42
and rdx, 0b1111111111111 # instrumentation
cmovo ebx, dword ptr [r14 + rdx]
test al, -82
jmp .bb_0.1
.bb_0.1:
test rax, rdi
jmp .bb_0.2
.bb_0.2:
cmovbe eax, ebx
and rsi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rsi], 7
not eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
