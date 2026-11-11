.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -31 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rsi]
sub dl, al
jns .bb_0.1
jmp .bb_0.2
.bb_0.1:
sub al, cl
and rdx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rdx]
sub dl, 96
sbb al, dl
jle .bb_0.2
jmp .bb_0.3
.bb_0.2:
jnle .bb_0.3
jmp .exit_0
.bb_0.3:
add bx, -65
and rax, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
