.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dil, al
or al, -48
and cl, dl
btr ecx, edi
xor bl, 38
and al, dl
and cx, 127
add al, al
btc dx, ax
inc cl
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
test dl, -37
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
