.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dx, 125
test cl, 73
and rdx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bts qword ptr [r14 + rdx], rbx
and dl, sil
and rax, 627810357
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rax], 0
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], bl
or cl, -36
test cl, 54
xor bl, -102
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], cl
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
