.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, -37
xor al, 16
or dl, cl
cmovb cx, si
jmp .bb_0.1
.bb_0.1:
setle cl
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], esi
jmp .bb_0.2
.bb_0.2:
cbw
and rsi, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rsi]
lea rax, qword ptr [rcx]
cmovb bx, cx
cmp dil, 72
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
