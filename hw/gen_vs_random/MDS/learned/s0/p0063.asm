.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 3
xor cl, 15
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], bl
or bl, cl
and rax, 4
xor cl, bl
jmp .bb_0.1
.bb_0.1:
test bx, 25542
and rdi, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rdi]
jmp .bb_0.2
.bb_0.2:
jmp .bb_0.3
.bb_0.3:
and rsi, 0b1111111111111 # instrumentation
cmovbe rdi, qword ptr [r14 + rsi]
not cl
jmp .bb_0.4
.bb_0.4:
btc di, 164
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
