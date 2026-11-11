.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dil, al
and rsi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rsi], 2
test al, 66
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], dil
and rdx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rdx]
bt eax, edx
and dl, -73
jmp .bb_0.2
.bb_0.2:
and rcx, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rcx]
test cl, cl
and ax, 19224
test ebx, -2015966884
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
