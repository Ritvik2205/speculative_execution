.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 27 # instrumentation
mov bl, dl
and rbx, 0b1111111111111 # instrumentation
cmovz rsi, qword ptr [r14 + rbx]
or cl, 66
and cl, -101
test dl, -125
sub dil, -28
test edx, 1479885278
and dl, 124
movsx ax, bl
xor al, -6
xor al, -40
and bl, -119
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
