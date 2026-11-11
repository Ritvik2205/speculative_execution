.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or edx, esi
btc ax, 68
and cl, cl
jmp .bb_0.1
.bb_0.1:
test dl, 27
xor rbx, 89
or cl, bl
and dl, -73
bt ax, bx
or al, 25
test cl, 73
or dil, -41
test bl, -14
and ecx, -104
and esi, 74
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], 15748
xor sil, dl
or cl, 119
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
