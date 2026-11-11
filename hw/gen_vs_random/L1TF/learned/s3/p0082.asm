.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea cx, qword ptr [rcx]
xor si, bx
and rsi, 0b1111111111111 # instrumentation
and rdi, qword ptr [r14 + rsi]
and al, -68
test cl, dl
jmp .bb_0.1
.bb_0.1:
mov cx, 100
sub dl, 105
lea cx, qword ptr [rbx + rsi + 48821]
test dl, 84
jmp .bb_0.2
.bb_0.2:
and rdx, 0b1111111111111 # instrumentation
add rbx, qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
