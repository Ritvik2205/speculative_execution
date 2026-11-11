.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 70
test bl, -8
sub dil, dl
sbb sil, bl
mov bl, dil
lea ax, qword ptr [rdx + rcx + 43552]
bts si, 80
sbb dl, dil
sub bl, sil
and rax, -273199823
or rcx, 35
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
