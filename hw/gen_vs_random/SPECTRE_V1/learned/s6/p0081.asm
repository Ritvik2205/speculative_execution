.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or esi, ecx
mov sil, cl
and rsi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rsi], dl
add bl, dl
sbb al, 118
sbb cl, dl
add dil, dl
sbb dil, al
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
