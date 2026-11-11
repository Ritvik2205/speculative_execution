.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, 74
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdi], -103
or al, sil
not bl
or dl, al
or si, -12
jmp .bb_0.2
.bb_0.2:
xor di, 93
or dil, 12
and dl, -73
xor al, 115
xor bl, -102
test bl, cl
and ax, -16061
test dil, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
