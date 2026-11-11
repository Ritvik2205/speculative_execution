.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor eax, -69
or rax, 0b1000000000000000000000000000000 # instrumentation
bsr rsi, rax
and rax, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rax], 81
cmovbe bx, bx
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
sbb rbx, qword ptr [r14 + rax]
test dil, -126
btr ebx, 75
and rdx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdx], 85
add dl, 70 # instrumentation
sbb al, -81
sbb bl, -88
and rbx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rbx], 22
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], rdx
and ax, 7954
and bx, cx
test rbx, rax
or cl, 105
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
