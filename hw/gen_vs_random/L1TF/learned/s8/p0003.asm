.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, 84
and bx, 92
and rsi, 0b1111111111111 # instrumentation
cmovz cx, word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
imul ecx, dword ptr [r14 + rsi], 86
jb .bb_0.1
jmp .bb_0.2
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
cmp si, 2
cmovnp dx, cx
or al, -5
xor cl, dil
or al, -57
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 67
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
