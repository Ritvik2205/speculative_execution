.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr ax, si
and rbx, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rcx]
btr rcx, 82
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], 1238525395
xor rbx, 89
and rcx, -63
xor ax, 23633
and rsi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rsi], 36
xor ax, -1005
test cl, 73
and rdx, 52
and rsi, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
bts dword ptr [r14 + rsi], edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
