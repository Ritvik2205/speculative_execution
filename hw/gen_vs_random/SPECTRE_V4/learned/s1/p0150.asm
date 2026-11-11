.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
mov rcx, qword ptr [r14 + rdx]
test al, dl
cmp dl, 83
xor ax, 13332
or cl, -55
test cl, dil
xor al, 55
cmp rbx, -91
or al, dl
sub dl, 107
sbb al, -14
sub bl, 56
or al, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
