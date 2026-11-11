.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea dx, qword ptr [rdx]
and rsi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rsi], 37
and rcx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rcx]
sub cl, 86
and rcx, 0b1111111111111 # instrumentation
cmovle si, word ptr [r14 + rcx]
xor bl, dl
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], -1923530546
lea rax, qword ptr [rdx + rcx + 1]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
