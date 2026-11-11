.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts ecx, 184
xor bl, -61
and dl, bl
btr ebx, edx
btr ax, bx
and eax, -829294476
test eax, 298249463
and dl, al
xor dl, 34
or dl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
