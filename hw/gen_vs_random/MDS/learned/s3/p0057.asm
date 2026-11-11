.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor dil, 8
test al, 127
and rcx, 0b1111111111111 # instrumentation
cmovp bx, word ptr [r14 + rcx]
and dil, bl
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], -92
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], dl
jmp .bb_0.2
.bb_0.2:
btc ax, 22
or dil, bl
and rdi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdi], cx
xor al, bl
and rdx, 21
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
