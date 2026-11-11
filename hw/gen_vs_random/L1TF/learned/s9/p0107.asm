.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dil, -103 # instrumentation
cmovbe di, di
sbb cl, -11
setz dl
and rbx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rbx], dil
sub sil, dil
and bl, 89
and cl, 29
jmp .bb_0.1
.bb_0.1:
xor ax, 32760
and rcx, 0b1111111111111 # instrumentation
add rdx, qword ptr [r14 + rcx]
cmovs dx, ax
sbb sil, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
