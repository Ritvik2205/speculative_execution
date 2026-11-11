.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, 22
and di, 91
test ebx, -961564216
xor cx, -18
xor bl, dil
and sil, al
xor esi, 48
and dil, sil
or ax, -7150
or rdx, -48
xor al, 9
xor dil, cl
and al, 14
bt cx, di
or al, bl
btr si, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
