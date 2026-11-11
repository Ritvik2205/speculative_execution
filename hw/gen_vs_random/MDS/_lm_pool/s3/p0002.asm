.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bx, 40
and rbx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rbx], 6
test al, cl
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rsi], 6
bt dx, bx
and rsi, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], cl
or bx, 6
xor al, 55
jmp .bb_0.2
.bb_0.2:
and rsi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rsi], 1
jmp .bb_0.3
.bb_0.3:
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], -28205
or cl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
