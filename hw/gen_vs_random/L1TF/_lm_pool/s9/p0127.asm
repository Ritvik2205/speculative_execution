.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -122 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovle bx, word ptr [r14 + rdx]
inc al
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 3
lea bx, qword ptr [rcx]
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], 86
and bl, 89
and rbx, 0b1111111111111 # instrumentation
xor ax, word ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
btc dx, cx
and cx, 127
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
