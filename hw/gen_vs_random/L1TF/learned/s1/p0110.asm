.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dil, -113
add rax, 909978580
add dil, -7
xor dl, 64
jmp .bb_0.1
.bb_0.1:
and dl, dl
add al, bl
and al, -68
jmp .bb_0.2
.bb_0.2:
or bl, cl
jmp .bb_0.3
.bb_0.3:
and bl, bl
xor bl, cl
cmp cl, dl
lea rbx, qword ptr [rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
