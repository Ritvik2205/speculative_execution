.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], bl
xor cl, 98
or dl, dil
xor al, 9
xor dil, -70
xor ax, -23364
jmp .bb_0.1
.bb_0.1:
xor dl, cl
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], sil
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], rsi
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], -2966447
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 5
or ax, 85
btc bx, 58
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], cl
test cl, 0
or cl, 6
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
