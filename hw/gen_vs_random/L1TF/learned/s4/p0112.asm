.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 7
add dil, cl
test dil, -126
jmp .bb_0.1
.bb_0.1:
lea rax, qword ptr [rbx + rdx]
and rsi, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rsi]
jmp .bb_0.2
.bb_0.2:
and rbx, 0b1111111111111 # instrumentation
add rdx, qword ptr [r14 + rbx]
and dil, dl
test cl, 41
bt eax, edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
