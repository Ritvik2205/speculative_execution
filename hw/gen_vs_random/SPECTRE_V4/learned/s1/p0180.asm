.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub cl, -73
or cl, -55
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], bl
cmovl eax, ebx
sbb cl, 12
sbb cl, dl
cmp bl, dl
test edx, 1479885278
adc bl, dl
add al, -32
add al, -55
sbb al, 43
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
