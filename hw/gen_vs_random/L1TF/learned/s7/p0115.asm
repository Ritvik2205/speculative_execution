.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 109 # instrumentation
cmovs bx, dx
and rcx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rcx], 73
not dl
sub cl, -49
jmp .bb_0.1
.bb_0.1:
test cl, 13
and rax, 0b1111111111111 # instrumentation
sbb bx, word ptr [r14 + rax]
jmp .bb_0.2
.bb_0.2:
and rcx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rcx]
setz dl
sbb al, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
