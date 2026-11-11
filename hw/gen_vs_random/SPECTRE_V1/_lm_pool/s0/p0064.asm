.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cl, -33
and cx, 96
sub al, dl
sub bl, al
lea rdx, qword ptr [rax + rsi + 20]
cmp cl, 84
lea rax, qword ptr [rdi]
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rbx], 69
btc bx, cx
add al, sil
jle .bb_0.2
jmp .exit_0
.bb_0.2:
sub rcx, 13
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
