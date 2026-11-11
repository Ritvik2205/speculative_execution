.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, -7
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rcx]
bt ax, bx
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], cl
and rdx, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rdx]
xor rax, -345061362
and ax, 339
test dl, -85
xor dl, -59
jmp .bb_0.2
.bb_0.2:
and rsi, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rcx
jmp .bb_0.3
.bb_0.3:
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], eax
test dl, cl
xor al, -19
xor dl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
