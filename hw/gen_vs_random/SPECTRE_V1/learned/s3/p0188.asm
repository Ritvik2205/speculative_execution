.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rcx], si
sub al, dil
xor ax, 913
lea dx, qword ptr [rcx]
and dil, -114
and cl, bl
sub al, bl
jle .bb_0.1
jmp .exit_0
.bb_0.1:
sbb al, cl
and rsi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rsi], -122
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
