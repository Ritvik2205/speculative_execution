.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor bl, -38
sub al, -1
mov bl, dil
cmp cl, bl
sub bl, sil
and bl, al
sub sil, -18
mov dl, bl
test rcx, -1420345926
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
