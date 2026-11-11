.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc dl
test al, -84
and rdx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rax]
and cx, -79
jmp .bb_0.1
.bb_0.1:
btc dx, bx
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], -1923530546
and dl, -86
and rax, 0b1111111111111 # instrumentation
cmovbe cx, word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
