.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or edi, esi
cmp rsi, 53
mov cl, dl
and rsi, 0b1111111111111 # instrumentation
adc dx, word ptr [r14 + rsi]
cmp ax, -11439
and al, 33
jns .bb_0.1
jmp .exit_0
.bb_0.1:
lea bx, qword ptr [rdx + rsi]
and rax, 0b1111111111111 # instrumentation
add rbx, qword ptr [r14 + rax]
test bl, -8
sub bx, 58
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
