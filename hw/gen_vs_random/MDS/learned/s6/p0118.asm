.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, bl
or rcx, -17
or al, bl
and rsi, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rsi]
test bl, -14
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 3
btr bx, cx
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], dil
and rsi, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rsi]
or al, 24
xor dl, -59
or al, -24
and rax, -1931765367
test eax, -1634766116
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
