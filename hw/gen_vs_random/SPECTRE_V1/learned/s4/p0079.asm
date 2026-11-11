.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, 16
sub al, cl
cmp dl, 119
sbb dil, al
xor al, -119
and bl, al
mov sil, al
or dx, 0b1000000000000000 # instrumentation
bsf bx, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
