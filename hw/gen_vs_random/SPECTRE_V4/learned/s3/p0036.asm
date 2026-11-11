.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and di, -34
or al, dil
xor sil, cl
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 1
or sil, dil
test al, -26
sub cl, 18
sbb ebx, -54
sbb al, cl
xor al, -6
xor cx, -80
and rsi, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rsi]
and cl, dl
test cl, -52
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
