.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dx, cx
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rax], rsi
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], 1
xor bl, -61
or bl, -52
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 2
xor dil, al
test dl, cl
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], sil
or ax, -7150
test edx, -372470678
or cl, sil
test al, bl
and rdx, 0b1111111111111 # instrumentation
cmovp bx, word ptr [r14 + rdx]
jmp .bb_0.2
.bb_0.2:
bt cx, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
