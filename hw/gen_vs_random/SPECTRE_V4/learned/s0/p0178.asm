.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or cl, 12
or bl, 111
cmp rdx, -49
adc cl, dil
cmp bl, cl
cmp al, dil
xor al, -6
and rdx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rdx]
cmovno dx, di
test dil, -83
or ax, -29521
and rbx, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rbx]
adc dl, sil
bt cx, di
dec cl
sub cl, -73
bts dx, 96
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
