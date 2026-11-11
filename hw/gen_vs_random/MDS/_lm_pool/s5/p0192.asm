.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
btc dword ptr [r14 + rsi], eax
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], cl
jmp .bb_0.1
.bb_0.1:
xor al, 122
test al, dl
or al, -78
and bx, 35
and dil, -39
and rcx, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rcx]
or al, al
test al, 127
or sil, -78
jmp .bb_0.2
.bb_0.2:
test al, bl
xor cx, -18
or rax, 1461812833
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
