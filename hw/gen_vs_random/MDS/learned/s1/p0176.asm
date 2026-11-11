.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bx, cx
or cl, dil
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], dil
test rax, 1207043993
or al, 74
and ax, 31082
or rbx, -77
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
and eax, 454700988
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], bl
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], 1782121130
jmp .bb_0.3
.bb_0.3:
or bx, 79
and rsi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rsi], 13
and al, -54
and rsi, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rsi]
test al, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
