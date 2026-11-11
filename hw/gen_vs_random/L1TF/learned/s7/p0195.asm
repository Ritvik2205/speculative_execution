.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or cl, sil
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], dil
or dl, bl
btc bx, cx
xor dl, al
sbb cl, -11
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 73
and rbx, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rbx]
adc al, -6
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
