.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 21 # instrumentation
adc bx, 8
add al, 56
test cl, 48
and rax, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovp di, word ptr [r14 + rbx]
and al, -68
sbb cl, dl
btc dx, di
test di, 25
or al, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
