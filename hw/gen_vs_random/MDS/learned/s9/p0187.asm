.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr dx, ax
and rdi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdi], 4
and rbx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rbx], 1
test al, dil
and rdx, 0b1111111111111 # instrumentation
cmovp rdi, qword ptr [r14 + rdx]
test al, 22
btr cx, si
cmovle si, cx
test eax, -1634766116
jmp .bb_0.1
.bb_0.1:
test eax, -409834435
jmp .bb_0.2
.bb_0.2:
xor dil, 8
and rax, 4
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], -22
and ecx, -104
or rax, -1523798580
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
