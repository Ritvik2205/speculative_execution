.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dl, dil
test eax, -675944960
xor al, 9
xor bl, sil
test si, 25
and rdx, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
test ebx, -2015966884
test al, -7
jmp .bb_0.2
.bb_0.2:
and rbx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rbx], -85
not dl
and cl, -111
test bl, al
and cl, dl
test al, 91
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
