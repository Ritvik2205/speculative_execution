.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -71 # instrumentation
adc edx, edx
xor dil, -42
cmp eax, -127
jmp .bb_0.1
.bb_0.1:
test dl, 84
or bl, cl
add cl, dil
sbb dl, sil
and rax, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rax], 1
xor dl, dil
test al, cl
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
