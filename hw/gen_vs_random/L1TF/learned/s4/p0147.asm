.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rcx]
lea cx, qword ptr [rdx]
add edx, 56
and rsi, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rsi]
add bl, cl
add cl, -36
and rdx, 0b1111111111111 # instrumentation
and cx, word ptr [r14 + rdx]
test dl, 84
jmp .bb_0.1
.bb_0.1:
cmp bx, -21
test esi, 73
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
