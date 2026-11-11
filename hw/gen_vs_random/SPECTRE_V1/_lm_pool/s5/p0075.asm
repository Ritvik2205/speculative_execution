.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea dx, qword ptr [rdx]
sub al, -1
lea rsi, qword ptr [rdx + rdi + 19302]
sub al, dl
jle .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rsi], 9
add dl, cl
sbb al, 118
sub cl, al
lea dx, qword ptr [rbx]
sbb cl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
