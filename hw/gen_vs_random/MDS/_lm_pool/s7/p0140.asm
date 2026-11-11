.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr cx, dx
and rax, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 2
and rax, 498847670
or sil, cl
xor rax, -1499464454
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], -1734
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], dil
bt cx, dx
jmp .bb_0.1
.bb_0.1:
test rax, -363019044
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 5
and rsi, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rbx], -77
and rbx, 0b1111111111111 # instrumentation
cmovle rsi, qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
