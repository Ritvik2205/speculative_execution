.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, al
mov cl, sil
mov al, dl
xchg esi, edi
test dx, 5
and rsi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rsi], al
mov bl, dl
sbb al, -114
sub bl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
