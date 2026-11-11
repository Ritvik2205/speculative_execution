.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dil, al
test sil, al
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], cl
xor al, bl
or cx, -42
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], cl
test cl, sil
and rdi, 26
test al, -81
or al, 16
xor ax, -5889
test rsi, 57
and rax, 1886208862
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
