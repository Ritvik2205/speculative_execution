.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor dl, 8
test edx, -372470678
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], bl
or al, 74
xor al, 122
and dil, 125
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], al
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], dil
xor cl, 83
test dil, -80
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
