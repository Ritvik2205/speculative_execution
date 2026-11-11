.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, al
lea cx, qword ptr [rcx]
js .bb_0.1
jmp .bb_0.2
.bb_0.1:
add sil, -68
test dx, 33
and sil, 52
and rax, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rax]
btc ax, bx
sub rsi, 97
jmp .bb_0.2
.bb_0.2:
jmp .bb_0.3
.bb_0.3:
or al, 19
sbb ebx, 97
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
