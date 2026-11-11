.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cl, -33
btr bx, ax
sub dl, al
and rsi, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rsi]
mov al, dl
lea ecx, qword ptr [rsi]
lea rax, qword ptr [rdi + rbx + 71]
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], al
sbb cl, sil
sbb al, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
