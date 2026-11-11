.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cl, 78
test bl, dil
cmp si, 109
or dil, dl
or bl, -86
sbb al, cl
sbb al, 54
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dl
sbb eax, -141178938
adc cl, 111
cmp eax, 2
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsr edi, ecx
add dil, dil
xor edx, 76
xor dl, dil
sbb sil, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
