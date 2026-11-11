.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rcx], 113
jle .bb_0.1
jmp .exit_0
.bb_0.1:
cmp sil, bl
sbb al, 104
mov al, dil
and cl, 86
lea bx, qword ptr [rax + rdx]
cmp si, -11
and rsi, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rsi]
bswap rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
