.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 4
or rdx, -48
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], al
btr ecx, ebx
xor al, -89
xor dil, -70
jmp .bb_0.1
.bb_0.1:
test dl, -85
bt ax, bx
and cl, -19
test edi, -1252846009
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], -7
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], 1238525395
and rsi, 0b1111111111111 # instrumentation
cmovl edx, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovp edx, dword ptr [r14 + rsi]
or cl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
