.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dx, 60
cmovle ax, si
xor cl, 83
test al, bl
test eax, -675944960
and dl, -73
test di, 9
or al, dl
or dil, sil
and bl, 68
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], dx
test eax, 1287331633
or rax, -1523798580
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 751805012
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
