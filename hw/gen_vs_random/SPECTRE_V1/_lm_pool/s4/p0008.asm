.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ax, -22629
test bl, -8
or cl, bl
sbb dil, -106
cmp ax, 7046
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], bl
add dl, cl
cmp cl, dl
or rax, -1571963467
bswap rax
test al, 59
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
