.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea bx, qword ptr [rbx]
lea bx, qword ptr [rcx]
test al, -56
and rsi, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 7
test dl, 84
test dil, -126
sbb bl, dil
and rsi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
not dword ptr [r14 + rcx]
or al, -57
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
