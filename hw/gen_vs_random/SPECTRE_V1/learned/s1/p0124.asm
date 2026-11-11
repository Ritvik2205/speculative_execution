.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, 13
add al, 3
xor dil, -37
sbb bl, -41
and rax, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rax], 5
mov cl, sil
adc al, bl
movsx bx, dl
test al, -75
and cl, -57
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
