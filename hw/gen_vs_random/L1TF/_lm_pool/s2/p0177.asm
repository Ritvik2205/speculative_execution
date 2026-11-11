.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, -56
sbb eax, -403815802
setns al
test eax, 645518295
or dl, 8
xor al, dil
cmp al, cl
and rdx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdx], 91
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
