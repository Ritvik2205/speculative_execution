.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dil, dl
xor dl, al
test cl, al
or al, sil
test dil, cl
or rax, -141551502
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], bl
btc ax, 85
or edx, -1
test al, dl
test bl, cl
xor cl, dil
test rdx, 53
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
