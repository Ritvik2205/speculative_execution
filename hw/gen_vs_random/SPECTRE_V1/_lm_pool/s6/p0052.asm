.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea di, qword ptr [rdi]
sub dil, al
xor bl, -38
and rax, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rax]
jle .bb_0.1
jmp .bb_0.2
.bb_0.1:
mov sil, cl
and cl, 86
sbb al, dil
add bl, cl
lea si, qword ptr [rdi + rdx]
jnz .bb_0.2
jmp .exit_0
.bb_0.2:
xchg dl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
