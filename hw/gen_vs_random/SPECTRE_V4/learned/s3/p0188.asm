.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor al, 57
and rdx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdx], 92
adc edi, -83
and si, -74
test dl, sil
or cl, al
sbb eax, 727775941
cmp rax, -2096157586
test dil, -58
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], dil
or rax, rbx
add cl, -62
xor ax, -6064
cmp cl, al
or bl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
