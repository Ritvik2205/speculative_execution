.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea si, qword ptr [rsi]
mul rcx
and bl, cl
sbb al, al
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], dx
cmp sil, -11
sbb dl, bl
sub cl, -49
and rax, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rax]
sub dil, -39
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
