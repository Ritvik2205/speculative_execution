.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
dec si
sbb sil, -78
xchg rbx, rax
and rax, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rax]
xor dl, 71
jle .bb_0.1
jmp .bb_0.2
.bb_0.1:
cmp cl, sil
lea si, qword ptr [rcx]
sub cl, -21
jmp .bb_0.2
.bb_0.2:
adc bx, 78
sbb dil, -106
setz al
sbb al, 118
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
