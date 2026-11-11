.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add sil, 3
sbb cl, 127
cmp al, -116
sbb eax, -141178938
adc cl, 31
add sil, cl
sbb al, 102
test eax, 1947430392
and rcx, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rcx]
or cl, al
test dil, cl
test dl, -102
test dil, bl
and ax, -197
add al, sil
adc al, -59
and dil, 8
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
